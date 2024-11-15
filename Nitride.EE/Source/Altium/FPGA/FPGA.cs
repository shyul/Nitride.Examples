﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.IO;
using System.Threading.Tasks;

namespace Nitride.EE
{
    public class FPGA
    {
        public string Designator { get; set; } = "U1";

        public Dictionary<string, FPGAPin> PinList { get; } = new Dictionary<string, FPGAPin>();

        public string PowerPinPrefix { get; set; } = "VCC";

        public string GroundPinPrefix { get; set; } = "GND";

        public Dictionary<string, string> PowerPins { get; } = new();

        public Dictionary<string, FPGABank> Banks { get; } = new();

        public HashSet<string> DiffPairs { get; } = new();

        public void ImportXilinxPackageFile(string textFileName)
        {
            if (File.Exists(textFileName))
            {
                using var fs = new FileStream(textFileName, FileMode.Open, FileAccess.Read, FileShare.ReadWrite);
                using StreamReader sr = new(fs);
                while (!sr.EndOfStream)
                {
                    string line = sr.ReadLine().Trim();

                    if (line.Length > 0 && !line.StartsWith("#") && !line.StartsWith("--") && !line.StartsWith("Pin") && !line.StartsWith("Total Number"))
                    {
                        string[] fields = line.Split(new char[] { ' ', '\t' }, StringSplitOptions.RemoveEmptyEntries);

                        if(fields.Length > 5) 
                        {
                            //if (fields.Length != 6) Console.WriteLine("Error Read Line: " + fields.ToStringWithIndex());
                            Console.WriteLine("Read Line: " + fields.ToStringWithIndex());

                            FPGAPin pin = new()
                            {
                                Designator = fields[0],
                                PinName = fields[1],
                                MemoryByteGroup = fields[2] != "NA" ? fields[2] : null,
                                Bank = fields[3] != "NA" ? fields[3] : null,
                                IOType = fields[4] != "NA" ? fields[4] : null,
                                SuperLogicRegion = fields[5] != "NA" ? fields[5] : null,
                            };

                            pin.IsIO = pin.IOType == "HD" || pin.IOType == "HP";

                            PinList[pin.Designator] = pin;

                            if (pin.PinName.StartsWith(PowerPinPrefix) || pin.PinName.StartsWith(GroundPinPrefix))
                            {
                                PowerPins[pin.PinName] = string.Empty;
                                pin.IsPower = true;

                                if (pin.Bank is not null)
                                {
                                    Banks[pin.Bank] = new FPGABank() { PowerPinName = pin.PinName, PowerPinNetName = string.Empty };
                                }
                            }

                        }


                    }
                }

                foreach (var pin in PinList.Where(n => n.Value.Bank is not null && n.Value.IsIO).OrderBy(n => n.Value.Bank))
                {
                    Console.WriteLine(pin.Value.Designator + " = " + pin.Value.PinName);
                }

                Console.WriteLine("\nTotal Number of Pins = " + PinList.Count);


            }

        }

