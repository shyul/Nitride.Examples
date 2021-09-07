using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nitride.Chart
{
    public class TestDatum
    {
        public double Frequency { get; set; }

        public double Amplitude { get; set; }

        private Dictionary<NumericColumn, double> NumericDatums { get; } = new Dictionary<NumericColumn, double>();

        public double this[NumericColumn column]
        {
            get
            {
                return column switch
                {
                    NumericColumn dc when dc == Column_Amplitude => Amplitude,
                    NumericColumn ic when NumericDatums.ContainsKey(ic) => NumericDatums[ic],
                    _ => double.NaN,
                };
            }
            set
            {
                if (double.IsNaN(value) && NumericDatums.ContainsKey(column))
                    NumericDatums.Remove(column);
                else
                    switch (column)
                    {
                        case NumericColumn dc when dc == Column_Amplitude: Amplitude = value; break;
                        default:
                            if (!NumericDatums.ContainsKey(column))
                                NumericDatums.Add(column, value);
                            else
                                NumericDatums[column] = value;
                            break;
                    }
            }
        }

        public static NumericColumn Column_Amplitude { get; } = new NumericColumn("Amplitude", "dB");
    }
}
