
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
            this.BtnSPITest = new System.Windows.Forms.Button();
            this.BtnTX = new System.Windows.Forms.Button();
            this.BtnRX = new System.Windows.Forms.Button();
            this.BtnSW = new System.Windows.Forms.Button();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.SuspendLayout();
            // 
            // BtnSPITest
            // 
            this.BtnSPITest.Location = new System.Drawing.Point(12, 12);
            this.BtnSPITest.Name = "BtnSPITest";
            this.BtnSPITest.Size = new System.Drawing.Size(75, 23);
            this.BtnSPITest.TabIndex = 0;
            this.BtnSPITest.Text = "Test SPI";
            this.BtnSPITest.UseVisualStyleBackColor = true;
            this.BtnSPITest.Click += new System.EventHandler(this.BtnSPITest_Click);
            // 
            // BtnTX
            // 
            this.BtnTX.Location = new System.Drawing.Point(105, 12);
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
            // BtnSW
            // 
            this.BtnSW.Location = new System.Drawing.Point(283, 12);
            this.BtnSW.Name = "BtnSW";
            this.BtnSW.Size = new System.Drawing.Size(75, 23);
            this.BtnSW.TabIndex = 3;
            this.BtnSW.Text = "Toggle SW";
            this.BtnSW.UseVisualStyleBackColor = true;
            this.BtnSW.Click += new System.EventHandler(this.BtnSW_Click);
            // 
            // groupBox1
            // 
            this.groupBox1.Location = new System.Drawing.Point(12, 41);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(618, 237);
            this.groupBox1.TabIndex = 4;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "groupBox1";
            // 
            // MainForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 15F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.BtnSW);
            this.Controls.Add(this.BtnRX);
            this.Controls.Add(this.BtnTX);
            this.Controls.Add(this.BtnSPITest);
            this.Name = "MainForm";
            this.Text = "Form1";
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Button BtnSPITest;
        private System.Windows.Forms.Button BtnTX;
        private System.Windows.Forms.Button BtnRX;
        private System.Windows.Forms.Button BtnSW;
        private System.Windows.Forms.GroupBox groupBox1;
    }
}

