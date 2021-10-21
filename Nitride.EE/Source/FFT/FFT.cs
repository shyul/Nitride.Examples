﻿/// ***************************************************************************
/// Nitride Shared Libraries and Utilities
/// Copyright 2001-2008, 2014-2021 Xu Li - me@xuli.us
/// 
/// Radix-2 Software FFT
/// 
/// ***************************************************************************

using System;
using System.Collections.Generic;
using System.Linq;
using System.Numerics;

namespace Nitride.EE
{
    public class FFT
    {
        public static Complex[] GetSineWave(int numPt, double fullScale, double normFreq)
        {
            Complex[] res = new Complex[numPt];
            double ang = 2 * normFreq * Math.PI; // normFreq * Math.PI;// / numPt;
            Complex w = new(Math.Cos(ang), Math.Sin(ang));
            res[0] = new Complex(fullScale, 0.0);

            for (int i = 1; i < numPt; i++)
            {
                res[i] = res[i - 1] * w;
            }

            return res;
        }

        public FFT(int length = 65536, WindowsType type = WindowsType.FlatTop, double[] winF = null, int[] winParam = null)
        {
            if (length > 4 && length.IsPowerOf2())
            {
                Length = length;

                if (type == WindowsType.Custom)
                {
                    if (winF?.Length == length)
                        WinF = winF;
                    else
                        throw new ArgumentException("Custom Window's array length has to match FFT length");
                }
                else
                    WinF = WindowFunction.GetWindow(length, type);

                Wn = new Complex[Length];
                double ang = 2 * Math.PI / Length;
                Complex w = new Complex(Math.Cos(ang), -Math.Sin(ang));
                Wn[0] = new Complex(1.0, 0.0);

                int n = Length / 2;
                for (int i = 1; i < n; i++)
                    Wn[i] = Wn[i - 1] * w;
            }
            else
                throw new ArgumentException("Length must be greater than 4 and power of 2");
        }

        public int Length { get; private set; } = 1024;
        public WindowsType WindowType { get; private set; }

        public Complex[] Wn { get; private set; }
        public double[] WinF { get; private set; }

        public static ComplexColumn Column_Result { get; } = new("FFT Result", "FS");
        public static NumericColumn Column_ResultMag { get; } = new("FFT Result Mag", "FS");
        public static NumericColumn Column_ResultDb { get; } = new("FFT Result Db", "FS");

        public FreqTable Transform(ChronoTable t, ComplexColumn inputColumn, int startPt)
        {
            Complex[] dsw = new Complex[Length];

            // Apply window to input sample
            for (int i = startPt; i < Length + startPt; i++)
                dsw[i] = t[i][inputColumn] * WinF[i];

            int LengthBy2 = Length / 2;
            //int LengthBy4 = LengthBy2 / 2;
            int m = 0;
            int w = 1;

            // Transform Radix-2
            while (LengthBy2 >= 1)
            {
                int d = 0;
                for (int i = 0; i < w; i++)
                {
                    d = Length / w;
                    for (int j = 0; j < LengthBy2; j++)
                    {
                        Complex TmpA = dsw[i * d + j] + dsw[i * d + LengthBy2 + j];
                        Complex TmpB = (dsw[i * d + j] - dsw[i * d + LengthBy2 + j]) * Wn[w * j];
                        dsw[i * d + j] = TmpA;
                        dsw[i * d + LengthBy2 + j] = TmpB;
                    }
                }
                LengthBy2 /= 2;
                //LengthBy4 = LengthBy2 / 2;
                m += 1;
                w *= 2;
            }

            /*
            FreqTable ft = new();
            ft.Configure(0, 250e6, Length);

            // Re-order output array.
            for (uint i = 0; i < dsw.Length; i++)
            {
                ft[(int)i][Column_Result] = dsw[i.EndianInverse(m)];
            }*/

            FreqTable ft = new();
            ft.Configure(0, t.SampleRate, Length / 64);

            Complex[] c = new Complex[dsw.Length];

            for (uint i = 0; i < dsw.Length; i++)
            {
                c[i] = dsw[i.EndianInverse(m)];
            }

            for (int i = 0; i < ft.Count; i++)
            {
                FreqRow row = ft[i];
                //Complex c = row[Column_Result] = dsw[i.EndianInverse(m)];

                double mag = row[Column_ResultMag] = c.Skip(i * 64).Take(64).Select(c => c.Magnitude).Max();
                row[Column_ResultDb] = (20 * Math.Log10(mag));

            }

            return ft;
        }

