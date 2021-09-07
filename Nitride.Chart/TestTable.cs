using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Nitride;

namespace Nitride.Chart
{
    public class TestTable : ITable, IDataProvider
    {
        private HashSet<TestDatum> Rows { get; } = new HashSet<TestDatum>();

        public void Add(TestDatum sp)
        {
            lock (Rows)
                if (Rows.Contains(sp))
                    Rows.Where(n => n.Equals(sp)).First().Amplitude = sp.Amplitude;
                else
                    Rows.Add(sp);
        }

        public TestDatum this[int i]
        {
            get
            {
                lock (Rows)
                    if (i >= Count || i < 0)
                        return null;
                    else
                        return Rows.ElementAt(i);
            }
        }

        public double this[int i, NumericColumn column]
        {
            get
            {
                lock (Rows)
                    if (i >= Count || i < 0 || Count == 0)
                        return double.NaN;
                    else
                        return Rows.ElementAt(i)[column];
            }
        }

        public int Count => Rows.Count;

        public void Clear()
        {
            lock (Rows)
                Rows.Clear();
        }



        public bool ReadyToShow => Count > 0 && Status != TableStatus.Default && Status != TableStatus.Loading && Status != TableStatus.Ticking && Status != TableStatus.Calculating;// (Status == TableStatus.Ready || Status == TableStatus.CalculateFinished || Status == TableStatus.TickingFinished);

        public TableStatus Status
        {
            get => m_Status;

            set
            {
                m_Status = value;

                if (m_Status == TableStatus.CalculateFinished)
                {
                    lock (DataViews) DataViews.ForEach(n => { n.ReadyToShow = true; n.PointerSnapToEnd(); });
                }
                else if (!ReadyToShow)
                {
                    lock (DataViews) DataViews.ForEach(n => { n.ReadyToShow = false; n.DataIsUpdated(this); });
                }
            }
        }

        private TableStatus m_Status = TableStatus.Default;

        public List<IDataRenderer> DataViews { get; } = new List<IDataRenderer>();

        public object DataLockObject { get; } = new object();


        public bool AddDataConsumer(IDataConsumer idk)
        {
            return false;
        }

        public bool RemoveDataConsumer(IDataConsumer idk)
        {
            return false;
        }

        public DateTime UpdateTime { get; set; }
    }
}
