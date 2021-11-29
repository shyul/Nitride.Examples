using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Nitride;

namespace Nitride.Example
{
    public class ChannelControl : UserControl
    {
        private Label label1;
        private Label label2;
        private Label label3;
        private Label label4;
        private Label label5;
        private Label label6;
        private Label LabelInfo;
        private Label label7;

        public ChannelControl(XDL07_Channel xch) 
        {
            Channel = xch;

            SuspendLayout();
            ElementControl1 = new ElementControl("#1", this);
            ElementControl2 = new ElementControl("#2", this);
            ElementControl3 = new ElementControl("#3", this);
            ElementControl4 = new ElementControl("#4", this);

            ElementControl1.Location = new System.Drawing.Point(0, 50);
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

            InitializeComponent();

            LabelInfo.Text = "Channel: " + SerialNumber + " | Temperature: " + m_Temperature;
        }

        public void IsUpdated()
        {
            /*
            Channel.Load_FBS = true;

            for(int i = 0; i < 8; i++) 
            {
                Channel.FBS_Address = i;
                Channel.SpiTransfer();
            }

            Channel.Load_FBS = false;*/
            Channel.SpiTransfer();

            Channel.DisplayTestValue();
        }

        public int TestIndex { get; set; } = 0;

        public void Test()
        {
            ElementControl1.Test(TestIndex);
            ElementControl2.Test(TestIndex + 7);
            ElementControl3.Test(TestIndex + 9);
            ElementControl4.Test(TestIndex + 10);
            IsUpdated();
            TestIndex++;
        }

        public string SerialNumber => Channel.SerialNumber;

        public int Temperature
        {
            get => m_Temperature;
            set
            {
                m_Temperature = value;
                LabelInfo.Invoke(() => { LabelInfo.Text = "Channel: " + SerialNumber + " | Temperature: " + m_Temperature; });
            }
        }
        private int m_Temperature;

        public XDL07_Channel Channel { get; }

        public ElementControl ElementControl1 { get; }
        public ElementControl ElementControl2 { get; }
        public ElementControl ElementControl3 { get; }
        public ElementControl ElementControl4 { get; }

        private void InitializeComponent()
        {
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.label7 = new System.Windows.Forms.Label();
            this.LabelInfo = new System.Windows.Forms.Label();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(49, 35);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(63, 15);
            this.label1.TabIndex = 19;
            this.label1.Text = "RX V Atten";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(156, 35);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(65, 15);
            this.label2.TabIndex = 20;
            this.label2.Text = "RX V Phase";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(263, 35);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(65, 15);
            this.label3.TabIndex = 21;
            this.label3.Text = "RX H Atten";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(370, 35);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(67, 15);
            this.label4.TabIndex = 22;
            this.label4.Text = "RX H Phase";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(472, 35);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(64, 15);
            this.label5.TabIndex = 23;
            this.label5.Text = "TX H Atten";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(578, 35);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(66, 15);
            this.label6.TabIndex = 24;
            this.label6.Text = "TX H Phase";
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(668, 35);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(93, 15);
            this.label7.TabIndex = 25;
            this.label7.Text = "TX Power Detect";
            // 
            // LabelInfo
            // 
            this.LabelInfo.AutoSize = true;
            this.LabelInfo.Font = new System.Drawing.Font("Segoe UI Semibold", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point);
            this.LabelInfo.Location = new System.Drawing.Point(7, 7);
            this.LabelInfo.Name = "LabelInfo";
            this.LabelInfo.Size = new System.Drawing.Size(305, 15);
            this.LabelInfo.TabIndex = 26;
            this.LabelInfo.Text = "Channel: [Serial Number] | Chip Temperature: -- Degrees";
            // 
            // ChannelControl
            // 
            this.BackColor = System.Drawing.SystemColors.ActiveCaption;
            this.Controls.Add(this.LabelInfo);
            this.Controls.Add(this.label7);
            this.Controls.Add(this.label6);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Name = "ChannelControl";
            this.Size = new System.Drawing.Size(857, 180);
            this.Load += new System.EventHandler(this.ChannelControl_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }



        private void ChannelControl_Load(object sender, EventArgs e)
        {

        }
    }
}
