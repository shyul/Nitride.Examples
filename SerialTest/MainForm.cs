using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.IO.Ports;
using System.Threading;
using Nitride;
using Nitride.EE.WinUSB;
using System.Runtime.InteropServices;

namespace SerialTest
{
    [StructLayout(LayoutKind.Explicit)]
    class UnionArray
    {
        [FieldOffset(0)]
        public byte[] Bytes;

        [FieldOffset(0)]
        public int[] Samples;
    }

    public partial class MainForm : Form
    {


        public WinUsbDevice? UsbDevice { get; private set; }

        public BulkInEndPoint? BulkIn { get; private set; }

        public BulkOutEndPoint? BulkOut { get; private set; }

        public InterruptInEndPoint? InterruptIn { get; private set; }

        public static SerialPort SerialPort { get; } = new()
        {
            BaudRate = 115200,
            Parity = Parity.None,
            StopBits = StopBits.One,
            DataBits = 8,
            RtsEnable = false,
            Handshake = Handshake.XOnXOff,
            ReadTimeout = 1200,
            WriteTimeout = 1200,
            NewLine = "\0"
        };



        public MainForm()
        {
            for (int i = 0; i < DataBuffer.Length; i++) 
            {
                DataBuffer[i] = (byte)i;
            }


            byte[] data = new byte[8] { 0x1, 0x2, 0x3, 0x4, 0x5, 0x6, 0x7, 0x8 };

            //int[] res = data.DeserializeBytes<int[]>();


            foreach (int rr in res) 
            {
                Console.WriteLine(rr);
            }

            InitializeComponent();
            CheckStatus();

            /*
            Guid guid = Guid.Parse("{6AE77B78-518B-493D-A9DD-3A64E87EA3FC}");
            Console.WriteLine("GUID is: " + guid.ToString().ToUpper());
            var pathList = WinUsbDevice.FindDevicePathList(guid);

            Console.WriteLine("Found matching devices: " + pathList.Length);
            foreach (var path in pathList)
            {
                Console.WriteLine("Path: " + path);
            }*/
            
            if (true)//pathList.Length > 0)
            {
                //UsbDevice = new WinUsbDevice(pathList.Last());
                UsbDevice = new WinUsbDevice(@"\??\USB#VID_900D&PID_F00D#900DF00DACEC#{a5dcbf10-6530-11d2-901f-00c04fb951ed}");

                if (UsbDevice.Interfaces.FirstOrDefault() is UsbInterface iface)
                {
                    if (iface.EndPoints.Where(n => n.PipeId == 0x81).FirstOrDefault() is BulkInEndPoint blkIn)
                    {
                        BulkIn = blkIn;
                        BulkIn.Timeout = 2000;
                    }

                    if (iface.EndPoints.Where(n => n.PipeId == 0x02).FirstOrDefault() is BulkOutEndPoint blkOut)
                    {
                        BulkOut = blkOut;
                        BulkOut.Timeout = 2000;
                    }

                    if (iface.EndPoints.Where(n => n.PipeId == 0x83).FirstOrDefault() is InterruptInEndPoint intIn)
                    {
                        InterruptIn = intIn;
                        InterruptIn.Timeout = 1000;

                        UsbInterruptTask = new(() => { HandleUsbInterrupt(); });
                        UsbInterruptTask.Start();
                       
                    }
                }

                UsbDevice.PrintInfo();
            }

            ComboBoxPortList.Items.AddRange(SerialPort.GetPortNames());
            if (ComboBoxPortList.Items.Count > 0)
            {
                ComboBoxPortList.SelectedIndex = 0;
            }

            //Console.WriteLine("Selected Port: "+ComboBoxPortList.Text);
        }

        private void BtnConnect_Click(object sender, EventArgs e)
        {
            if (!IsPortConnect)
            {
                string portName = ComboBoxPortList.Text;

                if (!string.IsNullOrWhiteSpace(portName))
                {
                    SerialPort.PortName = portName;
                    SerialPort.Open();
                    PortRxdTask = new(() => { ParseRxd(); });
                    PortRxdTask.Start();
                    SendTxd(new byte[] { 0x23 });
                }
            }
            else
            {
                SerialPort.Close();

            }

            CheckStatus();
            UpdateBootSelection();
        }

