﻿using System;
using System.Collections.Generic;
using System.Drawing;
using System.Drawing.Text;
using System.Linq;
using System.Threading;
using System.Windows.Forms;
using Nitride;
using Nitride.Chart;

namespace Nitride.EE
{
    public sealed class FreqChart : ChartWidget
    {
        public FreqChart(string name, FreqTable st) : base(name)
        {
            Margin = new Padding(5, 15, 5, 5);
            Theme.FillColor = BackColor = Color.FromArgb(255, 255, 253, 245);
            Theme.EdgeColor = Theme.ForeColor = Color.FromArgb(192, 192, 192);

            Style[Importance.Major].Font = Main.Theme.FontBold;
            Style[Importance.Major].HasLabel = true;
            Style[Importance.Major].HasLine = true;
            Style[Importance.Major].Theme.EdgePen.DashPattern = new float[] { 5, 3 };
            Style[Importance.Major].Theme.EdgePen.Color = Color.FromArgb(180, 180, 180);

            Style[Importance.Minor].Font = Main.Theme.Font;
            Style[Importance.Minor].HasLabel = true;
            Style[Importance.Minor].HasLine = true;
            Style[Importance.Minor].Theme.EdgePen.DashPattern = new float[] { 1, 2 };

            FreqTable = st;
            FreqTable.Status = TableStatus.Loading;
            FreqTable.AddDataConsumer(this);
            TabName = Name = "Test Chart with Table Here:)";
            /*
            AddArea(MainArea = new OscillatorArea(this, "Main", 0.3f)
            {
                HasXAxisBar = true,
                Reference = 0,
                UpperLimit = 20,
                LowerLimit = -20,
                UpperColor = Color.Green,
                LowerColor = Color.DarkOrange,
                FixedTickStep_Right = 10,

            });*/
            AddArea(MainArea = new Area(this, "Main", 0.3f)
            {
                HasXAxisBar = true,
            });

            EnableChartShift = false;

            ResumeLayout(false);
            PerformLayout();
        }

        public override int RightBlankAreaWidth => 0;

        public FreqTable FreqTable { get; private set; }

        public Area MainArea { get; }

        public override string this[int i]
        {
            get
            {
                if (FreqTable[i] is FreqRow sp && sp.Frequency is double d)
                    return (d / 1e6).ToString("0.######") + "MHz";
                else
                    return string.Empty;
            }
        }

        public override ITable Table
        {
            get => FreqTable;

            set
            {
                if (value is FreqTable st)
                    FreqTable = st;
                else
                    FreqTable = null;
            }
        }

        public override bool ReadyToShow { get => m_ReadyToShow; set { m_ReadyToShow = value; } }

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
