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
using Nitride.Chart;
using System.Drawing;

namespace Nitride.EE
{
    public abstract class ParamTable : DataTable, IFreqTable
    {
        public static ParamTable LoadSnP(string fileName)
        {
            string suffix = fileName.Split('.').Last();

            //int portCount = -1;
            int validFieldCount = -1;
            //double normalized = -1;
            double freqUnit = 0;

            int PortCount = 0;
            ParamTable pat = null;

            if (suffix.StartsWith('s') && suffix.EndsWith('p'))
            {
                PortCount = suffix.TrimStart('s').TrimEnd('p').ToInt32(-1);
            }

            if (PortCount > 0)
            {
                using var fs = new FileStream(fileName, FileMode.Open, FileAccess.Read, FileShare.ReadWrite);
                using StreamReader sr = new(fs);
                string format = string.Empty;
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
                                    _ => throw new Exception("Invalid SnP file format.")
                                };

                                format = fields[3].ToUpper();

                                if (format != "RI" && format != "DB" && format != "MA")
                                    throw new Exception("Invalid SnP file format.");

                                double Z0 = fields[5].ToDouble();

                                if (Z0 > 0)
                                {
                                    pat = fields[2].ToUpper() switch
                                    {
                                        "S" => new SParamTable(PortCount, Z0), // ParamType.S,
                                        "Z" => new ZParamTable(PortCount),
                                        //"Y" => ParamType.Y,
                                        //"G" => ParamType.G,
                                        _ => throw new Exception("Invalid SnP file format.")
                                    };

                                    Console.WriteLine("PortCount = " + PortCount + "; unit = " + freqUnit + "; type = " + fields[2] + "; format = " + format + "; Z0 = " + Z0);
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

                            if (fields.Count == validFieldCount && pat is ParamTable)
                            {
                                double freq = fields[0].ToDouble() * freqUnit;
                                int pt = 1;
                                var row = new ParamRow(freq, linePt, pat);
                                linePt++;

                                for (int i = 1; i <= PortCount; i++)
                                {
                                    for (int j = 1; j <= PortCount; j++)
                                    {
                                        row[j, i] = format switch
                                        {
                                            "RI" => new(fields[pt].ToDouble(), fields[pt + 1].ToDouble()),
                                            "DB" => Complex.FromPolarCoordinates(Math.Pow((fields[pt].ToDouble() / 20D), 10D), fields[pt + 1].ToDouble() * Math.PI / 180D),
                                            "MA" => Complex.FromPolarCoordinates(fields[pt].ToDouble(), fields[pt + 1].ToDouble() * Math.PI / 180D),
                                            _ => throw new Exception("Invalid SnP file format.")
                                        };

                                        pt += 2;
                                    }
                                }

                                pat.ParamRows.Add(row);
                            }
                        }
                    }
                }
            }
            return pat;
        }

        ~ParamTable() => Dispose();

        public int PortCount { get; protected set; }

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

        public List<ParamRow> ParamRows { get; } = new();

        // TODO: Need to sort the rows by frequency...
        public void AddRow(ParamRow row) => ParamRows.Add(row);

        public override int Count => ParamRows.Count;

        public override void Clear()
        {
            lock (DataLockObject)
                ParamRows.Clear();
        }

        public static NumericColumn Column_Mag11 { get; } = new("Mag11");
        public static NumericColumn Column_Mag12 { get; } = new("Mag12");
        public static NumericColumn Column_Mag21 { get; } = new("Mag21");
        public static NumericColumn Column_Mag22 { get; } = new("Mag22");

        public void CalculateMagnitude()
        {
            foreach (var row in ParamRows)
            {
                Complex p11 = row[1, 1];
                Complex p12 = row[1, 2];
                Complex p21 = row[2, 1];
                Complex p22 = row[2, 2];

                Console.WriteLine("freq = " + row.Frequency + "; " + "Mag11 = " + p11.Magnitude + "; " + "Mag21 = " + p21.Magnitude + "; " + "Mag12 = " + p12.Magnitude + "; " + "Mag22 = " + p22.Magnitude);

                row[Column_Mag11] = p11.Magnitude;
                row[Column_Mag21] = p21.Magnitude;
                row[Column_Mag12] = p12.Magnitude;
                row[Column_Mag22] = p22.Magnitude;
            }
        }


        public static ComplexColumn Column_V1 { get; } = new("V1");
        public static ComplexColumn Column_I1 { get; } = new("I1");
        public static ComplexColumn Column_P1 { get; } = new("P1");

        public static ComplexColumn Column_V2 { get; } = new("V2");
        public static ComplexColumn Column_I2 { get; } = new("I2");
        public static ComplexColumn Column_P2 { get; } = new("P2");

        public void CalculatePort2VI()
        {
            foreach (var row in ParamRows)
            {
                Complex z11 = row[1, 1];
                Complex z12 = row[1, 2];
                Complex z21 = row[2, 1];
                Complex z22 = row[2, 2];

                Complex v1 = row[Column_V1];
                Complex i1 = row[Column_I1];
                row[Column_P1] = v1 * i1;

                Complex i2 = row[Column_I2] = (v1 - (z11 * i1)) / z12;
                Complex v2 = row[Column_V2] = (z21 * i1) + (z22 * i2);
                row[Column_P2] = v2 * i2;
            }
        }

        public void CalculatePort1VI()
        {
            foreach (var row in ParamRows)
            {
                Complex z11 = row[1, 1];
                Complex z12 = row[1, 2];
                Complex z21 = row[2, 1];
                Complex z22 = row[2, 2];

                Complex v2 = row[Column_V1];
                Complex i2 = row[Column_I1];
                row[Column_P2] = v2 * i2;

                Complex i1 = row[Column_I1] = (v2 - (z22 * i2)) / z21;
                Complex v1 = row[Column_V1] = (z11 * i1) + (z12 * i2);
                row[Column_P1] = v1 * i1;
            }
        }

        public IEnumerable<double> FreqList => ParamRows.Select(n => n.Frequency).OrderBy(n => n);

        public IEnumerable<FreqRow> Rows => ParamRows.OrderBy(n => n.Frequency).Select(n => n as FreqRow);

        public FreqRow this[int i]
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

        public void Interpolate(ParamTable pat, double startSlope = 0, double endSlope = 0)
        {
            var freqList = pat.FreqList;

            for (int i = 1; i <= PortCount; i++)
            {
                for (int j = 1; j <= PortCount; j++)
                {
                    CubicSpline spline_real = new(ParamRows.Select(n => n.Frequency), ParamRows.Select(n => n[i, j].Real), startSlope, endSlope);
                    CubicSpline spline_imag = new(ParamRows.Select(n => n.Frequency), ParamRows.Select(n => n[i, j].Imaginary), startSlope, endSlope);
                    var result_real = spline_real.Evaluate(freqList);
                    var result_imag = spline_imag.Evaluate(freqList);

                    //Console.WriteLine("Getting S" + i + j);

                    int pt = 0;
                    foreach (ParamRow row in pat.ParamRows)
                    {
                        row[i, j] = new Complex(result_real[pt], result_imag[pt]);
                        pt++;
                    }
                }
            }
        }

        public FreqChart TestChart()
        {
            FreqChart pc = new("S-Parameter", this)
            {
                IndexCount = Count,
                ReadyToShow = true,
                StopPt = Count
            };

            pc.MainArea.AddSeries(new LineSeries(ParamTable.Column_Mag11)
            {
                Order = 0,
                Importance = Importance.Major,
                Name = "S11",
                LegendName = "S11",
                Color = Color.SkyBlue,
                IsAntialiasing = true,
                Tension = 0,
                HasTailTag = false
            });

            pc.MainArea.AddSeries(new LineSeries(ParamTable.Column_Mag12)
            {
                Order = 0,
                Importance = Importance.Major,
                Name = "S12",
                LegendName = "S12",
                Color = Color.DarkGreen,
                IsAntialiasing = true,
                Tension = 0,
                HasTailTag = false
            });

            pc.MainArea.AddSeries(new LineSeries(ParamTable.Column_Mag21)
            {
                Order = 0,
                Importance = Importance.Major,
                Name = "S21",
                LegendName = "S21",
                Color = Color.Red,
                IsAntialiasing = true,
                Tension = 0,
                HasTailTag = false
            });

            pc.MainArea.AddSeries(new LineSeries(ParamTable.Column_Mag22)
            {
                Order = 0,
                Importance = Importance.Major,
                Name = "S22",
                LegendName = "S22",
                Color = Color.Pink,
                IsAntialiasing = true,
                Tension = 0,
                HasTailTag = false
            });

            return pc;
        }
    }
}