        public void ImportAlteraPackageFile(string csvFileName)
        {
            if (File.Exists(csvFileName))
            {
                using var fs = new FileStream(csvFileName, FileMode.Open, FileAccess.Read, FileShare.ReadWrite);
                using StreamReader sr = new(fs);

                string line = sr.ReadLine().Trim();
                string[] fields = line.Split(',');

                while (!sr.EndOfStream)
                {
                    line = sr.ReadLine().Trim();
                    fields = line.Split(',');

                    string designator = fields[0].Trim();
                    string bank = fields[1].Trim();
                    string ioType = fields[2].Trim();

                    string pinName = string.Empty;

                    string func3 = fields[5].Trim();
                    string func4 = fields[6].Trim();
                    bool isIO = false;

                    if (func4 == "TDI") pinName = func4;
                    else if (func4 == "TDO") pinName = func4;
                    else if (func4 == "TMS") pinName = func4;
                    else if (func4 == "TCK") pinName = func4;
                    else if (func4 == "JTAGEN") pinName = func4;
                    else if (func4 == "CONFIG_SEL") pinName = func4;
                    else if (func4 == "nCONFIG") pinName = func4;
                    else if (func4 == "nSTATUS") pinName = func4;
                    else if (func4 == "CONF_DONE") pinName = func4;
                    else if (func3.Contains("VREFB")) pinName = func3;
                    else
                    {
                        string func1 = fields[3].Trim();
                        string func2 = fields[4].Trim();

                        if (func4.Length > 0) pinName += func4 + "/";
                        if (func3.Length > 0) pinName += func3 + "/";
                        if (func2.Length > 0) pinName += func2 + "/";
                        if (func1.Length > 0) pinName += func1 + "/";

                        isIO = func1 == "IO";
                    }

                    pinName = pinName.Trim('/');

                    FPGAPin pin = new()
                    {
                        Designator = fields[0],
                        PinName = pinName,
                        Bank = string.IsNullOrEmpty(bank) ? null : bank,
                        IOType = string.IsNullOrEmpty(ioType) ? null : ioType,
                        IsIO = isIO
                    };



                    PinList[pin.Designator] = pin;

                    if (pin.PinName.StartsWith(PowerPinPrefix) || pin.PinName.StartsWith(GroundPinPrefix))
                    {
                        PowerPins[pin.PinName] = string.Empty;
                        pin.IsPower = true;

                        if (pin.Bank is not null)
                        {
                            Banks[pin.Bank] = new FPGABank() { PowerPinName = pin.PinName, PowerPinNetName = string.Empty };
                        }
                    }
                }

                foreach (var pin in PinList.Where(n => n.Value.Bank is not null && n.Value.IsIO).OrderBy(n => n.Value.Bank))
                {
                    Console.WriteLine(pin.Value.Designator + " = " + pin.Value.PinName);
                }

                Console.WriteLine("\nTotal Number of Pins = " + PinList.Count);
            }
        }

        public void ReadQuartusPinFile(string pinFilename)
        {
            if (File.Exists(pinFilename))
            {
                PinList.Clear();

                using var fs = new FileStream(pinFilename, FileMode.Open, FileAccess.Read, FileShare.ReadWrite);
                using StreamReader sr = new(fs);
                //string[] headers = sr.CsvReadFields();

                //Dictionary<string, FPGAPin> pinList = new();
                List<string> vrefList = new();
                int index = 0;
                while (!sr.EndOfStream)
                {

                    string[] fields = sr.ReadLine().Trim().Split(':');

                    if (fields.Length == 7)
                    {
                        // Console.WriteLine(fields.ToStringWithIndexTrim());
                        //for (int i = 0; i < fields.Length; i++)
                        //{

                        PinType type = PinType.Passive;

                        string pinName = fields[0].Trim();
                        string pinNum = fields[1].Trim();
                        string direction = fields[2].Trim().ToUpper();
                        string standard = fields[3].Trim();
                        string voltage = fields[4].Trim();
                        string bank = fields[5].Trim();

                        //string label = pinName.StartsWith("RESERVED_") ? "IO" + bank : pinName;
                        string label = pinName;

                        if (pinName.StartsWith("RESERVED_"))
                        {
                            type = PinType.IO;
                            label = "IO" + bank;

                        }
                        else if (voltage.Length > 0)
                        {
                            label = pinName + "(" + voltage + ")";
                        }

                        if (direction.Contains("POWER") || direction.Contains("GND")) direction = "PASSIVE";

                        if (direction.Contains("INPUT")) type = PinType.Input;

                        if (direction.Contains("OUTPUT")) type = PinType.Output;

                        if (index > 0)
                        {
                            PinList.Add(pinNum, new FPGAPin()
                            {
                                Designator = pinNum,
                                PinName = label,
                                Name = label,
                                Type = type,
                                Bank = bank,
                                IsIO = type == PinType.IO
                            }); ;

                            //Console.WriteLine("Pin," + label + "," + pinNum + "," + direction);
                        }


                        index++;
                    }
                }

                string title = "Object Kind,Name,Pin Designator,Electrical Type,X1,Y1";
                Console.WriteLine(title);

                int X = 0;
                int Y = 0;

                string lastBank = string.Empty;

                foreach (var pin in PinList.OrderBy(n => n.Value.Bank).ThenBy(n => n.Value.Name).ThenBy(n => n.Key))
                {
                    if (pin.Value.Bank != lastBank)
                    {
                        X += 500;
                        Y = 0;
                        lastBank = pin.Value.Bank;
                    }

                    string dirType = pin.Value.Type.ToString();
                    if (dirType == "IO") dirType = "I/O";

                    string line = "Pin," + pin.Value.Name + "," + pin.Key + "," + dirType + "," + X.ToString() + "," + Y.ToString();
                    Y -= 100;
                    Console.WriteLine(line);
                }

                Console.WriteLine("Total pin count = " + PinList.Count().ToString());
            }

        }


