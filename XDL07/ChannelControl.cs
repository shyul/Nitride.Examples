using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Nitride;

namespace Nitride.Example
{
    public class ChannelControl : Control
    {
        public ChannelControl() 
        {

            ElementControl1 = new ElementControl("#1");
            ElementControl2 = new ElementControl("#2");
            ElementControl3 = new ElementControl("#3");
            ElementControl4 = new ElementControl("#4");
            InitializeComponent();
        }

        private void InitializeComponent()
        {
            this.SuspendLayout();
            // 
            // ChannelControl
            // 

            ElementControl1.Location = new System.Drawing.Point(0, 0);
            ElementControl1.TabIndex = 0;

            ElementControl2.Location = new System.Drawing.Point(ElementControl1.Left, ElementControl1.Bottom);
            ElementControl2.TabIndex = 1;

            ElementControl3.Location = new System.Drawing.Point(ElementControl1.Left, ElementControl2.Bottom);
            ElementControl3.TabIndex = 2;

            ElementControl4.Location = new System.Drawing.Point(ElementControl1.Left, ElementControl3.Bottom);
            ElementControl4.TabIndex = 3;

            Controls.Add(ElementControl1);
            Controls.Add(ElementControl2);
            Controls.Add(ElementControl3);
            Controls.Add(ElementControl4);

            this.Name = "ChannelControl";
            this.Size = new System.Drawing.Size(ElementControl1.Width, ElementControl4.Bottom);
            this.ResumeLayout(false);
        }

        public ElementControl ElementControl1 { get; }
        public ElementControl ElementControl2 { get; }
        public ElementControl ElementControl3 { get; }
        public ElementControl ElementControl4 { get; }
    }
}
