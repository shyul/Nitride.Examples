
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
            this.SuspendLayout();
            // 
            // BtnSPITest
            // 
            this.BtnSPITest.Location = new System.Drawing.Point(113, 78);
            this.BtnSPITest.Name = "BtnSPITest";
            this.BtnSPITest.Size = new System.Drawing.Size(75, 23);
            this.BtnSPITest.TabIndex = 0;
            this.BtnSPITest.Text = "Test SPI";
            this.BtnSPITest.UseVisualStyleBackColor = true;
            this.BtnSPITest.Click += new System.EventHandler(this.BtnSPITest_Click);
            // 
            // MainForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 15F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.BtnSPITest);
            this.Name = "MainForm";
            this.Text = "Form1";
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Button BtnSPITest;
    }
}