        public void ImportQuartusPinFile(string pinFileName)
        {
            if (File.Exists(pinFileName))
            {
                using var fs = new FileStream(pinFileName, FileMode.Open, FileAccess.Read, FileShare.ReadWrite);
                using StreamReader sr = new(fs);

                int i = 0;

                while (!sr.EndOfStream)
                {
                    string line = sr.ReadLine().Trim();

                    if (!line.StartsWith("-") && line.Split(':') is string[] fields && fields.Length == 7 && !line.Contains("Pin Name/Usage"))
                    {
                        //Console.WriteLine(ToStringWithIndex(fields));
                        i++;
                        string pinDesignator = fields[1].Trim().ToUpper();
                        FPGAPin pin = PinList[pinDesignator];
                        pin.AssignedName = fields[0].Trim().ToUpper();
                        string voltage = fields[4].Trim().ToUpper();
                        if (voltage.Length > 0) pin.AssignedName = voltage;
                        /*
                        if (pin.AssignedName != pin.NetName) // fields[6].Trim() == "Y" &&  
                        {
                            Console.WriteLine("Found Assignment Difference: " + pin.NetName + " | " + pin.AssignedName);
                        }*/
                    }
                }

                foreach (var pin in PinList.Values.Where(n => n.AssignedName != n.NetName.Replace('.', 'p').ToUpper() && !(n.PinName == "GND" && n.NetName == "VSS")).OrderBy(n => n.AssignedName))
                {
                    Console.WriteLine("Found Assignment Difference," + pin.Designator + "," + pin.PinName + "," + pin.NetName + "," + pin.AssignedName);
                }

                Console.WriteLine("\n\nQuartus Pin Imported: " + i);
            }
        }

        public void ImportVivadoIOPorts(string csvFileName)
        {
            if (File.Exists(csvFileName))
            {
                using var fs = new FileStream(csvFileName, FileMode.Open, FileAccess.Read, FileShare.ReadWrite);
                using StreamReader sr = new(fs);

                int i = 0;

                while (!sr.EndOfStream)
                {
                    string line = sr.ReadLine().Trim();

                    if (!line.StartsWith("#") && line.Split(',') is string[] fields && fields.Length == 26 && !line.Contains("Pin Number"))
                    {
                        i++;

                        string pinDesignator = fields[1].Trim().ToUpper();
                        FPGAPin pin = PinList[pinDesignator];

                        string pinName = fields[3];

                        if (pinName != pin.PinName) Console.WriteLine("Miss-matched pin: " + "\t| " + pin.PinName + "\t| " + pinName);

                        double minDelay = fields[4].ToDouble();
                        double maxDelay = fields[5].ToDouble();
                        double delay = (minDelay + maxDelay) / 2;

                        pin.PackageDelayTime = delay;
                        pin.PackageDelayLength = delay * 6.29;

                        //Console.WriteLine(pin.Designator + "\t| " + pin.PinName + "\t| " + pinName + "\t| " + delay.ToString("0.####"));
                    }
                }


                Console.WriteLine("\n\nVivado I/O Port: Pin Imported: " + i);
            }
        }


