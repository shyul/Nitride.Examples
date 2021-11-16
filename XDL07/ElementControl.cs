using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Nitride;

namespace Nitride.Example
{
    public class ElementControl : UserControl
    {
        public ElementControl(string name) 
        {
            Name = name;
            InitializeComponent();
            LableName.Text = name;
        }

        private TextBox TextBoxRX_V_Atten;
        private TextBox TextBoxRX_V_Phase;
        private TextBox TextBoxRX_H_Atten;
        private TextBox TextBoxRX_H_Phase;
        private TextBox TextBoxTX_H_Atten;
        private TextBox TextBoxTX_H_Phase;
        private CheckBox CheckPowerOff;
        private Label LableName;
        private ProgressBar PbTX_Power;

        public void IsUpdated() { }

        private void TextBoxRX_V_Phase_Validated(object sender, EventArgs e)
        {
            int value = TextBoxRX_V_Phase.Text.ToInt32(0);
            if (value > 63) value = 63; else if (value < 0) value = 0;
            RX_V_Phase = value;
            IsUpdated();
        }

        public int RX_V_Phase { get; private set; } = 0; // 6-bit

        private void TextBoxRX_V_Atten_Validated(object sender, EventArgs e)
        {
            int value = TextBoxRX_V_Atten.Text.ToInt32(0);
            if (value > 63) value = 63; else if (value < 0) value = 0;
            RX_V_Atten = value;
            IsUpdated();
        }

        public int RX_V_Atten { get; private set; } = 0; // 6-bit

        private void TextBoxRX_H_Phase_Validated(object sender, EventArgs e)
        {
            int value = TextBoxRX_H_Phase.Text.ToInt32(0);
            if (value > 63) value = 63; else if (value < 0) value = 0;
            RX_H_Phase = value;
            IsUpdated();
        }

        public int RX_H_Phase { get; private set; } = 0; // 6-bit

        private void TextBoxRX_H_Atten_Validated(object sender, EventArgs e)
        {
            int value = TextBoxRX_H_Atten.Text.ToInt32(0);
            if (value > 63) value = 63; else if (value < 0) value = 0;
            RX_H_Atten = value;
            IsUpdated();
        }

        public int RX_H_Atten { get; private set; } = 0; // 6-bit

        private void TextBoxTX_H_Phase_Validated(object sender, EventArgs e)
        {
            int value = TextBoxTX_H_Phase.Text.ToInt32(0);
            if (value > 63) value = 63; else if (value < 0) value = 0;
            TX_H_Phase = value;
            IsUpdated();
        }

        public int TX_H_Phase { get; private set; } = 0; // 6-bit

        private void TextBoxTX_H_Atten_Validated(object sender, EventArgs e)
        {
            int value = TextBoxTX_H_Atten.Text.ToInt32(0);
            if (value > 63) value = 63; else if (value < 0) value = 0;
            TX_H_Atten = value;
            IsUpdated();
        }

        public int TX_H_Atten { get; private set; } = 0; // 6-bit

        private void CheckPowerOff_Validated(object sender, EventArgs e)
        {
            PowerOff = CheckPowerOff.Checked;
            IsUpdated();
        }

        public bool PowerOff { get; private set; }

        public int TX_Power
        {
            get => m_TX_Power;

            set
            {
                m_TX_Power = value;

                if (m_TX_Power > PbTX_Power.Maximum)
                    m_TX_Power = PbTX_Power.Maximum;
                else if (m_TX_Power < PbTX_Power.Minimum)
                    m_TX_Power = PbTX_Power.Minimum;

                PbTX_Power.Value = m_TX_Power;
            }
        }

        private int m_TX_Power;