        private void BtnShutdown_Click(object sender, EventArgs e)
        {
            if (IsPowerOn)
            {
                SendTxd(new byte[] { 0x12, 0x11 });
            }
            else
            {
                SendTxd(new byte[] { 0x22, 0x21 });
            }


            CheckStatus();
        }

        private void BtnGetBusVoltage_Click(object sender, EventArgs e)
        {
            if (BtnGetBusVoltage.Text == "ON")
            {
                SendTxd(new byte[] { 0x31, 0x5A });
                BtnGetBusVoltage.Text = "OFF";
            }
            else
            {
                SendTxd(new byte[] { 0x31, 0xA5 });
                BtnGetBusVoltage.Text = "ON";
            }
        }

        private void BtnGetBusCurrent_Click(object sender, EventArgs e)
        {
            if (BtnGetBusCurrent.Text == "ON")
            {
                SendTxd(new byte[] { 0x30, 0x5A });
                BtnGetBusCurrent.Text = "OFF";
            }
            else
            {
                SendTxd(new byte[] { 0x30, 0xA5 });
                BtnGetBusCurrent.Text = "ON";
            }
        }

        private void BtnGetTempBoard_Click(object sender, EventArgs e)
        {
            if (BtnGetTempBoard.Text == "ON")
            {
                SendTxd(new byte[] { 0x32, 0x5A });
                BtnGetTempBoard.Text = "OFF";
            }
            else
            {
                SendTxd(new byte[] { 0x32, 0xA5 });
                BtnGetTempBoard.Text = "ON";
            }
        }

        private void BtnGetTempFPGA_Click(object sender, EventArgs e)
        {
            if (BtnGetTempFPGA.Text == "ON")
            {
                SendTxd(new byte[] { 0x33, 0x5A });
                BtnGetTempFPGA.Text = "OFF";
            }
            else
            {
                SendTxd(new byte[] { 0x33, 0xA5 });
                BtnGetTempFPGA.Text = "ON";
            }

        }

        private void BtnGetTempPMIC0V85_Click(object sender, EventArgs e)
        {
            if (BtnGetTempPMIC0V85.Text == "ON")
            {
                SendTxd(new byte[] { 0x34, 0x5A });
                BtnGetTempPMIC0V85.Text = "OFF";
            }
            else
            {
                SendTxd(new byte[] { 0x34, 0xA5 });
                BtnGetTempPMIC0V85.Text = "ON";
            }
        }

        private void BtnGetTempPMIC2V3_Click(object sender, EventArgs e)
        {
            if (BtnGetTempPMIC2V3.Text == "ON")
            {
                SendTxd(new byte[] { 0x35, 0x5A });
                BtnGetTempPMIC2V3.Text = "OFF";
            }
            else
            {
                SendTxd(new byte[] { 0x35, 0xA5 });
                BtnGetTempPMIC2V3.Text = "ON";
            }
        }
        private void CheckBoxDefaultOn_CheckedChanged(object sender, EventArgs e)
        {
            bool defaultON = CheckBoxDefaultOn.Checked;
            if (defaultON)
            {
                PowerOption &= ~(1 << 8);
                SendTxd(new byte[] { 0x25, 0x52 });
            }
            else
            {
                PowerOption |= (1 << 8);
                SendTxd(new byte[] { 0x25, 0x62 });
            }
        }

        private void BtnPsReset_Click(object sender, EventArgs e)
        {
            SendTxd(new byte[] { 0x26, 0x62 });
        }

        private void BtnWriteParam_Click(object sender, EventArgs e)
        {
            SendTxd(new byte[] { 0x7A, 0x55 });
        }



