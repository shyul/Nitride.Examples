using System;
using System.Collections.Generic;
using System.Drawing;
using System.Drawing.Text;
using System.Linq;
using System.Threading;
using System.Windows.Forms;
using Nitride.Chart;

namespace Nitride.Chart
{
    public sealed class TestChart : ChartWidget
    {
        public TestChart(string name, TestTable st) : base(name)
        {
            TestTable = st;
            TestTable.Status = TableStatus.Loading;
            TestTable.DataViews.Add(this);

            AddArea(MainArea = new OscillatorArea(this, "Main", 0.3f)
            {
                HasXAxisBar = true,
                Reference = -50,
                UpperLimit = -20,
                LowerLimit = -80,
                UpperColor = Color.Green,
                LowerColor = Color.DarkOrange,
                FixedTickStep_Right = 10,

            });

            MainArea.AddSeries(MainSeries = new LineSeries(TestDatum.Column_Amplitude)
            {
                Color = Color.Gray,
                IsAntialiasing = true,
                Tension = 0
            });
        }

        public override int RightBlankAreaWidth => 0;

        public TestTable TestTable { get; private set; }

        public OscillatorArea MainArea { get; }

        public LineSeries MainSeries { get; }


        public override string this[int i]
        {
            get
            {
                if (TestTable[i] is TestDatum sp && sp.Frequency is double d)
                    return d.ToString();
                else
                    return string.Empty;
            }
        }

        public override ITable Table
        {
            get => TestTable;

            set
            {
                if (value is TestTable st)
                    TestTable = st;
                else
                    TestTable = null;
            }
        }

        public override void CoordinateOverlay()
        {
            ResumeLayout(true);
            ChartBounds = new Rectangle(
                LeftYAxisLabelWidth + Margin.Left,
                Margin.Top,
                ClientRectangle.Width - LeftYAxisLabelWidth - Margin.Left - RightYAxisLabelWidth - Margin.Right,
                ClientRectangle.Height - Margin.Top - Margin.Bottom
                );

            if (ReadyToShow)
            {
                lock (Table.DataLockObject)
                    lock (GraphicsLockObject)
                    {
                        AxisX.TickList.Clear();

                        int tickMulti = 1;
                        int tickWidth = AxisX.TickWidth;

                        int minorTextWidth = TextRenderer.MeasureText("000", Style[Importance.Minor].Font).Width;

                        while (tickWidth <= minorTextWidth) { tickWidth++; tickMulti++; }
                        int px = 0;
                        for (int i = StartPt; i < StopPt; i++)
                        {
                            //DateTime time = m_BarTable.IndexToTime(i);
                            //if ((time.Month - 1) % MajorTick.Length == 0) AxisX.TickList.CheckAdd(px, (Importance.Major, time.ToString("MMM-YY")));
                            //if ((time.Month - 1) % MinorTick.Length == 0) AxisX.TickList.CheckAdd(px, (Importance.Minor, time.ToString("MM")));





                            px++;
                        }

                        if (ChartBounds.Width > RightBlankAreaWidth)
                        {
                            AxisX.IndexCount = IndexCount;
                            AxisX.Coordinate(ChartBounds.Width - RightBlankAreaWidth);

                            int ptY = ChartBounds.Top;
                            float totalY = TotalAreaHeightRatio;

                            if (AutoScaleFit)
                            {
                                foreach (Area ca in Areas)
                                {
                                    if (ca.Visible && ca.Enabled)
                                    {
                                        if (ca.HasXAxisBar)
                                        {
                                            ca.Bounds = new Rectangle(ChartBounds.X, ptY, ChartBounds.Width, (ChartBounds.Height * ca.HeightRatio / totalY - AxisXLabelHeight).ToInt32());
                                            ptY += ca.Bounds.Height + AxisXLabelHeight;
                                            ca.TimeLabelY = ca.Bounds.Bottom + AxisXLabelHeight / 2 + 1;
                                        }
                                        else
                                        {
                                            ca.Bounds = new Rectangle(ChartBounds.X, ptY, ChartBounds.Width, (ChartBounds.Height * ca.HeightRatio / totalY).ToInt32());
                                            ptY += ca.Bounds.Height;
                                        }
                                        ca.Coordinate();
                                    }
                                }
                            }
                            else { }
                        }
                    }
            }
        }
    }
}