        public void ImportVivadoIOPlacedReport(string rptFileName)
        {
            if (File.Exists(rptFileName))
            {
                using var fs = new FileStream(rptFileName, FileMode.Open, FileAccess.Read, FileShare.ReadWrite);
                using StreamReader sr = new(fs);

                int i = 0;

                while (!sr.EndOfStream)
                {
                    string line = sr.ReadLine().Trim();

                    if (line.StartsWith("|") && line.Split('|') is string[] fields && fields.Length > 14 && !line.Contains("Pin Number"))
                    {
                        //Console.WriteLine(ToStringWithIndex(fields));


                        i++;

                        string pinDesignator = fields[1].Trim().ToUpper();
                        FPGAPin pin = PinList[pinDesignator];
                        pin.AssignedName = fields[2].Trim().ToUpper().Trim(new char[] { '[', ']' }).Replace("[", "");

                        string netName = pin.NetName;
                        netName = netName.Replace(".", "P");
                        pin.NetName = netName.StartsWith("r") ? netName.Remove(0, 1) : netName;

                        //Console.WriteLine("AssignedName = " + pin.AssignedName);

                        if (pin.AssignedName.Contains("DDR4_")) pin.AssignedName = pin.AssignedName.Replace("DDR4_", "PS_DDR_");

                        //string voltage = fields[13].Trim().ToUpper();
                        string voltage = fields[12].Trim().ToUpper();
                        if (voltage.Length > 0 && voltage != "0.0") pin.AssignedName = voltage;

                    }

                }

                foreach (var pin in PinList.Values.Where(n => n.AssignedName != n.NetName.Replace('.', 'p').ToUpper() && !(n.PinName == "GND" && n.NetName == "VSS")).OrderBy(n => n.AssignedName))
                {
                    Console.WriteLine("Found Assignment Difference," + pin.Designator + "," + pin.PinName + "," + pin.NetName + "," + pin.AssignedName);
                }

                Console.WriteLine("\n\nVivado Report: Pin Imported: " + i);
            }
        }

        public static string ToStringWithIndex(string[] fields)
        {
            string s = string.Empty;
            for (int i = 0; i < fields.Length; i++)
            {
                s += "(" + i.ToString() + ")\"" + fields[i].Trim().ToUpper() + "\"-";
            }

            if (s.Length > 0) return s.TrimEnd('-');
            else return "Empty String Array";
        }

        public void ImportAltiumPinMapReport(string csvFileName, bool checkPinName = true)
        {
            if (File.Exists(csvFileName))
            {
                using var fs = new FileStream(csvFileName, FileMode.Open, FileAccess.Read, FileShare.ReadWrite);
                using StreamReader sr = new(fs);

                HashSet<string> DesignatorList = new();

                int designatorIndex = -1;// 0;
                int netNameIndex = -1;// 1;
                int pinNameIndex = -1;// 2;

                while (!sr.EndOfStream)
                {
                    string line = sr.ReadLine().Trim();

                    if (line.Contains("Pin Designator") && line.Contains("Net Name") && line.Contains("Display Name"))
                    {
                        string[] headers = line.Split(',');

                        int i = 0;
                        foreach (string header in headers)
                        {
                            if (header.Trim() == "Pin Designator") designatorIndex = i;
                            if (header.Trim() == "Net Name") netNameIndex = i;
                            if (header.Trim() == "Display Name") pinNameIndex = i;
                            i++;
                        }
                    }
                    else if (designatorIndex >= 0)
                    {
                        string[] fields = line.Split(',');

                        string pinDesignator = fields[designatorIndex];
                        string pinName = fields[pinNameIndex];
                        string netName = fields[netNameIndex];

                        if (!DesignatorList.Contains(pinDesignator)) DesignatorList.Add(pinDesignator);

                        FPGAPin pin = PinList[pinDesignator];

                        if (pin.PinName != pinName && checkPinName)
                        {
                            Console.WriteLine("Error: pinName: " + pin.PinName + " | " + pinName);
                        }

                        if (true) // keep it here for now.
                        {
                            pin.NetName = netName;
                            if (pin.IsIO && (pin.NetName.EndsWith("_N") || pin.NetName.EndsWith("_P")))
                            {
                                pin.IOStandard = "LVDS";

                                pin.PairName = netName.Substring(0, netName.Length - 2);

                                if (!DiffPairs.Contains(pin.PairName)) DiffPairs.Add(pin.PairName);

                                Console.WriteLine("pairName = " + pin.PairName);
                            }
                        }

                        if (pin.IsPower)
                        {
                            if (string.IsNullOrWhiteSpace(PowerPins[pin.PinName]))
                            {
                                PowerPins[pin.PinName] = netName;

                                if (!string.IsNullOrWhiteSpace(pin.Bank))
                                {
                                    PinList.Values.Where(n => n.Bank == pin.Bank && n.IsIO).ToList().ForEach(n => {
                                        if (n.IOStandard is null)
                                        {
                                            if (netName.StartsWith("+3.3V")) { n.IOStandard = "LVCMOS33"; if (n.IOType == "HP") Console.WriteLine("Bank " + n.Bank + ": HP Bank does not support 3.3V standard."); }
                                            else if (netName.StartsWith("+2.5V")) { n.IOStandard = "LVCMOS25"; if (n.IOType == "HP") Console.WriteLine("Bank " + n.Bank + ": HP Bank does not support 3.3V standard."); }
                                            else if (netName.StartsWith("+1.8V")) n.IOStandard = "LVCMOS18";
                                        }
                                    });
                                }
                            }
                            else if (PowerPins[pin.PinName] != netName)
                            {
                                Console.WriteLine("Power Pin [" + pin.PinName + "] has two nets: " + PowerPins[pin.PinName] + " and " + netName);
                            }

                        }
                    }
                }

                Console.WriteLine(DesignatorList.Count + " of pins imported from Altium Pin Map File!");

                if (DesignatorList.Count != PinList.Count) Console.WriteLine("Altium Import Error: PinList actually has: " + PinList.Count);

                Console.WriteLine("\n");

                foreach (var powerPin in PowerPins)
                {
                    Console.WriteLine("PowerPin: " + powerPin.Key + " = " + powerPin.Value);
                }
            }
        }