        private void UpdateBootSelection() 
        {

                switch (BootOption & 0xF)
                {
                    case 0x0:
                        ComboBoxBootOption.Text = "PS JTAG";
                        break;

                    case 0x1:
                        ComboBoxBootOption.Text = "QSPI";
                        break;

                    case 0x2:
                        ComboBoxBootOption.Text = "QSPI";
                        break;

                    case 0x3:
                        ComboBoxBootOption.Text = "SD CARD";
                        break;

                    case 0x8:
                        ComboBoxBootOption.Text = "MIO JTAG";
                        break;
                }
            

        }

        private void CheckStatus() 
        {
            if (IsPortConnect) 
            {
                BtnConnect.Text = "Disconnect";
                GroupBoxCarbide.Enabled = true;
            }
            else
            {
                BtnConnect.Text = "Connect";
                GroupBoxCarbide.Enabled = false;
            }

            if (!IsPowerOn)
            {
                BtnShutdown.Text = "Turn ON";
            }
            else
            {
                BtnShutdown.Text = "Shutdown";
            }

            //GroupBoxFPGAControl.Enabled = IsFPGAReady;

            TextBoxSerialNumber.Text = SerialNumber;

            string model = string.Empty;

            switch (VendorNumber)
            {
                case "600D":
                case "900D":
                    model += "Tidalloft";
                    break;

                default:

                    break;
            }

            model += " ";

            switch (ModelNumber)
            {
                case "F00D":
                    model += "T500";
                    break;

                default:

                    break;
            }

            TextBoxModelNumber.Text = model;

            TextBoxTempPMIC2V3.Text = PMIC_2V3_Temperature.ToString("0.##");
            TextBoxTempPMIC0V85.Text = PMIC_0V85_Temperature.ToString("0.##");
            TextBoxTempBoard.Text = Board_Temperature.ToString("0.##");
            TextBoxTempFPGA.Text = FPGA_Temperature.ToString("0.##");
            TextBoxBusCurrent.Text = BusCurrent.ToString("0.##");
            TextBoxBusVoltage.Text = BusVoltage.ToString("0.##");



        }


        private void BtnSetBootOption_Click(object sender, EventArgs e)
        {
            switch (ComboBoxBootOption.Text) 
            {
                case "PS JTAG":
                    SendTxd(new byte[] { 0x24, 0x42, 0x0 });
                    break;

                case "QSPI":
                    SendTxd(new byte[] { 0x24, 0x42, 0x2 });
                    break;

                case "SD CARD":
                    SendTxd(new byte[] { 0x24, 0x42, 0x3 });
                    break;

                case "MIO JTAG":
                    SendTxd(new byte[] { 0x24, 0x42, 0x8 });
                    break;
            }
        }



        public static bool IsPortConnect => SerialPort.IsOpen;

        public static bool IsPowerOn { get; private set; } = true;

        public static bool IsFPGAReady { get; private set; } = false;

        public static int BootOption { get; private set; } = 0xFFFF;

        public static int PowerOption { get; private set; } = 0xFFFF;

        public static string SerialNumber { get; private set; } = string.Empty;

        public static string ModelNumber { get; private set; } = string.Empty;

        public static string VendorNumber { get; private set; } = string.Empty;

        public static double BusCurrent { get; private set; }

        public static double BusVoltage { get; private set; }

        public static double FPGA_Temperature { get; private set; }

        public static double Board_Temperature { get; private set; }

        public static double PMIC_2V3_Temperature { get; private set; }

        public static double PMIC_0V85_Temperature { get; private set; }


        public Task? UsbInterruptTask { get; private set; }

        private static byte[] UsbInterruptData { get; } = new byte[64];

        public void HandleUsbInterrupt()
        {
            while(true)
            //byte[] recvbuffer = new byte[64];
            if (InterruptIn is InterruptInEndPoint intIn && intIn.Read(UsbInterruptData))
            {
                Console.Write("USB Interrupt In: ");
                foreach (byte b in UsbInterruptData)
                {
                    Console.Write(b.ToString("X") + " ");
                }
                Console.Write("\n");
            }
            else
            {
                //Console.Write(".");
                Thread.Sleep(100);
            }
        }

        public Task? PortRxdTask { get; private set; } //= new(() => { ParseRxd(); });

