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
    public class ZParam : Parameter
    {
        public ZParam(string name, int portCount)
        {
            Name = name;
            PortCount = portCount;
        }

        private Dictionary<int, (ComplexColumn V, ComplexColumn I, ComplexColumn P)> VIColumnLUT { get; } = new();

        public (ComplexColumn V, ComplexColumn I, ComplexColumn P) this[int num]
        {
            get
            {
                if (!VIColumnLUT.ContainsKey(num))
                {
                    VIColumnLUT.Add(num, (
                        new ComplexColumn(GetType().Name + "_" + Name + "_V_" + num, "V" + num),
                        new ComplexColumn(GetType().Name + "_" + Name + "_I_" + num, "I" + num),
                        new ComplexColumn(GetType().Name + "_" + Name + "_P_" + num, "P" + num)
                    ));
                }

                return VIColumnLUT[num];
            }
        }

        public void GetZ1(FreqTable ft, ComplexColumn z2Column, ComplexColumn z1Column)
        {
            //var freq_list = z2_list.Keys.OrderBy(n => n);

            //ZParamTable zt = new ZParamTable(freq_list, 2);

            //Interpolate(zt);
            //Dictionary<double, Complex> result = new();

            foreach (FreqRow row in ft.Rows)
            {

                //double freq = row.Frequency;

                Complex z11 = row[this[1, 1]]; // = new Complex(result_s11_real[pt], result_s11_imag[pt]);
                Complex z12 = row[this[1, 2]]; // = new Complex(result_s12_real[pt], result_s12_imag[pt]);
                Complex z21 = row[this[2, 1]]; // = new Complex(result_s21_real[pt], result_s21_imag[pt]);
                Complex z22 = row[this[2, 2]]; // = new Complex(result_s22_real[pt], result_s22_imag[pt]);
                Complex z2 = row[z2Column];

                row[z1Column] = z11 - (z12 * z21 / (z22 + z2));
            }

            //return result;
        }
    }
}