        private void InitializeComponent()
        {
            this.PbTX_Power = new System.Windows.Forms.ProgressBar();
            this.TextBoxRX_V_Atten = new System.Windows.Forms.TextBox();
            this.TextBoxRX_V_Phase = new System.Windows.Forms.TextBox();
            this.TextBoxRX_H_Atten = new System.Windows.Forms.TextBox();
            this.TextBoxRX_H_Phase = new System.Windows.Forms.TextBox();
            this.TextBoxTX_H_Atten = new System.Windows.Forms.TextBox();
            this.TextBoxTX_H_Phase = new System.Windows.Forms.TextBox();
            this.CheckPowerOff = new System.Windows.Forms.CheckBox();
            this.LableName = new System.Windows.Forms.Label();
            this.SuspendLayout();
            // 
            // PbTX_Power
            // 
            this.PbTX_Power.Location = new System.Drawing.Point(665, 3);
            this.PbTX_Power.Name = "PbTX_Power";
            this.PbTX_Power.Size = new System.Drawing.Size(100, 23);
            this.PbTX_Power.TabIndex = 0;
            this.PbTX_Power.Maximum = 31;
            // 
            // TextBoxRX_V_Atten
            // 
            this.TextBoxRX_V_Atten.Location = new System.Drawing.Point(29, 3);
            this.TextBoxRX_V_Atten.Name = "TextBoxRX_V_Atten";
            this.TextBoxRX_V_Atten.Size = new System.Drawing.Size(100, 23);
            this.TextBoxRX_V_Atten.TabIndex = 1;
            this.TextBoxRX_V_Atten.Text = "0";
            this.TextBoxRX_V_Atten.Validated += new System.EventHandler(this.TextBoxRX_V_Atten_Validated);
            // 
            // TextBoxRX_V_Phase
            // 
            this.TextBoxRX_V_Phase.Location = new System.Drawing.Point(135, 3);
            this.TextBoxRX_V_Phase.Name = "TextBoxRX_V_Phase";
            this.TextBoxRX_V_Phase.Size = new System.Drawing.Size(100, 23);
            this.TextBoxRX_V_Phase.TabIndex = 2;
            this.TextBoxRX_V_Phase.Text = "0";
            this.TextBoxRX_V_Phase.Validated += new System.EventHandler(this.TextBoxRX_V_Phase_Validated);
            // 
            // TextBoxRX_H_Atten
            // 
            this.TextBoxRX_H_Atten.Location = new System.Drawing.Point(241, 3);
            this.TextBoxRX_H_Atten.Name = "TextBoxRX_H_Atten";
            this.TextBoxRX_H_Atten.Size = new System.Drawing.Size(100, 23);
            this.TextBoxRX_H_Atten.TabIndex = 4;
            this.TextBoxRX_H_Atten.Text = "0";
            this.TextBoxRX_H_Atten.Validated += new System.EventHandler(this.TextBoxRX_H_Atten_Validated);
            // 
            // TextBoxRX_H_Phase
            // 
            this.TextBoxRX_H_Phase.Location = new System.Drawing.Point(347, 3);
            this.TextBoxRX_H_Phase.Name = "TextBoxRX_H_Phase";
            this.TextBoxRX_H_Phase.Size = new System.Drawing.Size(100, 23);
            this.TextBoxRX_H_Phase.TabIndex = 5;
            this.TextBoxRX_H_Phase.Text = "0";
            this.TextBoxRX_H_Phase.Validated += new System.EventHandler(this.TextBoxRX_H_Phase_Validated);
            // 
            // TextBoxTX_H_Atten
            // 
            this.TextBoxTX_H_Atten.Location = new System.Drawing.Point(453, 3);
            this.TextBoxTX_H_Atten.Name = "TextBoxTX_H_Atten";
            this.TextBoxTX_H_Atten.Size = new System.Drawing.Size(100, 23);
            this.TextBoxTX_H_Atten.TabIndex = 6;
            this.TextBoxTX_H_Atten.Text = "0";
            this.TextBoxTX_H_Atten.Validated += new System.EventHandler(this.TextBoxTX_H_Atten_Validated);
            // 
            // TextBoxTX_H_Phase
            // 
            this.TextBoxTX_H_Phase.Location = new System.Drawing.Point(559, 3);
            this.TextBoxTX_H_Phase.Name = "TextBoxTX_H_Phase";
            this.TextBoxTX_H_Phase.Size = new System.Drawing.Size(100, 23);
            this.TextBoxTX_H_Phase.TabIndex = 7;
            this.TextBoxTX_H_Phase.Text = "0";
            this.TextBoxTX_H_Phase.Validated += new System.EventHandler(this.TextBoxTX_H_Phase_Validated);
            // 
            // CheckPowerOff
            // 
            this.CheckPowerOff.AutoSize = true;
            this.CheckPowerOff.Location = new System.Drawing.Point(772, 6);
            this.CheckPowerOff.Name = "CheckPowerOff";
            this.CheckPowerOff.Size = new System.Drawing.Size(79, 19);
            this.CheckPowerOff.TabIndex = 8;
            this.CheckPowerOff.Text = "Power Off";
            this.CheckPowerOff.UseVisualStyleBackColor = true;
            this.CheckPowerOff.Validated += new System.EventHandler(this.CheckPowerOff_Validated);
            // 
            // LableName
            // 
            this.LableName.AutoSize = true;
            this.LableName.Location = new System.Drawing.Point(3, 6);
            this.LableName.Name = "LableName";
            this.LableName.Size = new System.Drawing.Size(20, 15);
            this.LableName.TabIndex = 9;
            this.LableName.Text = "#0";
            // 
            // ElementControl
            // 
            this.Controls.Add(this.LableName);
            this.Controls.Add(this.CheckPowerOff);
            this.Controls.Add(this.TextBoxTX_H_Phase);
            this.Controls.Add(this.TextBoxTX_H_Atten);
            this.Controls.Add(this.TextBoxRX_H_Phase);
            this.Controls.Add(this.TextBoxRX_H_Atten);
            this.Controls.Add(this.TextBoxRX_V_Phase);
            this.Controls.Add(this.TextBoxRX_V_Atten);
            this.Controls.Add(this.PbTX_Power);
            //this.Name = "ElementControl";
            this.Size = new System.Drawing.Size(857, 29);
            this.ResumeLayout(false);
            this.PerformLayout();

        }


    }
}
