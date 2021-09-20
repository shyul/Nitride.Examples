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
    public interface IFreqTable : ITable, IDataProvider
    {
        double Start { get; }

        double Stop { get; }

        double Step { get; }

        IEnumerable<double> FreqList { get; }

        IEnumerable<FreqRow> Rows { get; }

        FreqRow this[int i] { get; }
    }
}
