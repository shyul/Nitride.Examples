/// ***************************************************************************
/// Nitride Shared Libraries and Utilities
/// Copyright 2001-2008, 2014-2021 Xu Li - me@xuli.us
/// 
/// Chrono Table
/// 
/// ***************************************************************************

using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Numerics;
using System.IO;

namespace Nitride.EE
{
    public class ParamTable : FreqTable
    {
        ~ParamTable() => Dispose();

        public void Reset()
        {
            Clear();
            ColumnList.Clear();
        }

        public int PortCount
        {
            get => m_PortCount;

            set
            {
                lock (DataLockObject)
                {
                    Reset();
                    int num = m_PortCount = value;
                    for (int i = 1; i <= num; i++)
                    {
                        for (int j = 1; j <= num; j++)
                        {
                            string name = "S" + j.ToString() + i.ToString();
                            ColumnList.Add((j, i), new ComplexColumn(name));
                        }
                    }
                }
            }
        }

        private int m_PortCount = 1;

        public Dictionary<(int, int), ComplexColumn> ColumnList { get; } = new();

        public void ImportTouchStone(string fileName)
        {
            string suffix = fileName.Split('.').Last();

            int portCount = -1;
            int validFieldCount = -1;
            double normalized = -1;
            double freqUnit = 0;
            TouchstoneFormat format = TouchstoneFormat.Invalid;

            if (suffix.StartsWith('s') && suffix.EndsWith('p'))
            {
                portCount = suffix.TrimStart('s').TrimEnd('p').ToInt32(-1);
            }

            if (portCount > 0)
            {

                using var fs = new FileStream(fileName, FileMode.Open, FileAccess.Read, FileShare.ReadWrite);
                using StreamReader sr = new(fs);

                bool validHeader = false;

                lock (DataLockObject)
                {
                    while (!sr.EndOfStream)
                    {
                        string line = sr.ReadLine().Split('!').First().Trim();
                        if (line.Length > 0)// && (!line.StartsWith('!')))
                        {
                            if (line.StartsWith('#'))
                            {
                                var fields = line.Split(' ');
                                if (fields.Length == 6)
                                {
                                    freqUnit = fields[1].ToUpper() switch
                                    {
                                        "HZ" => 1,
                                        "KHZ" => 1e3,
                                        "MHZ" => 1e6,
                                        "GHZ" => 1e9,
                                        _ => 0
                                    };

                                    string type = fields[2].ToUpper();

                                    format = fields[3].ToUpper() switch
                                    {
                                        "RI" => TouchstoneFormat.RealImaginary,
                                        "DB" => TouchstoneFormat.dBAngle,
                                        "MA" => TouchstoneFormat.MagnitudeAngle,
                                        _ => TouchstoneFormat.Invalid
                                    };

                                    normalized = fields[5].ToDouble();

                                    if (type == "S" && normalized > 0 && format > 0 && freqUnit > 0)
                                    {
                                        Console.WriteLine("PortCount = " + portCount + "; unit = " + freqUnit + "; type = " + type + "; format = " + format + "; normalized = " + normalized);

                                        PortCount = portCount;
                                        validFieldCount = 1 + (2 * portCount * portCount);
                                        validHeader = true;
                                    }
                                }
                            }
                            else if (validHeader)
                            {
                                List<string> fields = new();
                                foreach (string s in line.Split(' '))
                                {
                                    string field = s.Trim();
                                    if (field.Length > 0)
                                    {
                                        fields.Add(field);
                                    }
                                }

                                if (fields.Count == validFieldCount)
                                {
                                    double freq = fields[0].ToDouble() * freqUnit;

                                    if (format == TouchstoneFormat.RealImaginary)
                                    {
                                        int pt = 1;

                                        string str = "freq = " + freq;// + "; ";

                                        for (int i = 1; i <= PortCount; i++)
                                        {
                                            for (int j = 1; j <= PortCount; j++)
                                            {
                                                Complex c = new(fields[pt].ToDouble(), fields[pt + 1].ToDouble());
                                                //str += ", ReS" + j.ToString() + i.ToString() + " = " + fields[pt];
                                                //str += ", ImS" + j.ToString() + i.ToString() + " = " + fields[pt + 1];
                                                str += ", S" + j.ToString() + i.ToString() + " = " + c;

                                                var column = ColumnList[(j, i)];
                                                var row = new FreqRow(freq, this);
                                                row[column] = c;

                                                Rows.Add(row);


                                                pt += 2;
                                            }

                                        }
                                        Console.WriteLine(str);
                                    }

                                    //Console.WriteLine("freq = " + freq + " | " + fields.ToStringWithIndex());
                                }

                            }
                        }
                    }
                }
            }


        }
    }
}