        public void ParseRxd()
        {
            while (IsPortConnect)
            {
                try
                {
                    if (SerialPort.IsOpen)
                    {
                        string s = SerialPort.ReadLine();
                        Console.WriteLine("Print Message: " + s + "\n\r");

                        var tokens = s.Split(';');

                        foreach (var token in tokens)
                        {
                            var fields = token.Split('=');
                            if (fields.Length == 2)
                            {
                                string name = fields[0].ToUpper();
                                var value = fields[1].ToUpper();

                                switch (name)
                                {
                                    case "POWER":
                                        if (value == "ON")
                                            IsPowerOn = true;
                                        else if (value == "OFF")
                                            IsPowerOn = false;
                                        else
                                            Console.WriteLine("Rx Error: " + name + "=" + value);
                                        break;

                                    case "SN":
                                        SerialNumber = value;
                                        break;

                                    case "VD":
                                        VendorNumber = value;
                                        break;

                                    case "MD":
                                        ModelNumber = value;
                                        break;


                                    case "BOOT":
                                        BootOption = int.Parse(value.ToUpper(), System.Globalization.NumberStyles.HexNumber);
                                        Invoke(new Action(() => { UpdateBootSelection(); }));
                                        break;

                                    case "POPT":
                                        PowerOption = int.Parse(value.ToUpper(), System.Globalization.NumberStyles.HexNumber);
                                        Invoke(new Action(() => { CheckBoxDefaultOn.Checked = ((PowerOption >> 8) & 0x1) == 0; }));
                                        break;

                                    case "CB":
                                        BusCurrent = value.ToDouble() / 2;
                                        break;

                                    case "VB":
                                        BusVoltage = value.ToDouble() / 800;
                                        break;

                                    case "TB":
                                        var tb_fields = value.Split('_');
                                        Board_Temperature = tb_fields[0].ToDouble() + (tb_fields[1].ToDouble() * 0.0625);
                                        break;

                                    case "TF":
                                        var tf_fields = value.Split('_');
                                        FPGA_Temperature = tf_fields[0].ToDouble() + (tf_fields[1].ToDouble() * 0.0625);
                                        break;

                                    case "T2":
                                        var t2_fields = value.Split('_');
                                        PMIC_2V3_Temperature = t2_fields[0].ToDouble() + (t2_fields[1].ToDouble() * 0.0625);
                                        break;

                                    case "T0":
                                        var t3_fields = value.Split('_');
                                        PMIC_0V85_Temperature = t3_fields[0].ToDouble() + (t3_fields[1].ToDouble() * 0.0625);
                                        break;

                                    default:
                                        Console.WriteLine("Unknown Token: " + token); break;
                                }
                                /*
                                Invoke((MethodInvoker)delegate {
                                    CheckStatus();
                                    //Invalidate(true);
                                });*/

                                Invoke(new Action(() => {  CheckStatus(); }));
                            }
                            else
                                Console.WriteLine("Unknown Token: " + token);
                        }

                    }
                }
                catch (Exception e)
                {
                    Console.WriteLine("Port Read: " + e.Message);
                }

                Thread.Sleep(10);
            }

        }

        public static void SendTxd(byte[] buffer) 
        {
            try
            {
                SerialPort.Write(buffer, 0, buffer.Length);
                SerialPort.Write("\0");
            }
            catch (Exception ex)
            {
                Console.WriteLine("Write Read: " + ex.Message);
            }
        }

        public static void SendTxd(string buffer) => SendTxd(Encoding.ASCII.GetBytes(buffer));

        byte testValue = 0;

