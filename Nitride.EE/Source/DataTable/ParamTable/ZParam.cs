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

        // https://en.wikipedia.org/wiki/Impedance_parameters
        public void GetZinWithZload(FreqTable ft, ComplexColumn zinColumn, ComplexColumn zloadColumn)
        {
            foreach (FreqRow row in ft.Rows)
            {
                Complex z11 = row[this[1, 1]];
                Complex z12 = row[this[1, 2]];
                Complex z21 = row[this[2, 1]];
                Complex z22 = row[this[2, 2]];
                Complex zload = row[zloadColumn];
                row[zinColumn] = z11 - (z12 * z21 / (z22 + zload));
            }
        }

        // Get Zout
        public void GetZoutWithZsource(FreqTable ft, ComplexColumn zoutColumn, ComplexColumn zsourceColumn)
        {
            foreach (FreqRow row in ft.Rows)
            {
                Complex z11 = row[this[1, 1]];
                Complex z12 = row[this[1, 2]];
                Complex z21 = row[this[2, 1]];
                Complex z22 = row[this[2, 2]];
                Complex zsource = row[zsourceColumn];
                row[zoutColumn] = z22 - (z12 * z21 / (z11 + zsource));
            }
        }

        public void CalculatePort2VI(FreqTable ft, ComplexColumn V1, ComplexColumn I1, ComplexColumn V2, ComplexColumn I2)
        {
            foreach (var row in ft.Rows)
            {
                Complex z11 = row[this[1, 1]];
                Complex z12 = row[this[1, 2]];
                Complex z21 = row[this[2, 1]];
                Complex z22 = row[this[2, 2]];
                
                Complex v1 = row[V1];
                Complex i1 = row[I1];

                Complex i2 = row[I2] = (v1 - (z11 * i1)) / z12;
                row[V2] = (z21 * i1) + (z22 * i2);
            }
        }

        public void CalculatePort2VI(FreqTable ft, NumericColumn V1, NumericColumn I1, ComplexColumn V2, ComplexColumn I2)
        {
            foreach (var row in ft.Rows)
            {
                Complex z11 = row[this[1, 1]];
                Complex z12 = row[this[1, 2]];
                Complex z21 = row[this[2, 1]];
                Complex z22 = row[this[2, 2]];

                double v1 = row[V1];
                double i1 = row[I1];

                Complex i2 = row[I2] = (v1 - (z11 * i1)) / z12;
                row[V2] = (z21 * i1) + (z22 * i2);
            }
        }

        public void CalculatePort1VI(FreqTable ft, ComplexColumn V1, ComplexColumn I1, ComplexColumn V2, ComplexColumn I2)
        {
            foreach (var row in ft.Rows)
            {
                Complex z11 = row[this[1, 1]];
                Complex z12 = row[this[1, 2]];
                Complex z21 = row[this[2, 1]];
                Complex z22 = row[this[2, 2]];

                Complex v2 = row[V2];
                Complex i2 = row[I2];

                Complex i1 = row[I1] = (v2 - (z22 * i2)) / z21;
                row[V1] = (z11 * i1) + (z12 * i2);
            }
        }

        public void CalculatePort1VI(FreqTable ft, ComplexColumn V1, ComplexColumn I1, NumericColumn V2, NumericColumn I2)
        {
            foreach (var row in ft.Rows)
            {
                Complex z11 = row[this[1, 1]];
                Complex z12 = row[this[1, 2]];
                Complex z21 = row[this[2, 1]];
                Complex z22 = row[this[2, 2]];

                double v2 = row[V2];
                double i2 = row[I2];

                Complex i1 = row[I1] = (v2 - (z22 * i2)) / z21;
                row[V1] = (z11 * i1) + (z12 * i2);
            }
        }
    }
}
