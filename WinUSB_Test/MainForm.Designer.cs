﻿
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
            this.textBoxGuid = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.BtnFindDevice = new System.Windows.Forms.Button();
            this.label2 = new System.Windows.Forms.Label();
            this.BtnSingleReceive = new System.Windows.Forms.Button();
            this.BtnBulkReceive = new System.Windows.Forms.Button();
            this.BtnBulkReceive2 = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // textBoxGuid
            // 
            this.textBoxGuid.Location = new System.Drawing.Point(140, 64);
            this.textBoxGuid.Name = "textBoxGuid";
            this.textBoxGuid.Size = new System.Drawing.Size(338, 23);
            this.textBoxGuid.TabIndex = 0;
            this.textBoxGuid.Text = "{6AE77B78-518B-493D-A9DD-3A64E87EA3F9}";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(62, 67);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(72, 15);
            this.label1.TabIndex = 1;
            this.label1.Text = "Device GUID";
            // 
            // BtnFindDevice
            // 
            this.BtnFindDevice.Location = new System.Drawing.Point(484, 64);
            this.BtnFindDevice.Name = "BtnFindDevice";
            this.BtnFindDevice.Size = new System.Drawing.Size(100, 23);
            this.BtnFindDevice.TabIndex = 2;
            this.BtnFindDevice.Text = "Find Device";
            this.BtnFindDevice.UseVisualStyleBackColor = true;
            this.BtnFindDevice.Click += new System.EventHandler(this.BtnFindDevice_Click);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(130, 271);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(400, 15);
            this.label2.TabIndex = 3;
            this.label2.Text = "http://woshub.com/how-to-sign-an-unsigned-driver-for-windows-7-x64/";
            // 
            // BtnSingleReceive
            // 
            this.BtnSingleReceive.Location = new System.Drawing.Point(484, 93);
            this.BtnSingleReceive.Name = "BtnSingleReceive";
            this.BtnSingleReceive.Size = new System.Drawing.Size(100, 23);
            this.BtnSingleReceive.TabIndex = 4;
            this.BtnSingleReceive.Text = "Single Receive";
            this.BtnSingleReceive.UseVisualStyleBackColor = true;
            this.BtnSingleReceive.Click += new System.EventHandler(this.BtnSingleReceive_Click);
            // 
            // BtnBulkReceive
            // 
            this.BtnBulkReceive.Location = new System.Drawing.Point(484, 122);
            this.BtnBulkReceive.Name = "BtnBulkReceive";
            this.BtnBulkReceive.Size = new System.Drawing.Size(100, 23);
            this.BtnBulkReceive.TabIndex = 5;
            this.BtnBulkReceive.Text = "Bulk Receive";
            this.BtnBulkReceive.UseVisualStyleBackColor = true;
            this.BtnBulkReceive.Click += new System.EventHandler(this.BtnBulkReceive_Click);
            // 
            // BtnBulkReceive2
            // 
            this.BtnBulkReceive2.Location = new System.Drawing.Point(484, 151);
            this.BtnBulkReceive2.Name = "BtnBulkReceive2";
            this.BtnBulkReceive2.Size = new System.Drawing.Size(100, 23);
            this.BtnBulkReceive2.TabIndex = 6;
            this.BtnBulkReceive2.Text = "Bulk Receive 2";
            this.BtnBulkReceive2.UseVisualStyleBackColor = true;
            this.BtnBulkReceive2.Click += new System.EventHandler(this.BtnBulkReceive2_Click);
            // 
            // MainForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 15F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.BtnBulkReceive2);
            this.Controls.Add(this.BtnBulkReceive);
            this.Controls.Add(this.BtnSingleReceive);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.BtnFindDevice);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.textBoxGuid);
            this.Name = "MainForm";
            this.Text = "Form1";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.TextBox textBoxGuid;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Button BtnFindDevice;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Button BtnSingleReceive;
        private System.Windows.Forms.Button BtnBulkReceive;
        private System.Windows.Forms.Button BtnBulkReceive2;
    }
}

