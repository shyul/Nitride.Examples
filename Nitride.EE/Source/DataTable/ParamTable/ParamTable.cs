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
    public class ParamTable : DataTable
    {
        public ParamTable(double startFreq, double stopFreq, int numOfPts, ParamType type, int portCount)
        {
            Type = type;
            PortCount = portCount;
            Configure(startFreq, stopFreq, numOfPts);
        }

        public ParamTable(double startFreq, double stopFreq, double stepFreq, ParamType type, int portCount)
        {
            Type = type;
            PortCount = portCount;
            Configure(startFreq, stopFreq, stepFreq);
        }

        public ParamTable(string fileName)
        {
            string suffix = fileName.Split('.').Last();

            //int portCount = -1;
            int validFieldCount = -1;
            //double normalized = -1;
            double freqUnit = 0;
            TouchstoneFormat format = TouchstoneFormat.Invalid;

            if (suffix.StartsWith('s') && suffix.EndsWith('p'))
            {
                PortCount = suffix.TrimStart('s').TrimEnd('p').ToInt32(-1);
            }

            if (PortCount > 0)
            {
                using var fs = new FileStream(fileName, FileMode.Open, FileAccess.Read, FileShare.ReadWrite);
                using StreamReader sr = new(fs);

                bool validHeader = false;
                int linePt = 0;

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

                                Z0 = fields[5].ToDouble();

                                if (type == "S" && Z0 > 0 && format > 0 && freqUnit > 0)
                                {
                                    Type = ParamType.S;
                                    Console.WriteLine("PortCount = " + PortCount + "; unit = " + freqUnit + "; type = " + type + "; format = " + format + "; Z0 = " + Z0);
                                    validFieldCount = 1 + (2 * PortCount * PortCount);
                                    validHeader = true;
                                }
                                else
                                    throw new Exception("Invalid SnP file format.");
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
                                    var row = new ParamRow(freq, linePt, this);
                                    linePt++;
                                    //string str = "freq = " + freq;// + "; ";

                                    for (int i = 1; i <= PortCount; i++)
                                    {
                                        for (int j = 1; j <= PortCount; j++)
                                        {
                                            Complex c = new(fields[pt].ToDouble(), fields[pt + 1].ToDouble());

                                            //str += ", S" + j.ToString() + i.ToString() + " = " + c;
                                            row[j, i] = c;
                                            pt += 2;
                                        }

                                    }
                                    //Console.WriteLine(str);
                                    ParamRows.Add(row);
                                }

                                //Console.WriteLine("freq = " + freq + " | " + fields.ToStringWithIndex());
                            }


                        }
                    }
                }
            }


        }

        ~ParamTable() => Dispose();

        public ParamType Type { get; }

        public int PortCount { get; }

        public double Z0 { get; }

        protected void Configure(double startFreq, double stopFreq, int numOfPts)
        {
            lock (DataLockObject)
            {
                ParamRows.Clear();
                Step = (stopFreq - startFreq) / (numOfPts - 1D);
                Start = startFreq;

                int pt = 0;
                for (int i = 0; i < numOfPts; i++)
                {
                    double freq = startFreq + (i * Step);
                    ParamRows.Add(new ParamRow(freq, pt, this));
                    Stop = freq;
                    pt++;
                }
            }
        }

        protected void Configure(double startFreq, double stopFreq, double stepFreq)
        {
            lock (DataLockObject)
            {
                ParamRows.Clear();
                Step = stepFreq;
                Start = startFreq;

                int pt = 0;
                for (double freq = startFreq; freq < stopFreq; freq += Step)
                {
                    ParamRows.Add(new ParamRow(freq, pt, this));
                    Stop = freq;
                    pt++;
                }
            }
        }

        public double Start { get; protected set; } = double.NaN; // => Count > 0 ? Rows.First().X : double.NaN;

        public double Stop { get; protected set; } = double.NaN; // => Count > 0 ? Rows.Last().X : double.NaN;

        public double Step { get; protected set; } = double.NaN;

        protected List<ParamRow> ParamRows { get; } = new();

        public override int Count => ParamRows.Count;

        public override void Clear()
        {
            lock (DataLockObject)
                ParamRows.Clear();
        }

        public static NumericColumn Column_S11 { get; } = new("S11");
        public static NumericColumn Column_S12 { get; } = new("S12");
        public static NumericColumn Column_S21 { get; } = new("S21");
        public static NumericColumn Column_S22 { get; } = new("S22");

        public void Calculate() 
        {
            foreach (var row in ParamRows)
            {
                Complex s11 = row[1, 1];
                Complex s12 = row[1, 2];
                Complex s21 = row[2, 1];
                Complex s22 = row[2, 2];

                Console.WriteLine("freq = " + row.Frequency + "; s11 = " + s11 + "; s21 = " + s21 + "; s12 = " + s12 + "; s22 = " + s22);

                row[Column_S11] = s11.Magnitude;
                row[Column_S21] = s21.Magnitude;
                row[Column_S12] = s12.Magnitude;
                row[Column_S22] = s22.Magnitude;
            }

        }

        public IEnumerable<double> FreqList => ParamRows.Select(n => n.Frequency).OrderBy(n => n);

        public IEnumerable<ParamRow> Rows => ParamRows.OrderBy(n => n.Frequency);

        public ParamRow this[int i]
        {
            get
            {
                lock (DataLockObject)
                    if (i >= Count || i < 0)
                        return null;
                    else
                        return ParamRows[i];
            }
        }

        public override double this[int i, NumericColumn column] => i >= Count || i < 0 ? double.NaN : ParamRows[i][column];


    }
}
