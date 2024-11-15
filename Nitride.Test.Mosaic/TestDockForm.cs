﻿/// ***************************************************************************
/// The UI is designed specifically for Pacman
/// 2014-2021 Xu Li - me@xuli.us
/// ***************************************************************************

using System.ComponentModel;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Windows.Forms;

namespace Nitride.Example
{
    [DesignerCategory("Code")]
    public class TestDockForm : DockForm
    {
        public TestDockForm(string formName) : base(formName)
        {
            HasIcon = true;
            Btn_Pin.Enabled = true;
            Btn_Close.Enabled = true;
            BackColor = Color.FromArgb(255, 255, 253, 245);

            ResumeLayout(false);
            PerformLayout();
        }

        Rectangle rect;
        Rectangle rect2;
        protected override void CoordinateLayout()
        {
            rect = new Rectangle(10, 10, ClientRectangle.Width - 21, ClientRectangle.Height - 21);
            rect2 = new Rectangle(ClientRectangle.Width / 4, 50 + ClientRectangle.Height / 4, ClientRectangle.Width / 2, ClientRectangle.Height / 2);
            //if(TabText == "To-Do") Log.Print(rect.ToString());
            //base.OnClientSizeChanged(e);
        }
        protected override void OnPaint(PaintEventArgs pe)
        {
            base.OnPaint(pe);
            Graphics g = pe.Graphics;
            g.SmoothingMode = SmoothingMode.HighQuality;
            g.SmoothingMode = SmoothingMode.AntiAlias;
            g.TextRenderingHint = System.Drawing.Text.TextRenderingHint.AntiAlias;
            g.DrawRectangle(new Pen(new SolidBrush(Color.LightGray)), rect);

            //g.DrawRectangle(new Pen(new SolidBrush(Color.LightGray)), ClientRectangle);

            using (Font tFont = new Font("Segoe UI", 30F, FontStyle.Regular, GraphicsUnit.Point, ((byte)(0))))
            {
                Box(g, rect, tFont, Color.LightGray, TabName);
            }

            using (Font tFont = new Font("Segoe UI", 30F, FontStyle.Regular, GraphicsUnit.Point, ((byte)(0))))
            {
                int level = 0;
                DockContainer topx = (DockContainer)HostContainer;
                while (!topx.IsRoot)
                {
                    topx = (DockContainer)topx.HostDockPane.Parent;
                    level++;
                }


                string info = ClientRectangle.Width.ToString() + " - " + ClientRectangle.Height.ToString() + " / Level: " + level;
                //info = Parent.ToString();
                Box(g, rect2, new Font("Segoe UI", 15F, FontStyle.Regular, GraphicsUnit.Point, ((byte)(0))), Color.LightGray, info);
            }
        }

        public static void Box(Graphics g, Rectangle rect, Font font, Color color, string text)
        {
            using (StringFormat format = new StringFormat() { LineAlignment = StringAlignment.Center, Alignment = StringAlignment.Center })
            {
                g.DrawString(text, font, new SolidBrush(color), rect, format);
            }
        }
    }
}