        public FreqTable Transform(ChronoTable t, NumericColumn inputColumn, int startPt)
        {
            double maxVal = t.Rows.Select(n => Math.Abs(n[inputColumn])).Max();
            //double minVal = t.Rows.Select(n => n[inputColumn]).Min();

            double factor = 8191 / maxVal;


            Complex[] dsw = new Complex[Length];

            // Apply window to input sample

            Complex[] dsw2 = new Complex[Length * 2];
            int r = 0;
            //for (int i = startPt; i < (Length * 2) + startPt; i++)
            for (int i = startPt; i < Length + startPt; i++)
            {
                double input = t[i][inputColumn];// * factor;

                Complex c = new(input, 0);
                /*
                switch (r)
                {
                    case 0: c = new(0, input); break;
                    case 1: c = new(input, 0); break;
                    case 2: c = new(0, -input); break;
                    case 3: c = new(-input, 0); break;
                }*/

                dsw2[i] = new(input, 0);

                r++;
                if (r >= 4) r = 0;
            }


            for (int i = 0; i < Length; i++)
            {
                //dsw[i] = (dsw2[i * 2] + dsw2[(i * 2) + 1]) * WinF[i] / 2;

                dsw[i] = dsw2[i] * WinF[i];
            }

            /*
            int r = 0;
            for (int i = startPt; i < (Length * 2) + startPt; i++)
            {
                double input = t[i][inputColumn];
                if (i % 2 == 0)
                {
                    Complex c = new(input, 0);
                    dsw[r] = c * WinF[r];
                    r++;
                }
            }*/

            Console.WriteLine("r = " + r);

            int LengthBy2 = Length / 2;
            //int LengthBy4 = LengthBy2 / 2;
            int m = 0;
            int w = 1;

            // Transform Radix-2
            while (LengthBy2 >= 1)
            {
                int d = 0;
                for (int i = 0; i < w; i++)
                {
                    d = Length / w;
                    for (int j = 0; j < LengthBy2; j++)
                    {
                        Complex TmpA = dsw[i * d + j] + dsw[i * d + LengthBy2 + j];
                        Complex TmpB = (dsw[i * d + j] - dsw[i * d + LengthBy2 + j]) * Wn[w * j];
                        dsw[i * d + j] = TmpA;
                        dsw[i * d + LengthBy2 + j] = TmpB;
                    }
                }
                LengthBy2 /= 2;
                //LengthBy4 = LengthBy2 / 2;
                m += 1;
                w *= 2;
            }

            //Complex[] Result = new Complex[Length];
            /*
            FreqTable ft = new();
            ft.Configure(0, t.SampleRate, Length);

            // Re-order output array.
            for (uint i = 0; i < dsw.Length; i++)
            {
                FreqRow row = ft[(int)i];
                Complex c = row[Column_Result] = dsw[i.EndianInverse(m)];
                double mag = row[Column_ResultMag] = c.Magnitude;
                row[Column_ResultDb] = 20 * Math.Log10(mag);
            }*/

            FreqTable ft = new();
            ft.Configure(0, t.SampleRate, Length / 64);

            Complex[] res = new Complex[dsw.Length];

            for (uint i = 0; i < dsw.Length; i++)
            {
                res[i] = dsw[i.EndianInverse(m)];


                /*
                FreqRow row = ft[(int)i];
                Complex c = row[Column_Result] = dsw[i.EndianInverse(m)];
                double mag = row[Column_ResultMag] = c.Magnitude;
                row[Column_ResultDb] = 20 * Math.Log10(mag);*/
            }

            for (int i = 0; i < ft.Count; i++) 
            {
                FreqRow row = ft[i];
                //Complex c = row[Column_Result] = dsw[i.EndianInverse(m)];

                double mag = row[Column_ResultMag] = res.Skip(i * 64).Take(64).Select(c => c.Magnitude).Max();
                row[Column_ResultDb] = (20 * Math.Log10(mag)) - 180.6 ;

            }


            return ft;
        }
        public FreqTable Transform2(ChronoTable t, NumericColumn inputColumn, int startPt)
        {
            double maxVal = t.Rows.Select(n => Math.Abs(n[inputColumn])).Max();
            //double minVal = t.Rows.Select(n => n[inputColumn]).Min();

            double factor = 8191 / maxVal;


            Complex[] dsw = new Complex[Length];

            // Apply window to input sample

            Complex[] dsw2 = new Complex[Length * 2];
            int r = 0;
            for (int i = startPt; i < (Length * 2) + startPt; i++)
            //for (int i = startPt; i < Length + startPt; i++)
            {
                //double input = t[i][inputColumn];// * factor;

                Complex c = new(t[i][inputColumn], 0);
                // weaver modulator https://www.dsprelated.com/thread/7299/real-to-complex-conversion
                // https://dsp.stackexchange.com/questions/54943/hilbert-transform-in-c-provides-possibly-strange-results
                switch (r)
                {
                    case 0: c = c * new Complex(1, 0); break;
                    case 1: c = c * new Complex(0, -1); break;
                    case 2: c = c * new Complex(-1, 0); break;
                    case 3: c = c * new Complex(0, 1); break;
                }

                dsw2[i] = c;// new(input, 0);

                r++;
                if (r >= 4) r = 0;
            }




            for (int i = 0; i < Length; i++)
            {
                //dsw[i] = (dsw2[i * 2] + dsw2[(i * 2) + 1]) * WinF[i] / 2;

                dsw[i] =  new Complex((dsw2[i * 2].Real + dsw2[(i * 2) + 1].Real) * WinF[i] / 2, (dsw2[i * 2].Imaginary + dsw2[(i * 2) + 1].Imaginary) * WinF[i] / 2);// * WinF[i] / 2;

                ///dsw[i] = i % 2 == 0 ? dsw[i] : (-1) * dsw[i];
                //dsw[i] = dsw2[i] * WinF[i];
            }

            /*
            int r = 0;
            for (int i = startPt; i < (Length * 2) + startPt; i++)
            {
                double input = t[i][inputColumn];
                if (i % 2 == 0)
                {
                    Complex c = new(input, 0);
                    dsw[r] = c * WinF[r];
                    r++;
                }
            }*/

            Console.WriteLine("r = " + r);

            int LengthBy2 = Length / 2;
            //int LengthBy4 = LengthBy2 / 2;
            int m = 0;
            int w = 1;

            // Transform Radix-2
            while (LengthBy2 >= 1)
            {
                int d = 0;
                for (int i = 0; i < w; i++)
                {
                    d = Length / w;
                    for (int j = 0; j < LengthBy2; j++)
                    {
                        Complex TmpA = dsw[i * d + j] + dsw[i * d + LengthBy2 + j];
                        Complex TmpB = (dsw[i * d + j] - dsw[i * d + LengthBy2 + j]) * Wn[w * j];
                        dsw[i * d + j] = TmpA;
                        dsw[i * d + LengthBy2 + j] = TmpB;
                    }
                }
                LengthBy2 /= 2;
                //LengthBy4 = LengthBy2 / 2;
                m += 1;
                w *= 2;
            }



            FreqTable ft = new();
            ft.Configure(0, t.SampleRate, Length / 64);

            Complex[] res = new Complex[dsw.Length];

            for (uint i = 0; i < dsw.Length; i++)
            {
                res[i] = dsw[i.EndianInverse(m)];
            }

            for (int i = 0; i < ft.Count; i++)
            {
                FreqRow row = ft[i];
                double mag = row[Column_ResultMag] = res.Skip(i * 64).Take(64).Select(c => c.Magnitude).Max();
                row[Column_ResultDb] = (20 * Math.Log10(mag)) - 180.6;
            }

            return ft;
        }


