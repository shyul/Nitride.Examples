/// ***************************************************************************
/// Nitride Shared Libraries and Utilities
/// Copyright 2001-2008, 2014-2021 Xu Li - me@xuli.us
/// 
/// Chrono Table
/// 
/// ***************************************************************************

using System;
using System.Collections.Generic;
using System.Linq;
using System.Numerics;

namespace Nitride.EE
{
    public class ParamRow : FreqRow
    {
        public ParamRow(double freq, int index, ParamTable ft) : base(freq, index, ft) { }

        private Dictionary<(int p1, int p2), Complex> ParamDataLUT { get; } = new();

        public Complex this[int p1, int p2]
        {
            get => ParamDataLUT.ContainsKey((p1, p2)) ? ParamDataLUT[(p1, p2)] : double.NaN;
            set
            {
                if (Complex.IsNaN(value) && ParamDataLUT.ContainsKey((p1, p2)))
                    ParamDataLUT.Remove((p1, p2));
                else
                    ParamDataLUT[(p1, p2)] = value;
            }
        }
    }
}