        private void BtnCtrlWrite_Click(object sender, EventArgs e)
        {
            uint returned = 0;
            if (testValue % 2 == 0) 
            {
                byte[] buffer = new byte[] { 0xA5, testValue, (byte)(testValue + 1) };
                UsbDevice?.ControlWrite((1 << 7) + 0x3, 0xA5A6, ref buffer, ref returned);

                foreach (byte b in buffer)
                {
                    Console.Write(b.ToString("X2") + " ");
                }
            }
            else
            {
                AD9544_CONFIG config = new();// AD9544_CONFIG();
                //config.DPLL0_Loop_Bandwidth = 35296 + (uint)testValue;
                //config.Reference_Period += (ulong)testValue;
                //byte[] buffer = new byte[] { 0xA6, testValue, (byte)(testValue + 1), (byte)(testValue + 2) };
                byte[] buffer = config.SerializeBytes();
                UsbDevice?.ControlWrite((1 << 7) + 0x2, 0xA6A5, ref buffer, ref returned);

                foreach (byte b in buffer)
                {
                    Console.Write(b.ToString("X2") + " ");
                }
            }

            Console.WriteLine("Test Value = " + testValue.ToString("X2") + "; Bytes returned: " + returned);

            testValue++;
        }

        private static uint returned = 0;
        private static byte[] ControlBuffer = new byte[16];

        private void BtnCtrlRead_Click(object sender, EventArgs e)
        {
            //uint returned = 0;
            /*
            byte[] buffer = new byte[16];
            if (testValue % 2 == 0)
            {
                //byte[] buffer = new byte[] { 0xA5, testValue, (byte)(testValue + 1) };
                UsbDevice?.ControlRead(0x5, (ushort)(0xE500 + testValue), ref buffer, ref returned);

                for (int i = 0; i < returned; i++)
                {
                    byte b = buffer[i];
                    Console.Write(b.ToString("X2") + " ");
                }
            }
            else
            {
                //byte[] buffer = new byte[] { 0xA6, testValue, (byte)(testValue + 1), (byte)(testValue + 2) };
                UsbDevice?.ControlRead(0x6, (ushort)(0xB600 + testValue), ref buffer, ref returned);

                for (int i = 0; i < returned; i++)
                {
                    byte b = buffer[i];
                    Console.Write(b.ToString("X2") + " ");
                }
            }

            Console.WriteLine("Test Value = " + testValue.ToString("X2") + "; Bytes returned: " + returned);

            testValue++;
            */

            if (EnableTestControlIn)
            {
                EnableTestControlIn = false;
                BtnCtrlRead.Text = "Start Test Control In (RX)";
                while (TestControlInTask is Task t && !t.IsCompleted) { Thread.Sleep(10); }
            }
            else
            {
                EnableTestControlIn = true;
                BtnCtrlRead.Text = "Stop Test Control In (RX)";
                TestControlInTask = new(() => { TestControlInWorker(); });
                TestControlInTask.Start();
            }

        }

        public bool EnableTestControlIn { get; set; } = false;

        public Task? TestControlInTask { get; private set; }

        void TestControlInWorker()
        {
            while (EnableTestControlIn)
            {
                if (testValue % 2 == 0)
                {
                    //byte[] buffer = new byte[] { 0xA5, testValue, (byte)(testValue + 1) };
                    UsbDevice?.ControlRead(0x5, (ushort)(0xE500 + testValue), ref ControlBuffer, ref returned);

                    for (int i = 0; i < returned; i++)
                    {
                        byte b = ControlBuffer[i];
                        Console.Write(b.ToString("X2") + " ");
                    }
                }
                else
                {
                    //byte[] buffer = new byte[] { 0xA6, testValue, (byte)(testValue + 1), (byte)(testValue + 2) };
                    UsbDevice?.ControlRead(0x6, (ushort)(0xB600 + testValue), ref ControlBuffer, ref returned);

                    for (int i = 0; i < returned; i++)
                    {
                        byte b = ControlBuffer[i];
                        Console.Write(b.ToString("X2") + " ");
                    }
                }

                Console.WriteLine("Test Value = " + testValue.ToString("X2") + "; Bytes returned: " + returned);

                testValue++;
            }
        }

        private static byte[] DataBuffer { get; } = new byte[65536];

        private static byte test_data = 0;

