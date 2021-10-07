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
    public class SParamTable : ParamTable
    {
        public SParamTable(int portCount, double z0 = 50)
        {
            PortCount = portCount;
            Z0 = z0;
        }

        public SParamTable(double startFreq, double stopFreq, int numOfPts, int portCount, double z0 = 50)
        {
            PortCount = portCount;
            Z0 = z0;
            Configure(startFreq, stopFreq, numOfPts);
        }

        public SParamTable(double startFreq, double stopFreq, double stepFreq, int portCount, double z0 = 50)
        {
            PortCount = portCount;
            Z0 = z0;
            Configure(startFreq, stopFreq, stepFreq);
        }

        public SParamTable(IEnumerable<double> freqList, int portCount, double z0 = 50)
        {
            PortCount = portCount;
            Z0 = z0;

            int pt = 0;
            foreach (double freq in freqList.OrderBy(n => n))
            {
                ParamRows.Add(new ParamRow(freq, pt, this));
                pt++;
            }
        }



        public double Z0 { get; }

        public void CalculateDbMagnitude()
        {
            foreach (var row in ParamRows)
            {
                Complex p11 = row[1, 1];
                Complex p12 = row[1, 2];
                Complex p21 = row[2, 1];
                Complex p22 = row[2, 2];

                Console.WriteLine("freq = " + row.Frequency + "; " + "S11 = " + p11.Magnitude + "; " + "S21 = " + p21.Magnitude + "; " + "S12 = " + p12.Magnitude + "; " + "S22 = " + p22.Magnitude);

                row[Column_Mag11] = 20 * Math.Log10(p11.Magnitude);
                row[Column_Mag21] = 20 * Math.Log10(p21.Magnitude);
                row[Column_Mag12] = 20 * Math.Log10(p12.Magnitude);
                row[Column_Mag22] = 20 * Math.Log10(p22.Magnitude);
            }
        }

        public ZParamTable GetZTable()
        {
            if (PortCount == 2)
            {
                double z0 = Z0;
                ZParamTable zt = new(2);
                Console.WriteLine("Get Z Table:\n");
                int pt = 0;
                foreach (var sr in ParamRows)
                {
                    double freq = sr.Frequency;
                    ParamRow zr = new(freq, pt, zt);
                    pt++;

                    Complex s11 = sr[1, 1];
                    Complex s12 = sr[1, 2];
                    Complex s21 = sr[2, 1];
                    Complex s22 = sr[2, 2];

                    Complex deltaS = ((1 - s11) * (1 - s22)) - (s12 * s21);

                    zr[1, 1] = (((1 + s11) * (1 - s22)) + (s12 * s21)) * z0 / deltaS;
                    zr[1, 2] = 2 * s12 * z0 / deltaS;
                    zr[2, 1] = 2 * s21 * z0 / deltaS;
                    zr[2, 2] = (((1 - s11) * (1 + s22)) + (s12 * s21)) * z0 / deltaS;

                    //if (pt < 5 || (freq >= 1.9e6 && freq <= 2.4e6))
                    if (freq >= 1.9e6 && freq <= 2.4e6)
                    {
                        Console.WriteLine("freq = " + freq + "; s11 = " + sr[1, 1] + "; s21 = " + sr[2, 1] + "; s12 = " + sr[1, 2] + "; s22 = " + sr[2, 2]);
                        Console.WriteLine("freq = " + freq + "; z11 = " + zr[1, 1] + "; z21 = " + zr[2, 1] + "; z12 = " + zr[1, 2] + "; z22 = " + zr[2, 2]);
                        Console.WriteLine("freq = " + freq + "; Mag(z11) = " + zr[1, 1].Magnitude + "; Mag(z21) = " + zr[2, 1].Magnitude + "; Mag(z12) = " + zr[1, 2].Magnitude + "; Mag(z22) = " + zr[2, 2].Magnitude);
                        Console.WriteLine();
                    }

                    zt.ParamRows.Add(zr);
                }

                return zt;
            }
            else
                throw new Exception("The function only supports 2 ports, S-Parameter table.");
        }

        /*
        public Dictionary<double, Complex> GetImpedance(Dictionary<double, Complex> z2_list)
        {
            ParamTable zt0 = GetZTable();

            // Intrepolate zt
            double startSlope = 0D;
            double endSlope = double.NaN;

            CubicSpline spline_s11_real = new(zt0.ParamRows.Select(n => n.Frequency), zt0.ParamRows.Select(n => n[1, 1].Real), startSlope, endSlope);
            CubicSpline spline_s11_imag = new(zt0.ParamRows.Select(n => n.Frequency), zt0.ParamRows.Select(n => n[1, 1].Imaginary), startSlope, endSlope);
            CubicSpline spline_s12_real = new(zt0.ParamRows.Select(n => n.Frequency), zt0.ParamRows.Select(n => n[1, 2].Real), startSlope, endSlope);
            CubicSpline spline_s12_imag = new(zt0.ParamRows.Select(n => n.Frequency), zt0.ParamRows.Select(n => n[1, 2].Imaginary), startSlope, endSlope);
            CubicSpline spline_s21_real = new(zt0.ParamRows.Select(n => n.Frequency), zt0.ParamRows.Select(n => n[2, 1].Real), startSlope, endSlope);
            CubicSpline spline_s21_imag = new(zt0.ParamRows.Select(n => n.Frequency), zt0.ParamRows.Select(n => n[2, 1].Imaginary), startSlope, endSlope);
            CubicSpline spline_s22_real = new(zt0.ParamRows.Select(n => n.Frequency), zt0.ParamRows.Select(n => n[2, 2].Real), startSlope, endSlope);
            CubicSpline spline_s22_imag = new(zt0.ParamRows.Select(n => n.Frequency), zt0.ParamRows.Select(n => n[2, 2].Imaginary), startSlope, endSlope);
            
            //CubicSpline spline_s11_mag = new(zt.ParamRows.Select(n => n.Frequency), zt.ParamRows.Select(n => n[1, 1].Magnitude), startSlope, endSlope);
            //CubicSpline spline_s11_deg = new(zt.ParamRows.Select(n => n.Frequency), zt.ParamRows.Select(n => n[1, 1].Phase), startSlope, endSlope);
            //CubicSpline spline_s12_mag = new(zt.ParamRows.Select(n => n.Frequency), zt.ParamRows.Select(n => n[1, 2].Magnitude), startSlope, endSlope);
            //CubicSpline spline_s12_deg = new(zt.ParamRows.Select(n => n.Frequency), zt.ParamRows.Select(n => n[1, 2].Phase), startSlope, endSlope);
            //CubicSpline spline_s21_mag = new(zt.ParamRows.Select(n => n.Frequency), zt.ParamRows.Select(n => n[2, 1].Magnitude), startSlope, endSlope);
            //CubicSpline spline_s21_deg = new(zt.ParamRows.Select(n => n.Frequency), zt.ParamRows.Select(n => n[2, 1].Phase), startSlope, endSlope);
            //CubicSpline spline_s22_mag = new(zt.ParamRows.Select(n => n.Frequency), zt.ParamRows.Select(n => n[2, 2].Magnitude), startSlope, endSlope);
            //CubicSpline spline_s22_deg = new(zt.ParamRows.Select(n => n.Frequency), zt.ParamRows.Select(n => n[2, 2].Phase), startSlope, endSlope);
            

            var freq_list = z2_list.Keys.OrderBy(n => n);

            var result_s11_real = spline_s11_real.Evaluate(freq_list);
            var result_s11_imag = spline_s11_imag.Evaluate(freq_list);
            var result_s12_real = spline_s12_real.Evaluate(freq_list);
            var result_s12_imag = spline_s12_imag.Evaluate(freq_list);
            var result_s21_real = spline_s21_real.Evaluate(freq_list);
            var result_s21_imag = spline_s21_imag.Evaluate(freq_list);
            var result_s22_real = spline_s22_real.Evaluate(freq_list);
            var result_s22_imag = spline_s22_imag.Evaluate(freq_list);

            ParamTable zt = new(ParamType.Z, 2, zt0.Z0);

            Dictionary<double, Complex> result = new();

            int pt = 0;
            foreach (double freq in freq_list)
            {
                ParamRow zr = new(freq, pt, zt);

                Complex z11 = zr[1, 1] = new Complex(result_s11_real[pt], result_s11_imag[pt]);
                Complex z12 = zr[1, 2] = new Complex(result_s12_real[pt], result_s12_imag[pt]);
                Complex z21 = zr[2, 1] = new Complex(result_s21_real[pt], result_s21_imag[pt]);
                Complex z22 = zr[2, 2] = new Complex(result_s22_real[pt], result_s22_imag[pt]);

                Complex z2 = z2_list[freq];

                result[freq] = z11 - (z12 * z21 / (z22 + z2));

                pt++;
                zt.ParamRows.Add(zr);
            }

            return result;
        }*/

    }
}