        public void ExportPins(string csvFileName)
        {
            StringBuilder sb = new(FPGAPin.CsvHeader);

            int X = 0;
            int Y = 0;
            string lastBank = string.Empty;

            foreach (var pin in PinList.OrderBy(n => n.Value.Bank).ThenBy(n => n.Value.IOType).ThenBy(n => n.Value.PinName).ThenBy(n => n.Value.Designator))
            {
                if (pin.Value.Bank != lastBank)
                {
                    X += 500;
                    Y = 0;
                    lastBank = pin.Value.Bank;
                }

                pin.Value.X = X;
                pin.Value.Y = Y;
                Y += 100;

                sb.AppendLine(pin.Value.CsvLine);// 
            }

            File.WriteAllText(csvFileName, sb.ToString());
        }

        public void ExportAllSignals(string fileName)
        {
            StringBuilder sb = new();

            //foreach (var pin in PinList.Values.Where(n => n.IsIO && n.NetName.Length > 0 && !n.NetName.StartsWith("Net")).OrderBy(n => n.NetName).ThenBy(n => n.Designator))
            foreach (var pin in PinList.Values.Where(n => n.NetName.Length > 0 && !n.NetName.StartsWith("Net") && !n.NetName.StartsWith("+") && n.NetName.ToUpper() != "VSS").OrderBy(n => n.NetName).ThenBy(n => n.Designator))
            {
                //string pinName = pin.NetName.ToLower().Replace('.', 'p');
                string pinName = pin.NetName.Replace('.', 'p');

                if (pinName.EndsWith("_p"))
                    pinName = pinName.Substring(0, pinName.Length - 2) + "_P";
                else if (pinName.EndsWith("_n"))
                    pinName = pinName.Substring(0, pinName.Length - 2) + "_N";

                sb.AppendLine(pinName + ",");

                Console.WriteLine(pinName);
            }

            File.WriteAllText(fileName, sb.ToString());

        }

        public void ImportPins(string csvFileName)
        {



        }