        public Complex[] Transform(Complex[] Input)
        {
            if (Input.Length == Length)
            {
                // Apply window to input sample
                for (int i = 0; i < Length; i++)
                    Input[i] = Input[i] * WinF[i];

                int LengthBy2 = Length / 2;
                int LengthBy4 = LengthBy2 / 2;
                int m = 0;
                int w = 1;

                // Transform Radix-2
                while (LengthBy2 >= 1)
                {
                    int d = 0;
                    for (int i = 0; i < w; i++)
                    {
                        d = Length / w;
                        for (int j = 0; j < LengthBy2; j++)
                        {
                            Complex TmpA = Input[i * d + j] + Input[i * d + LengthBy2 + j];
                            Complex TmpB = (Input[i * d + j] - Input[i * d + LengthBy2 + j]) * Wn[w * j];
                            Input[i * d + j] = TmpA;
                            Input[i * d + LengthBy2 + j] = TmpB;
                        }
                    }
                    LengthBy2 /= 2;
                    LengthBy4 = LengthBy2 / 2;
                    m += 1;
                    w *= 2;
                }

                Complex[] Result = new Complex[Length];

                // Re-order output array.
                for (uint i = 0; i < Input.Length; i++)
                {
                    Result[i] = Input[i.EndianInverse(m)];
                }

                return Result;
            }
            else
                throw new ArgumentException("Input array length must be equal to the FFT length.");
        }
    }
}
