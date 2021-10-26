
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
            this.BtnSetSingleRead = new System.Windows.Forms.Button();
            this.BtnSetLoopRead = new System.Windows.Forms.Button();
            this.BtnSetReadBaseAddress = new System.Windows.Forms.Button();
            this.BtnSetStartRead = new System.Windows.Forms.Button();
            this.BtnStopRead = new System.Windows.Forms.Button();
            this.BtnReceiveForever = new System.Windows.Forms.Button();
            this.BtnStopWrite = new System.Windows.Forms.Button();
            this.BtnStartWrite = new System.Windows.Forms.Button();
            this.BtnSetWriteBaseAddress = new System.Windows.Forms.Button();
            this.BtnSetLoopWrite = new System.Windows.Forms.Button();
            this.BtnSetSingleWrite = new System.Windows.Forms.Button();
            this.BtnSendOnce = new System.Windows.Forms.Button();
            this.BtnCheck = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // BtnReceiveOnce
            // 
            this.BtnReceiveOnce.Location = new System.Drawing.Point(12, 116);
            this.BtnReceiveOnce.Name = "BtnReceiveOnce";
            this.BtnReceiveOnce.Size = new System.Drawing.Size(156, 23);
            this.BtnReceiveOnce.TabIndex = 0;
            this.BtnReceiveOnce.Text = "Receive Once";
            this.BtnReceiveOnce.UseVisualStyleBackColor = true;
            this.BtnReceiveOnce.Click += new System.EventHandler(this.BtnReceiveOnce_Click);
            // 
            // BtnReceiveBulk
            // 
            this.BtnReceiveBulk.Location = new System.Drawing.Point(174, 116);
            this.BtnReceiveBulk.Name = "BtnReceiveBulk";
            this.BtnReceiveBulk.Size = new System.Drawing.Size(156, 23);
            this.BtnReceiveBulk.TabIndex = 1;
            this.BtnReceiveBulk.Text = "Receive Bulk";
            this.BtnReceiveBulk.UseVisualStyleBackColor = true;
            this.BtnReceiveBulk.Click += new System.EventHandler(this.BtnReceiveBulk_Click);
            // 
            // BtnReceiveBulk2
            // 
            this.BtnReceiveBulk2.Location = new System.Drawing.Point(336, 116);
            this.BtnReceiveBulk2.Name = "BtnReceiveBulk2";
            this.BtnReceiveBulk2.Size = new System.Drawing.Size(156, 23);
            this.BtnReceiveBulk2.TabIndex = 2;
            this.BtnReceiveBulk2.Text = "Receive Bulk 2";
            this.BtnReceiveBulk2.UseVisualStyleBackColor = true;
            this.BtnReceiveBulk2.Click += new System.EventHandler(this.BtnReceiveBulk2_Click);
            // 
            // BtnReceiveInterrupt
            // 
            this.BtnReceiveInterrupt.Location = new System.Drawing.Point(12, 12);
            this.BtnReceiveInterrupt.Name = "BtnReceiveInterrupt";
            this.BtnReceiveInterrupt.Size = new System.Drawing.Size(156, 23);
            this.BtnReceiveInterrupt.TabIndex = 3;
            this.BtnReceiveInterrupt.Text = "Receive Interrupt Status";
            this.BtnReceiveInterrupt.UseVisualStyleBackColor = true;
            this.BtnReceiveInterrupt.Click += new System.EventHandler(this.BtnReceiveInterrupt_Click);
            // 
            // BtnSendInterrupt
            // 
            this.BtnSendInterrupt.Location = new System.Drawing.Point(12, 284);
            this.BtnSendInterrupt.Name = "BtnSendInterrupt";
            this.BtnSendInterrupt.Size = new System.Drawing.Size(156, 23);
            this.BtnSendInterrupt.TabIndex = 4;
            this.BtnSendInterrupt.Text = "Send Interrupt";
            this.BtnSendInterrupt.UseVisualStyleBackColor = true;
            this.BtnSendInterrupt.Click += new System.EventHandler(this.BtnSendInterrupt_Click);
            // 
            // BtnSendBulk
            // 
            this.BtnSendBulk.Location = new System.Drawing.Point(174, 224);
            this.BtnSendBulk.Name = "BtnSendBulk";
            this.BtnSendBulk.Size = new System.Drawing.Size(156, 23);
            this.BtnSendBulk.TabIndex = 5;
            this.BtnSendBulk.Text = "Send Bulk";
            this.BtnSendBulk.UseVisualStyleBackColor = true;
            this.BtnSendBulk.Click += new System.EventHandler(this.BtnSendBulk_Click);
            // 
            // BtnSetSingleRead
            // 
            this.BtnSetSingleRead.Location = new System.Drawing.Point(12, 56);
            this.BtnSetSingleRead.Name = "BtnSetSingleRead";
            this.BtnSetSingleRead.Size = new System.Drawing.Size(156, 23);
            this.BtnSetSingleRead.TabIndex = 6;
            this.BtnSetSingleRead.Text = "Set Single Read";
            this.BtnSetSingleRead.UseVisualStyleBackColor = true;
            this.BtnSetSingleRead.Click += new System.EventHandler(this.BtnSetSingleRead_Click);
            // 
            // BtnSetLoopRead
            // 
            this.BtnSetLoopRead.Location = new System.Drawing.Point(174, 56);
            this.BtnSetLoopRead.Name = "BtnSetLoopRead";
            this.BtnSetLoopRead.Size = new System.Drawing.Size(156, 23);
            this.BtnSetLoopRead.TabIndex = 7;
            this.BtnSetLoopRead.Text = "Set Loop Read";
            this.BtnSetLoopRead.UseVisualStyleBackColor = true;
            this.BtnSetLoopRead.Click += new System.EventHandler(this.BtnSetLoopRead_Click);
            // 
            // BtnSetReadBaseAddress
            // 
            this.BtnSetReadBaseAddress.Location = new System.Drawing.Point(336, 56);
            this.BtnSetReadBaseAddress.Name = "BtnSetReadBaseAddress";
            this.BtnSetReadBaseAddress.Size = new System.Drawing.Size(156, 23);
            this.BtnSetReadBaseAddress.TabIndex = 8;
            this.BtnSetReadBaseAddress.Text = "Set Read Base Address";
            this.BtnSetReadBaseAddress.UseVisualStyleBackColor = true;
            this.BtnSetReadBaseAddress.Click += new System.EventHandler(this.BtnSetReadBaseAddress_Click);
            // 
            // BtnSetStartRead
            // 
            this.BtnSetStartRead.Location = new System.Drawing.Point(12, 85);
            this.BtnSetStartRead.Name = "BtnSetStartRead";
            this.BtnSetStartRead.Size = new System.Drawing.Size(156, 23);
            this.BtnSetStartRead.TabIndex = 9;
            this.BtnSetStartRead.Text = "Start Read";
            this.BtnSetStartRead.UseVisualStyleBackColor = true;
            this.BtnSetStartRead.Click += new System.EventHandler(this.BtnSetStartRead_Click);
            // 
            // BtnStopRead
            // 
            this.BtnStopRead.Location = new System.Drawing.Point(174, 85);
            this.BtnStopRead.Name = "BtnStopRead";
            this.BtnStopRead.Size = new System.Drawing.Size(156, 23);
            this.BtnStopRead.TabIndex = 10;
            this.BtnStopRead.Text = "Stop Read";
            this.BtnStopRead.UseVisualStyleBackColor = true;
            this.BtnStopRead.Click += new System.EventHandler(this.BtnStopRead_Click);
            // 
            // BtnReceiveForever
            // 
            this.BtnReceiveForever.Location = new System.Drawing.Point(498, 116);
            this.BtnReceiveForever.Name = "BtnReceiveForever";
            this.BtnReceiveForever.Size = new System.Drawing.Size(156, 23);
            this.BtnReceiveForever.TabIndex = 11;
            this.BtnReceiveForever.Text = "Receive Forever";
            this.BtnReceiveForever.UseVisualStyleBackColor = true;
            this.BtnReceiveForever.Click += new System.EventHandler(this.BtnReceiveForever_Click);
            // 
            // BtnStopWrite
            // 
            this.BtnStopWrite.Location = new System.Drawing.Point(174, 195);
            this.BtnStopWrite.Name = "BtnStopWrite";
            this.BtnStopWrite.Size = new System.Drawing.Size(156, 23);
            this.BtnStopWrite.TabIndex = 16;
            this.BtnStopWrite.Text = "Stop Write";
            this.BtnStopWrite.UseVisualStyleBackColor = true;
            this.BtnStopWrite.Click += new System.EventHandler(this.BtnStopWrite_Click);
            // 
            // BtnStartWrite
            // 
            this.BtnStartWrite.Location = new System.Drawing.Point(12, 195);
            this.BtnStartWrite.Name = "BtnStartWrite";
            this.BtnStartWrite.Size = new System.Drawing.Size(156, 23);
            this.BtnStartWrite.TabIndex = 15;
            this.BtnStartWrite.Text = "Start Write";
            this.BtnStartWrite.UseVisualStyleBackColor = true;
            this.BtnStartWrite.Click += new System.EventHandler(this.BtnStartWrite_Click);
            // 
            // BtnSetWriteBaseAddress
            // 
            this.BtnSetWriteBaseAddress.Location = new System.Drawing.Point(336, 166);
            this.BtnSetWriteBaseAddress.Name = "BtnSetWriteBaseAddress";
            this.BtnSetWriteBaseAddress.Size = new System.Drawing.Size(156, 23);
            this.BtnSetWriteBaseAddress.TabIndex = 14;
            this.BtnSetWriteBaseAddress.Text = "Set Write Base Address";
            this.BtnSetWriteBaseAddress.UseVisualStyleBackColor = true;
            this.BtnSetWriteBaseAddress.Click += new System.EventHandler(this.BtnSetWriteBaseAddress_Click);
            // 
            // BtnSetLoopWrite
            // 
            this.BtnSetLoopWrite.Location = new System.Drawing.Point(174, 166);
            this.BtnSetLoopWrite.Name = "BtnSetLoopWrite";
            this.BtnSetLoopWrite.Size = new System.Drawing.Size(156, 23);
            this.BtnSetLoopWrite.TabIndex = 13;
            this.BtnSetLoopWrite.Text = "Set Loop Write";
            this.BtnSetLoopWrite.UseVisualStyleBackColor = true;
            this.BtnSetLoopWrite.Click += new System.EventHandler(this.BtnSetLoopWrite_Click);
            // 
            // BtnSetSingleWrite
            // 
            this.BtnSetSingleWrite.Location = new System.Drawing.Point(12, 166);
            this.BtnSetSingleWrite.Name = "BtnSetSingleWrite";
            this.BtnSetSingleWrite.Size = new System.Drawing.Size(156, 23);
            this.BtnSetSingleWrite.TabIndex = 12;
            this.BtnSetSingleWrite.Text = "Set Single Write";
            this.BtnSetSingleWrite.UseVisualStyleBackColor = true;
            this.BtnSetSingleWrite.Click += new System.EventHandler(this.BtnSetSingleWrite_Click);
            // 
            // BtnSendOnce
            // 
            this.BtnSendOnce.Location = new System.Drawing.Point(12, 224);
            this.BtnSendOnce.Name = "BtnSendOnce";
            this.BtnSendOnce.Size = new System.Drawing.Size(156, 23);
            this.BtnSendOnce.TabIndex = 17;
            this.BtnSendOnce.Text = "Send Once";
            this.BtnSendOnce.UseVisualStyleBackColor = true;
            this.BtnSendOnce.Click += new System.EventHandler(this.BtnSendOnce_Click);
            // 
            // BtnCheck
            // 
            this.BtnCheck.Location = new System.Drawing.Point(12, 336);
            this.BtnCheck.Name = "BtnCheck";
            this.BtnCheck.Size = new System.Drawing.Size(156, 23);
            this.BtnCheck.TabIndex = 18;
            this.BtnCheck.Text = "Check";
            this.BtnCheck.UseVisualStyleBackColor = true;
            this.BtnCheck.Click += new System.EventHandler(this.BtnCheck_Click);
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.BtnCheck);
            this.Controls.Add(this.BtnSendOnce);
            this.Controls.Add(this.BtnStopWrite);
            this.Controls.Add(this.BtnStartWrite);
            this.Controls.Add(this.BtnSetWriteBaseAddress);
            this.Controls.Add(this.BtnSetLoopWrite);
            this.Controls.Add(this.BtnSetSingleWrite);
            this.Controls.Add(this.BtnReceiveForever);
            this.Controls.Add(this.BtnStopRead);
            this.Controls.Add(this.BtnSetStartRead);
            this.Controls.Add(this.BtnSetReadBaseAddress);
            this.Controls.Add(this.BtnSetLoopRead);
            this.Controls.Add(this.BtnSetSingleRead);
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
        private System.Windows.Forms.Button BtnSetSingleRead;
        private System.Windows.Forms.Button BtnSetLoopRead;
        private System.Windows.Forms.Button BtnSetReadBaseAddress;
        private System.Windows.Forms.Button BtnSetStartRead;
        private System.Windows.Forms.Button BtnStopRead;
        private System.Windows.Forms.Button BtnReceiveForever;
        private System.Windows.Forms.Button BtnStopWrite;
        private System.Windows.Forms.Button BtnStartWrite;
        private System.Windows.Forms.Button BtnSetWriteBaseAddress;
        private System.Windows.Forms.Button BtnSetLoopWrite;
        private System.Windows.Forms.Button BtnSetSingleWrite;
        private System.Windows.Forms.Button BtnSendOnce;
        private System.Windows.Forms.Button BtnCheck;
    }
}