        private void BtnBulkWrite_Click(object sender, EventArgs e)
        {
            ProgressBarBulkTx.Maximum = (int)BULK_TRANSFER_COUNT;
            ProgressBarBulkTx.Minimum = 0;



            if (EnableTxBulk)
            {
                EnableTxBulk = false;
                BtnBulkWrite.Text = "Start Bulk Write (TX)";
                while (TxBulkTask is Task t && !t.IsCompleted) { Thread.Sleep(10); }

                uint returned = 0;
                byte[] buffer = new byte[] { 0 };
                UsbDevice?.ControlWrite((1 << 7) + 0xA, 0x3, ref buffer, ref returned);
            }
            else
            {
                EnableTxBulk = true;
                BtnBulkWrite.Text = "Stop Bulk Write (TX)";
                TxBulkTask = new(() => { TxBulkWorker(); });
                TxBulkTask.Start();
            }
        }

        private void BtnBulkRead_Click(object sender, EventArgs e)
        {
            ProgressBarBulkRx.Maximum = (int)BULK_TRANSFER_COUNT;
            ProgressBarBulkRx.Minimum = 0;

            if (EnableRxBulk)
            {
                EnableRxBulk = false;
                BtnBulkRead.Text = "Start Bulk Read (RX)";
                while (RxBulkTask is Task t && !t.IsCompleted) { Thread.Sleep(10); }


                uint returned = 0;
                byte[] buffer = new byte[] { 0 };
                UsbDevice?.ControlWrite((1 << 7) + 0xA, 0x4, ref buffer, ref returned);
            }
            else
            {
                EnableRxBulk = true;
                BtnBulkRead.Text = "Stop Bulk Read (RX)";
                RxBulkTask = new(() => { RxBulkWorker(); });
                RxBulkTask.Start();
            }
        }

        public const long BASE_ADDRESS = 0x801000000;

        public const long TOP_ADDRESS_LIMIT = 0x880000000;

        public const uint BULK_PACKET_SIZE = 1024 * 1024;//65536;// 131072; //4096;//16384;//32768;//131072; //65536;

        public const uint BULK_TRANSFER_COUNT = 1; //256;//8 * 64;// 512;//2048;//8192;//4096;//2048;// 2048;

        public const uint BUFFER_LENGTH = BULK_TRANSFER_COUNT * BULK_PACKET_SIZE;

        public byte[] TxBulkBuffer { get; } = new byte[BUFFER_LENGTH];

        public byte[] RxBulkBuffer { get; } = new byte[BUFFER_LENGTH];

        public bool EnableTxBulk { get; set; } = false;

        public bool EnableRxBulk { get; set; } = false;

        public Task? TxBulkTask { get; private set; }

        public Task? RxBulkTask { get; private set; }

        bool StopLoopTxBulk = false;

