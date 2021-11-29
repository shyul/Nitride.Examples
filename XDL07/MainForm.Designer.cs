
namespace Nitride.Example
{
    partial class MainForm
    {
        /// <summary>
        ///  Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        ///  Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        ///  Required method for Designer support - do not modify
        ///  the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.BtnTestMode = new System.Windows.Forms.Button();
            this.BtnTX = new System.Windows.Forms.Button();
            this.BtnRX = new System.Windows.Forms.Button();
            this.BtnStandby = new System.Windows.Forms.Button();
            this.ControlPanel = new System.Windows.Forms.Panel();
            this.SuspendLayout();
            // 
            // BtnTestMode
            // 
            this.BtnTestMode.Location = new System.Drawing.Point(12, 12);
            this.BtnTestMode.Name = "BtnTestMode";
            this.BtnTestMode.Size = new System.Drawing.Size(75, 23);
            this.BtnTestMode.TabIndex = 0;
            this.BtnTestMode.Text = "Test Mode";
            this.BtnTestMode.UseVisualStyleBackColor = true;
            this.BtnTestMode.Click += new System.EventHandler(this.BtnSPITest_Click);
            // 
            // BtnTX
            // 
            this.BtnTX.Location = new System.Drawing.Point(121, 12);
            this.BtnTX.Name = "BtnTX";
            this.BtnTX.Size = new System.Drawing.Size(75, 23);
            this.BtnTX.TabIndex = 1;
            this.BtnTX.Text = "Tx Enable";
            this.BtnTX.UseVisualStyleBackColor = true;
            this.BtnTX.Click += new System.EventHandler(this.BtnTX_Click);
            // 
            // BtnRX
            // 
            this.BtnRX.Location = new System.Drawing.Point(202, 12);
            this.BtnRX.Name = "BtnRX";
            this.BtnRX.Size = new System.Drawing.Size(75, 23);
            this.BtnRX.TabIndex = 2;
            this.BtnRX.Text = "Rx Enable";
            this.BtnRX.UseVisualStyleBackColor = true;
            this.BtnRX.Click += new System.EventHandler(this.BtnRX_Click);
            // 
            // BtnStandby
            // 
            this.BtnStandby.Location = new System.Drawing.Point(283, 12);
            this.BtnStandby.Name = "BtnStandby";
            this.BtnStandby.Size = new System.Drawing.Size(75, 23);
            this.BtnStandby.TabIndex = 3;
            this.BtnStandby.Text = "Standby";
            this.BtnStandby.UseVisualStyleBackColor = true;
            this.BtnStandby.Click += new System.EventHandler(this.BtnStandby_Click);
            // 
            // ControlPanel
            // 
            this.ControlPanel.BackColor = System.Drawing.SystemColors.ButtonShadow;
            this.ControlPanel.Location = new System.Drawing.Point(12, 53);
            this.ControlPanel.Name = "ControlPanel";
            this.ControlPanel.Size = new System.Drawing.Size(857, 674);
            this.ControlPanel.TabIndex = 4;
            // 
            // MainForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 15F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(881, 739);
            this.Controls.Add(this.ControlPanel);
            this.Controls.Add(this.BtnStandby);
            this.Controls.Add(this.BtnRX);
            this.Controls.Add(this.BtnTX);
            this.Controls.Add(this.BtnTestMode);
            this.Name = "MainForm";
            this.Text = "Form1";
            this.FormClosing += new System.Windows.Forms.FormClosingEventHandler(this.MainForm_FormClosing);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Button BtnTestMode;
        private System.Windows.Forms.Button BtnTX;
        private System.Windows.Forms.Button BtnRX;
        private System.Windows.Forms.Button BtnStandby;
        private System.Windows.Forms.Panel ControlPanel;
    }
}

