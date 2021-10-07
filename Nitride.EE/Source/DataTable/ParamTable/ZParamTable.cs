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
    public class ZParamTable : ParamTable
    {
        public ZParamTable(int portCount)
        {
            PortCount = portCount;
        }

        public ZParamTable(double startFreq, double stopFreq, int numOfPts, int portCount)
        {
            PortCount = portCount;
            Configure(startFreq, stopFreq, numOfPts);
        }

        public ZParamTable(double startFreq, double stopFreq, double stepFreq, int portCount)
        {
            PortCount = portCount;
            Configure(startFreq, stopFreq, stepFreq);
        }

        public ZParamTable(IEnumerable<double> freqList, int portCount)
        {
            PortCount = portCount;

            int pt = 0;
            foreach (double freq in freqList.OrderBy(n => n))
            {
                ParamRows.Add(new ParamRow(freq, pt, this));
                pt++;
            }
        }

        public Dictionary<double, Complex> GetImpedance(Dictionary<double, Complex> z2_list)
        {
            var freq_list = z2_list.Keys.OrderBy(n => n);

            ZParamTable zt = new ZParamTable(freq_list, 2);
                
            Interpolate(zt);
            Dictionary<double, Complex> result = new();

            for (int i = 0; i < zt.Count; i++)
            {
                ParamRow zr = zt.ParamRows[i];
                double freq = zr.Frequency;

                Complex z11 = zr[1, 1]; // = new Complex(result_s11_real[pt], result_s11_imag[pt]);
                Complex z12 = zr[1, 2]; // = new Complex(result_s12_real[pt], result_s12_imag[pt]);
                Complex z21 = zr[2, 1]; // = new Complex(result_s21_real[pt], result_s21_imag[pt]);
                Complex z22 = zr[2, 2]; // = new Complex(result_s22_real[pt], result_s22_imag[pt]);
                Complex z2 = z2_list[freq];

                result[freq] = z11 - (z12 * z21 / (z22 + z2));
            }

            return result;
        }


    }
}