        public void TxBulkWorker()
        {
            DMAC_CONFIG config = new()
            {
                Base_Address = BASE_ADDRESS,
                Top_Address = (ulong)(BASE_ADDRESS + BUFFER_LENGTH),
                Packet_Size = BULK_PACKET_SIZE,
                Count = BULK_TRANSFER_COUNT
            };
            uint returned = 0;
            byte[] buffer = config.SerializeBytes();

            while (EnableTxBulk)
            {
                for (int i = 0; i < 4096; i++)
                {
                    TxBulkBuffer[i] = (byte)((12 + i) + test_data);
                }
                test_data++;
                StopLoopTxBulk = false;
                UsbDevice?.ControlWrite((1 << 7) + 0xA, 0x1, ref buffer, ref returned);

                uint bytesRead = 0;
                DateTime start = DateTime.Now;

                for (int i = 0; i < config.Count; i++)
                {
                    if (!EnableTxBulk) 
                    {
                        UsbDevice?.ControlWrite((1 << 7) + 0xA, 0x5, ref buffer, ref returned);
                        StopLoopTxBulk = true;
                    }
 

                    BulkOut?.Write(TxBulkBuffer, (int)(i * BULK_PACKET_SIZE), BULK_PACKET_SIZE, out bytesRead);

                    if (bytesRead != BULK_PACKET_SIZE)
                    {
                        Console.WriteLine(DateTime.Now + " Tx Send and Buffer Mismatch: " + bytesRead + " / " + BULK_PACKET_SIZE + " / " + i);
                        EnableRxBulk = false;
                        return;
                    }
                      
                    if (StopLoopTxBulk)
                        return;
                   
                    //Invoke(new Action(() => { ProgressBarBulkTx.Value = i; }));
                }

                TimeSpan lapsed = DateTime.Now - start;
                uint totalBytes = (uint)TxBulkBuffer.Length;
                Console.WriteLine("Tx Speed = " + (totalBytes / lapsed.TotalSeconds / 1024 / 1024).ToString("0.##") + " MBps");
                Thread.Sleep(20);
                config.Base_Address += BUFFER_LENGTH;
                config.Top_Address += BUFFER_LENGTH;

                if (config.Top_Address >= TOP_ADDRESS_LIMIT)
                {
                    config.Base_Address = BASE_ADDRESS;
                    config.Top_Address = (ulong)(BASE_ADDRESS + BUFFER_LENGTH);
                }

                buffer = config.SerializeBytes();
            }
        }
        bool StopLoopRxBulk = false;
        public void RxBulkWorker()
        {
            DMAC_CONFIG config = new()
            {
                Base_Address = BASE_ADDRESS,
                Top_Address = (ulong)(BASE_ADDRESS + BUFFER_LENGTH),
                Packet_Size = BULK_PACKET_SIZE,
                Count = BULK_TRANSFER_COUNT
            };
            uint returned = 0;
            byte[] buffer = config.SerializeBytes();

            while (EnableRxBulk)
            {
                UsbDevice?.ControlWrite((1 << 7) + 0xA, 0x2, ref buffer, ref returned);
                StopLoopRxBulk = false;

                uint bytesRead = 0;
                DateTime start = DateTime.Now;

                for (int i = 0; i < config.Count; i++)
                {
                    if (!EnableRxBulk) 
                    {
                        UsbDevice?.ControlWrite((1 << 7) + 0xA, 0x6, ref buffer, ref returned);
                        StopLoopRxBulk = true;
                    }

                    bool? complete = BulkIn?.Read(RxBulkBuffer, (int)(i * BULK_PACKET_SIZE), BULK_PACKET_SIZE, out bytesRead);
                    if (complete is not null && !((bool)complete)) 
                    {
                        Console.WriteLine("Bulk in Rx Fail");
                    }

                    if (bytesRead != BULK_PACKET_SIZE)
                    {
                        Console.WriteLine(DateTime.Now + " Rx Send and Buffer Mismatch: " + bytesRead + " / " + BULK_PACKET_SIZE + " / " + i);
                        EnableTxBulk = false;
                        return;
                    }

                    if (StopLoopRxBulk)
                        return;

                    //Thread.Sleep(1);
                    //Invoke(new Action(() => { ProgressBarBulkRx.Value = i; }));
                }
           
                TimeSpan lapsed = DateTime.Now - start;
                uint totalBytes = (uint)RxBulkBuffer.Length;

                Console.WriteLine("RxBulkBuffer (16): " + ToStringWithIndex(RxBulkBuffer));
                Console.WriteLine("Rx Speed = " + (totalBytes / lapsed.TotalSeconds / 1024 / 1024).ToString("0.##") + " MBps");

                Thread.Sleep(20);
                config.Base_Address += BUFFER_LENGTH;
                config.Top_Address += BUFFER_LENGTH;

                if (config.Top_Address >= TOP_ADDRESS_LIMIT)
                {
                    config.Base_Address = BASE_ADDRESS;
                    config.Top_Address = (ulong)(BASE_ADDRESS + BUFFER_LENGTH);
                }

                buffer = config.SerializeBytes();
            }
        }

        public string ToStringWithIndex(byte[] list)
        {
            string s = string.Empty;
            for (int i = 0; i < 16; i++)
            {
                s += "(" + i.ToString() + ")\"" + list.ElementAt(i) + "\"-";
            }

            if (s.Length > 0) return s.TrimEnd('-');
            else return "Empty String Array";
        }
    }
}