        public void ExportXdcConstraintSimple()// string xdcFileName)
        {

            Console.WriteLine("\n\n*** Start Pin List ***\n");

            foreach (string netName in PinList.Values.Where(n => n.PinName.StartsWith("IO_") && !string.IsNullOrWhiteSpace(n.NetName)).GroupBy(n => n.NetName).Select(n => n.Key).OrderBy(n => n))
            {
                string netN = netName.StartsWith("r") ? netName.Remove(0, 1) : netName;

                Console.WriteLine(netN + ",");
            }

            Console.WriteLine("\n\n*** End Pin List ***\n");

            foreach (var (designator, pinName, netName, bankName) in PinList.Values.Where(n => n.PinName.StartsWith("IO_") && !string.IsNullOrWhiteSpace(n.NetName)).OrderBy(n => n.Bank).ThenBy(n => n.NetName).Select(n => (n.Designator, n.PinName, n.NetName, n.Bank)))
            {
                string netN = netName.StartsWith("r") ? netName.Remove(0, 1) : netName;

                string line = "set_property -dict { PACKAGE_PIN " + designator + " IOSTANDARD " + "LVCMOS" + " } [ get_ports { " + netN + " } ]; # Bank" + bankName;
                Console.WriteLine(line);
                //Console.WriteLine(designator + " | " + pinName + " | " + netN + " | " + bankName);
            }


            /*
            foreach (var pin in PinList.Values.Where(n => n.IsIO && n.PinName.StartsWith("IO_") && n.NetName.Length > 0 && !n.NetName.StartsWith("Net")).OrderBy(n => n.Bank).ThenBy(n => n.IOType).ThenBy(n => n.PairName).ThenBy(n => n.NetName).ThenBy(n => n.Designator))
            {
                string pinName = pin.NetName.ToLower().Replace('.', 'p');

                if (pinName.EndsWith("_p"))
                    pinName = pinName.Substring(0, pinName.Length - 2) + "_P";
                else if (pinName.EndsWith("_n"))
                    pinName = pinName.Substring(0, pinName.Length - 2) + "_N";

                sb.AppendLine("set_property -dict {PACKAGE_PIN " + pin.Designator + " IOSTANDARD " + pin.IOStandard + "} [get_ports " + pinName + "]");
            }*/



        }

        public void ExportXdcConstraint(string xdcFileName)
        {
            StringBuilder sb = new();

            foreach (string pairName in DiffPairs.OrderBy(n => n))
            {
                sb.AppendLine("make_diff_pair_ports " + pairName.ToLower() + "_P " + pairName.ToLower() + "_N");
            }

            foreach (var pin in PinList.Values.Where(n => n.IsIO && n.NetName.Length > 0 && !n.NetName.StartsWith("Net")).OrderBy(n => n.Bank).ThenBy(n => n.IOType).ThenBy(n => n.PairName).ThenBy(n => n.NetName).ThenBy(n => n.Designator))
            {
                string pinName = pin.NetName.ToLower().Replace('.', 'p');

                if (pinName.EndsWith("_p"))
                    pinName = pinName.Substring(0, pinName.Length - 2) + "_P";
                else if (pinName.EndsWith("_n"))
                    pinName = pinName.Substring(0, pinName.Length - 2) + "_N";

                sb.AppendLine("set_property -dict {PACKAGE_PIN " + pin.Designator + " IOSTANDARD " + pin.IOStandard + "} [get_ports " + pinName + "]");
            }

            foreach (var pin in PinList.Values.Where(n => n.IsIO && n.NetName.Length > 0 && !n.NetName.StartsWith("Net")).OrderBy(n => n.Bank).ThenBy(n => n.IOType).ThenBy(n => n.PairName).ThenBy(n => n.NetName).ThenBy(n => n.Designator))
            {
                string pinName = pin.NetName.ToLower().Replace('.', 'p');

                if (pinName.EndsWith("_p"))
                    pinName = pinName.Substring(0, pinName.Length - 2) + "_P";
                else if (pinName.EndsWith("_n"))
                    pinName = pinName.Substring(0, pinName.Length - 2) + "_N";

                sb.AppendLine("set_property DIRECTION OUT [get_ports " + pinName + "]");
                //set_property  DIRECTION OUT [get_ports DAC_D11_N]
            }

            File.WriteAllText(xdcFileName, sb.ToString());
        }

        public void ExportQuartusSpecFileAssignment(string qsfFileName)
        {
            StringBuilder sb = new();

            foreach (var pin in PinList.Values.Where(n => n.IsIO && n.NetName.Length > 0 && !n.NetName.StartsWith("Net")).OrderBy(n => n.NetName).ThenBy(n => n.Designator))
            {
                string netName = pin.NetName.ToLower().Replace('.', 'p');
                sb.AppendLine("set_location_assignment PIN_" + pin.Designator + " -to " + netName);
                Console.WriteLine(netName);
            }

            File.WriteAllText(qsfFileName, sb.ToString());
        }


    }
}
