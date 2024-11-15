﻿/// ***************************************************************************
/// Nitride Shared Libraries and Utilities
/// Copyright 2001-2008, 2014-2021 Xu Li - me@xuli.us
/// 
/// ***************************************************************************

using System;
using System.Collections.Generic;
using System.Drawing;
using System.Drawing.Text;
using System.Linq;
using System.Windows.Forms;

namespace Nitride.Chart
{
    public abstract class ChartWidget : DockForm, IDataRenderer
    {
        protected ChartWidget(string name) : base(name, true)
        {
            HasIcon = true;
            Btn_Pin.Enabled = true;
            Btn_Close.Enabled = true;

            AxisX = new IndexAxis(this);
            Overlay = new ChartOverlay(this);
            Controls.Add(Overlay);
        }

        public readonly Dictionary<Importance, AxisTickStyle> Style = new()
        {
            { Importance.Tiny, new AxisTickStyle() },
            { Importance.Micro, new AxisTickStyle() },
            { Importance.Minor, new AxisTickStyle() },
            { Importance.Major, new AxisTickStyle() },
        };

        public virtual ColorTheme Theme { get; } = new();

        public virtual string Label { get; set; }

        public virtual string Description { get; set; }

        public abstract ITable Table { get; set; }

        public virtual void RemoveDataSource()
        {
            lock (GraphicsLockObject)
            {
                ReadyToShow = false;
                Table = null;
            }
        }

        public virtual void ShowAll() 
        {
            StopPt = IndexCount = Table.Count;
        }

        public virtual int DataCount => Table.Count;

        public virtual int StartPt => StopPt - IndexCount;

        public virtual int StopPt { get; set; }

        public virtual int IndexCount { get; set; } = 295;

        private int MaximumBlankPoints => (0.3f * IndexCount).ToInt32();

        public bool EnableChartShift { get; set; } = true;

        /// <summary>
        /// TODO: The scrolling short chart: CLOV got issues.
        /// </summary>
        /// <param name="num"></param>
        public virtual void ShiftPt(int num)
        {
            lock (GraphicsLockObject)
            {
                int limit = MaximumBlankPoints;

                if (StopPt + num - DataCount >= limit)
                {
                    StopPt = DataCount + limit;
                }
                else if (StartPt + num <= -limit)
                {
                    StopPt = StartPt + IndexCount - limit;
                }
                else
                {
                    StopPt += num;
                }
            }

            m_AsyncUpdateUI = true;
        }

        public virtual void Zoom(int num)
        {
            lock (GraphicsLockObject)
            {
                IndexCount += num;
                if (IndexCount < 1) IndexCount = 1;
                ShiftPt(0);
            }
        }

        public virtual int LastIndexMax { get; protected set; }  // m_BarTable.Count - 1;

        public int LastIndex // Of the bar
        {
            get
            {
                int stopPt = StopPt - 1;
                int maxIndex = LastIndexMax;

                if (stopPt < 0)
                    stopPt = 0;
                else if (stopPt > maxIndex)
                    stopPt = maxIndex;

                return stopPt;
            }
        }

        public virtual void PointerSnapToEnd()
        {
            if (Table is ITable)
            {
                LastIndexMax = Table.Count - 1;
                StopPt = LastIndexMax + 1;
            }
            else
            {
                LastIndexMax = -1;
                StopPt = 0;
            }

            m_AsyncUpdateUI = true; // async update
        }

        public virtual void PointerSnapToNextTick()
        {
            if (Table is ITable t && StopPt > LastIndexMax - 2 && StopPt < LastIndexMax + 2)
            {
                LastIndexMax = t.Count - 1;
                StopPt = LastIndexMax + 1;
            }

            m_AsyncUpdateUI = true;
        }

        protected ChartOverlay Overlay { get; }

        public virtual List<Area> Areas { get; } = new(); // Scan Maze m and yield this list

        public virtual float TotalAreaHeightRatio => Areas.Where(n => n.Visible && n.Enabled).Select(n => n.HeightRatio).Sum();

        public virtual T AddArea<T>(T area, int order) where T : Area
        {
            for (int i = 0; i < Areas.Count; i++)
            {
                Area a = Areas[i];
                a.Order = i;
                if (a.Order == order) a.Order++;
            }

            if (!Areas.Contains(area))
            {
                Areas.Add(area);
            }

            T ca = (T)Areas.Where(n => n == area).First();
            ca.Order = order;
            Areas.Sort((t1, t2) => t1.Order.CompareTo(t2.Order));

            return ca;
        }

