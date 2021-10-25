
namespace WindowsFormsApp1
{
    partial class Form1
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
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
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.BtnReceiveOnce = new System.Windows.Forms.Button();
            this.BtnReceiveBulk = new System.Windows.Forms.Button();
            this.BtnReceiveBulk2 = new System.Windows.Forms.Button();
            this.BtnReceiveInterrupt = new System.Windows.Forms.Button();
            this.BtnSendInterrupt = new System.Windows.Forms.Button();
            this.BtnSendBulk = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // BtnReceiveOnce
            // 
            this.BtnReceiveOnce.Location = new System.Drawing.Point(137, 70);
            this.BtnReceiveOnce.Name = "BtnReceiveOnce";
            this.BtnReceiveOnce.Size = new System.Drawing.Size(156, 23);
            this.BtnReceiveOnce.TabIndex = 0;
            this.BtnReceiveOnce.Text = "Receive Once";
            this.BtnReceiveOnce.UseVisualStyleBackColor = true;
            this.BtnReceiveOnce.Click += new System.EventHandler(this.BtnReceiveOnce_Click);
            // 
            // BtnReceiveBulk
            // 
            this.BtnReceiveBulk.Location = new System.Drawing.Point(299, 70);
            this.BtnReceiveBulk.Name = "BtnReceiveBulk";
            this.BtnReceiveBulk.Size = new System.Drawing.Size(156, 23);
            this.BtnReceiveBulk.TabIndex = 1;
            this.BtnReceiveBulk.Text = "Receive Bulk";
            this.BtnReceiveBulk.UseVisualStyleBackColor = true;
            this.BtnReceiveBulk.Click += new System.EventHandler(this.BtnReceiveBulk_Click);
            // 
            // BtnReceiveBulk2
            // 
            this.BtnReceiveBulk2.Location = new System.Drawing.Point(461, 70);
            this.BtnReceiveBulk2.Name = "BtnReceiveBulk2";
            this.BtnReceiveBulk2.Size = new System.Drawing.Size(156, 23);
            this.BtnReceiveBulk2.TabIndex = 2;
            this.BtnReceiveBulk2.Text = "Receive Bulk 2";
            this.BtnReceiveBulk2.UseVisualStyleBackColor = true;
            this.BtnReceiveBulk2.Click += new System.EventHandler(this.BtnReceiveBulk2_Click);
            // 
            // BtnReceiveInterrupt
            // 
            this.BtnReceiveInterrupt.Location = new System.Drawing.Point(137, 111);
            this.BtnReceiveInterrupt.Name = "BtnReceiveInterrupt";
            this.BtnReceiveInterrupt.Size = new System.Drawing.Size(156, 23);
            this.BtnReceiveInterrupt.TabIndex = 3;
            this.BtnReceiveInterrupt.Text = "Receive Interrupt";
            this.BtnReceiveInterrupt.UseVisualStyleBackColor = true;
            this.BtnReceiveInterrupt.Click += new System.EventHandler(this.BtnReceiveInterrupt_Click);
            // 
            // BtnSendInterrupt
            // 
            this.BtnSendInterrupt.Location = new System.Drawing.Point(137, 195);
            this.BtnSendInterrupt.Name = "BtnSendInterrupt";
            this.BtnSendInterrupt.Size = new System.Drawing.Size(156, 23);
            this.BtnSendInterrupt.TabIndex = 4;
            this.BtnSendInterrupt.Text = "Send Interrupt";
            this.BtnSendInterrupt.UseVisualStyleBackColor = true;
            this.BtnSendInterrupt.Click += new System.EventHandler(this.BtnSendInterrupt_Click);
            // 
            // BtnSendBulk
            // 
            this.BtnSendBulk.Location = new System.Drawing.Point(299, 195);
            this.BtnSendBulk.Name = "BtnSendBulk";
            this.BtnSendBulk.Size = new System.Drawing.Size(156, 23);
            this.BtnSendBulk.TabIndex = 5;
            this.BtnSendBulk.Text = "Send Bulk";
            this.BtnSendBulk.UseVisualStyleBackColor = true;
            this.BtnSendBulk.Click += new System.EventHandler(this.BtnSendBulk_Click);
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.BtnSendBulk);
            this.Controls.Add(this.BtnSendInterrupt);
            this.Controls.Add(this.BtnReceiveInterrupt);
            this.Controls.Add(this.BtnReceiveBulk2);
            this.Controls.Add(this.BtnReceiveBulk);
            this.Controls.Add(this.BtnReceiveOnce);
            this.Name = "Form1";
            this.Text = "Form1";
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Button BtnReceiveOnce;
        private System.Windows.Forms.Button BtnReceiveBulk;
        private System.Windows.Forms.Button BtnReceiveBulk2;
        private System.Windows.Forms.Button BtnReceiveInterrupt;
        private System.Windows.Forms.Button BtnSendInterrupt;
        private System.Windows.Forms.Button BtnSendBulk;
    }
}

