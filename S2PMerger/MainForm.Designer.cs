
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
            this.BtnLoadSnPFile = new System.Windows.Forms.Button();
            this.BtnSaveSnPFile = new System.Windows.Forms.Button();
            this.BtnConvertMAX2 = new System.Windows.Forms.Button();
            this.BtnConvertQuartusPinFile = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // BtnLoadSnPFile
            // 
            this.BtnLoadSnPFile.Location = new System.Drawing.Point(309, 170);
            this.BtnLoadSnPFile.Name = "BtnLoadSnPFile";
            this.BtnLoadSnPFile.Size = new System.Drawing.Size(137, 23);
            this.BtnLoadSnPFile.TabIndex = 0;
            this.BtnLoadSnPFile.Text = "Load SnP File";
            this.BtnLoadSnPFile.UseVisualStyleBackColor = true;
            this.BtnLoadSnPFile.Click += new System.EventHandler(this.BtnLoadSnPFile_Click);
            // 
            // BtnSaveSnPFile
            // 
            this.BtnSaveSnPFile.Location = new System.Drawing.Point(309, 199);
            this.BtnSaveSnPFile.Name = "BtnSaveSnPFile";
            this.BtnSaveSnPFile.Size = new System.Drawing.Size(137, 23);
            this.BtnSaveSnPFile.TabIndex = 1;
            this.BtnSaveSnPFile.Text = "Save SnP File";
            this.BtnSaveSnPFile.UseVisualStyleBackColor = true;
            this.BtnSaveSnPFile.Click += new System.EventHandler(this.BtnSaveSnPFile_Click);
            // 
            // BtnConvertMAX2
            // 
            this.BtnConvertMAX2.Location = new System.Drawing.Point(309, 61);
            this.BtnConvertMAX2.Name = "BtnConvertMAX2";
            this.BtnConvertMAX2.Size = new System.Drawing.Size(148, 23);
            this.BtnConvertMAX2.TabIndex = 2;
            this.BtnConvertMAX2.Text = "Convert MAX II Pins";
            this.BtnConvertMAX2.UseVisualStyleBackColor = true;
            this.BtnConvertMAX2.Click += new System.EventHandler(this.BtnConvertMAX2_Click);
            // 
            // BtnConvertQuartusPinFile
            // 
            this.BtnConvertQuartusPinFile.Location = new System.Drawing.Point(309, 90);
            this.BtnConvertQuartusPinFile.Name = "BtnConvertQuartusPinFile";
            this.BtnConvertQuartusPinFile.Size = new System.Drawing.Size(148, 23);
            this.BtnConvertQuartusPinFile.TabIndex = 3;
            this.BtnConvertQuartusPinFile.Text = "Convert Quartus Pin File";
            this.BtnConvertQuartusPinFile.UseVisualStyleBackColor = true;
            this.BtnConvertQuartusPinFile.Click += new System.EventHandler(this.BtnConvertQuartusPinFile_Click);
            // 
            // MainForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 15F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.BtnConvertQuartusPinFile);
            this.Controls.Add(this.BtnConvertMAX2);
            this.Controls.Add(this.BtnSaveSnPFile);
            this.Controls.Add(this.BtnLoadSnPFile);
            this.Name = "MainForm";
            this.Text = "Form1";
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Button BtnLoadSnPFile;
        private System.Windows.Forms.Button BtnSaveSnPFile;
        private System.Windows.Forms.Button BtnConvertMAX2;
        private System.Windows.Forms.Button BtnConvertQuartusPinFile;
    }
}