        public virtual T AddArea<T>(T area) where T : Area => AddArea(area, Areas.Count);

        public Area this[string areaName]
        {
            get
            {
                var list = Areas.Where(n => n.Name == areaName);
                if (list.Count() > 0)
                    return list.First();
                else
                    return null;
            }
        }

        #region Coordinate

        public IndexAxis AxisX { get; }

        public int HoverIndex { get; set; } = -1;

        public int SelectedIndexPixel => IndexToPixel(HoverIndex);

        /// <summary>
        /// Will give -1 if the selected data point is out of range
        /// </summary>
        public int SelectedDataPointUnregulated
        {
            get
            {
                int pt = (HoverIndex > 0) ? HoverIndex + StartPt : -1;
                if (pt >= DataCount) pt = -1;
                return pt;
            }
        }

        /// <summary>
        /// Range: From 1 to DataCount
        /// </summary>
        public int SelectedDataPoint
        {
            get
            {
                int pt = (HoverIndex > 0) ? HoverIndex + StartPt : StopPt - 1;
                if (pt >= DataCount) pt = DataCount - 1;
                else if (pt < 0) pt = 0;
                return pt;
            }
        }

        public int PixelToIndex(int x) => AxisX.PixelToIndex(x - ChartBounds.Left);

        public int IndexToPixel(int index) => AxisX.IndexToPixel(index) + ChartBounds.Left;

        public abstract string this[int i] { get; }

        public virtual int AxisXLabelHeight { get; set; } = 20;

        public virtual int RightBlankAreaWidth { get; set; } = 16;

        public virtual int LeftYAxisLabelWidth { get; set; } = 50;

        public virtual int RightYAxisLabelWidth { get; set; } = 50;

        public virtual bool AutoScaleFit { get; set; } = true;

        public virtual Rectangle ChartBounds { get; protected set; }

        public abstract void CoordinateOverlay();

        protected override void CoordinateLayout()
        {
            ResumeLayout(true);
            if (ReadyToShow && Table is ITable)
                lock (GraphicsLockObject)
                {
                    ChartBounds = new Rectangle(
                            LeftYAxisLabelWidth + Margin.Left,
                            Margin.Top,
                            ClientRectangle.Width - LeftYAxisLabelWidth - Margin.Left - RightYAxisLabelWidth - Margin.Right,
                            ClientRectangle.Height - Margin.Top - Margin.Bottom
                            );

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
                        else
                        {



                        }
                    }

                    CoordinateOverlay();
                }
            PerformLayout();
        }

        #endregion Coordinate

        #region Paint

        protected override void OnPaint(PaintEventArgs pe)
        {
            Graphics g = pe.Graphics;
            g.TextRenderingHint = TextRenderingHint.ClearTypeGridFit;

            if (Table is null || DataCount < 1)
            {
                g.DrawString("No Data", Main.Theme.FontBold, Main.Theme.GrayTextBrush, new Point(Bounds.Width / 2, Bounds.Height / 2), AppTheme.TextAlignCenter);
            }
            else if (IsActive && !ReadyToShow)
            {
                g.DrawString("Preparing Data... Stand By.", Main.Theme.FontBold, Main.Theme.GrayTextBrush, new Point(Bounds.Width / 2, Bounds.Height / 2), AppTheme.TextAlignCenter);
            }
            else if (ReadyToShow && ChartBounds.Width > 0 && Table is ITable t)
            {
                lock (t.DataLockObject)
                    lock (GraphicsLockObject)
                    {
                        var areas = Areas.Where(n => n.Enabled && n.Visible).OrderBy(n => n.Order);

                        int i = 0;
                        foreach (var ca in areas)
                        {
                            ca.Draw(g);
                            if (ca.HasXAxisBar)
                            {
                                for (int j = 0; j < IndexCount; j++)
                                {
                                    int x = IndexToPixel(j);
                                    int y = ca.Bottom;
                                    g.DrawLine(ca.Theme.EdgePen, x, y, x, y + 1);

                                    if (i < Areas.Count - 1)
                                    {
                                        y = Areas[i + 1].Top;
                                        g.DrawLine(ca.Theme.EdgePen, x, y, x, y - 1);
                                    }
                                }
                            }

                            i++;//
                        }
                    }
            }
        }

        #endregion

        public void GetFocus() => OnGotFocus(new EventArgs());
    }
}
