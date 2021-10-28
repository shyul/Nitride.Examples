
namespace WindowsFormsApp1
{
    partial class MainForm
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
            this.BtnSetReadLength = new System.Windows.Forms.Button();
            this.BtnStartDMA = new System.Windows.Forms.Button();
            this.BtnGetDMAStatus = new System.Windows.Forms.Button();
            this.BtnStopDMA = new System.Windows.Forms.Button();
            this.BtnReadDMATrigger = new System.Windows.Forms.Button();
            this.BtnSetReadUSBPacketSize = new System.Windows.Forms.Button();
            this.BtnReadBufferOccupation = new System.Windows.Forms.Button();
            this.BtnCapture = new System.Windows.Forms.Button();
            this.BtnSingleCapture = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // BtnReceiveOnce
            // 
            this.BtnReceiveOnce.Location = new System.Drawing.Point(14, 164);
            this.BtnReceiveOnce.Margin = new System.Windows.Forms.Padding(4, 3, 4, 3);
            this.BtnReceiveOnce.Name = "BtnReceiveOnce";
            this.BtnReceiveOnce.Size = new System.Drawing.Size(182, 27);
            this.BtnReceiveOnce.TabIndex = 0;
            this.BtnReceiveOnce.Text = "Receive Once";
            this.BtnReceiveOnce.UseVisualStyleBackColor = true;
            this.BtnReceiveOnce.Click += new System.EventHandler(this.BtnReceiveOnce_Click);
            // 
            // BtnReceiveBulk
            // 
            this.BtnReceiveBulk.Location = new System.Drawing.Point(203, 164);
            this.BtnReceiveBulk.Margin = new System.Windows.Forms.Padding(4, 3, 4, 3);
            this.BtnReceiveBulk.Name = "BtnReceiveBulk";
            this.BtnReceiveBulk.Size = new System.Drawing.Size(182, 27);
            this.BtnReceiveBulk.TabIndex = 1;
            this.BtnReceiveBulk.Text = "Receive Bulk";
            this.BtnReceiveBulk.UseVisualStyleBackColor = true;
            this.BtnReceiveBulk.Click += new System.EventHandler(this.BtnReceiveBulk_Click);
            // 
            // BtnReceiveBulk2
            // 
            this.BtnReceiveBulk2.Location = new System.Drawing.Point(392, 164);
            this.BtnReceiveBulk2.Margin = new System.Windows.Forms.Padding(4, 3, 4, 3);
            this.BtnReceiveBulk2.Name = "BtnReceiveBulk2";
            this.BtnReceiveBulk2.Size = new System.Drawing.Size(182, 27);
            this.BtnReceiveBulk2.TabIndex = 2;
            this.BtnReceiveBulk2.Text = "Receive Bulk 2";
            this.BtnReceiveBulk2.UseVisualStyleBackColor = true;
            this.BtnReceiveBulk2.Click += new System.EventHandler(this.BtnReceiveBulk2_Click);
            // 
            // BtnReceiveInterrupt
            // 
            this.BtnReceiveInterrupt.Location = new System.Drawing.Point(14, 14);
            this.BtnReceiveInterrupt.Margin = new System.Windows.Forms.Padding(4, 3, 4, 3);
            this.BtnReceiveInterrupt.Name = "BtnReceiveInterrupt";
            this.BtnReceiveInterrupt.Size = new System.Drawing.Size(182, 27);
            this.BtnReceiveInterrupt.TabIndex = 3;
            this.BtnReceiveInterrupt.Text = "Receive Interrupt Status";
            this.BtnReceiveInterrupt.UseVisualStyleBackColor = true;
            this.BtnReceiveInterrupt.Click += new System.EventHandler(this.BtnReceiveInterrupt_Click);
            // 
            // BtnSendInterrupt
            // 
            this.BtnSendInterrupt.Location = new System.Drawing.Point(14, 358);
            this.BtnSendInterrupt.Margin = new System.Windows.Forms.Padding(4, 3, 4, 3);
            this.BtnSendInterrupt.Name = "BtnSendInterrupt";
            this.BtnSendInterrupt.Size = new System.Drawing.Size(182, 27);
            this.BtnSendInterrupt.TabIndex = 4;
            this.BtnSendInterrupt.Text = "Send Interrupt";
            this.BtnSendInterrupt.UseVisualStyleBackColor = true;
            this.BtnSendInterrupt.Click += new System.EventHandler(this.BtnSendInterrupt_Click);
            // 
            // BtnSendBulk
            // 
            this.BtnSendBulk.Location = new System.Drawing.Point(203, 288);
            this.BtnSendBulk.Margin = new System.Windows.Forms.Padding(4, 3, 4, 3);
            this.BtnSendBulk.Name = "BtnSendBulk";
            this.BtnSendBulk.Size = new System.Drawing.Size(182, 27);
            this.BtnSendBulk.TabIndex = 5;
            this.BtnSendBulk.Text = "Send Bulk";
            this.BtnSendBulk.UseVisualStyleBackColor = true;
            this.BtnSendBulk.Click += new System.EventHandler(this.BtnSendBulk_Click);
            // 
            // BtnSetSingleRead
            // 
            this.BtnSetSingleRead.Location = new System.Drawing.Point(14, 65);
            this.BtnSetSingleRead.Margin = new System.Windows.Forms.Padding(4, 3, 4, 3);
            this.BtnSetSingleRead.Name = "BtnSetSingleRead";
            this.BtnSetSingleRead.Size = new System.Drawing.Size(182, 27);
            this.BtnSetSingleRead.TabIndex = 6;
            this.BtnSetSingleRead.Text = "Set Single Read";
            this.BtnSetSingleRead.UseVisualStyleBackColor = true;
            this.BtnSetSingleRead.Click += new System.EventHandler(this.BtnSetSingleRead_Click);
            // 
            // BtnSetLoopRead
            // 
            this.BtnSetLoopRead.Location = new System.Drawing.Point(203, 65);
            this.BtnSetLoopRead.Margin = new System.Windows.Forms.Padding(4, 3, 4, 3);
            this.BtnSetLoopRead.Name = "BtnSetLoopRead";
            this.BtnSetLoopRead.Size = new System.Drawing.Size(182, 27);
            this.BtnSetLoopRead.TabIndex = 7;
            this.BtnSetLoopRead.Text = "Set Loop Read";
            this.BtnSetLoopRead.UseVisualStyleBackColor = true;
            this.BtnSetLoopRead.Click += new System.EventHandler(this.BtnSetLoopRead_Click);
            // 
            // BtnSetReadBaseAddress
            // 
            this.BtnSetReadBaseAddress.Location = new System.Drawing.Point(392, 65);
            this.BtnSetReadBaseAddress.Margin = new System.Windows.Forms.Padding(4, 3, 4, 3);
            this.BtnSetReadBaseAddress.Name = "BtnSetReadBaseAddress";
            this.BtnSetReadBaseAddress.Size = new System.Drawing.Size(182, 27);
            this.BtnSetReadBaseAddress.TabIndex = 8;
            this.BtnSetReadBaseAddress.Text = "Set Read Base Address";
            this.BtnSetReadBaseAddress.UseVisualStyleBackColor = true;
            this.BtnSetReadBaseAddress.Click += new System.EventHandler(this.BtnSetReadBaseAddress_Click);
            // 
            // BtnSetStartRead
            // 
            this.BtnSetStartRead.Location = new System.Drawing.Point(14, 131);
            this.BtnSetStartRead.Margin = new System.Windows.Forms.Padding(4, 3, 4, 3);
            this.BtnSetStartRead.Name = "BtnSetStartRead";
            this.BtnSetStartRead.Size = new System.Drawing.Size(182, 27);
            this.BtnSetStartRead.TabIndex = 9;
            this.BtnSetStartRead.Text = "Start Read";
            this.BtnSetStartRead.UseVisualStyleBackColor = true;
            this.BtnSetStartRead.Click += new System.EventHandler(this.BtnSetStartRead_Click);
            // 
            // BtnStopRead
            // 
            this.BtnStopRead.Location = new System.Drawing.Point(203, 131);
            this.BtnStopRead.Margin = new System.Windows.Forms.Padding(4, 3, 4, 3);
            this.BtnStopRead.Name = "BtnStopRead";
            this.BtnStopRead.Size = new System.Drawing.Size(182, 27);
            this.BtnStopRead.TabIndex = 10;
            this.BtnStopRead.Text = "Stop Read";
            this.BtnStopRead.UseVisualStyleBackColor = true;
            this.BtnStopRead.Click += new System.EventHandler(this.BtnStopRead_Click);
            // 
            // BtnReceiveForever
            // 
            this.BtnReceiveForever.Location = new System.Drawing.Point(581, 164);
            this.BtnReceiveForever.Margin = new System.Windows.Forms.Padding(4, 3, 4, 3);
            this.BtnReceiveForever.Name = "BtnReceiveForever";
            this.BtnReceiveForever.Size = new System.Drawing.Size(182, 27);
            this.BtnReceiveForever.TabIndex = 11;
            this.BtnReceiveForever.Text = "Receive Forever";
            this.BtnReceiveForever.UseVisualStyleBackColor = true;
            this.BtnReceiveForever.Click += new System.EventHandler(this.BtnReceiveForever_Click);
            // 
            // BtnStopWrite
            // 
            this.BtnStopWrite.Location = new System.Drawing.Point(203, 255);
            this.BtnStopWrite.Margin = new System.Windows.Forms.Padding(4, 3, 4, 3);
            this.BtnStopWrite.Name = "BtnStopWrite";
            this.BtnStopWrite.Size = new System.Drawing.Size(182, 27);
            this.BtnStopWrite.TabIndex = 16;
            this.BtnStopWrite.Text = "Stop Write";
            this.BtnStopWrite.UseVisualStyleBackColor = true;
            this.BtnStopWrite.Click += new System.EventHandler(this.BtnStopWrite_Click);
            // 
            // BtnStartWrite
            // 
            this.BtnStartWrite.Location = new System.Drawing.Point(14, 255);
            this.BtnStartWrite.Margin = new System.Windows.Forms.Padding(4, 3, 4, 3);
            this.BtnStartWrite.Name = "BtnStartWrite";
            this.BtnStartWrite.Size = new System.Drawing.Size(182, 27);
            this.BtnStartWrite.TabIndex = 15;
            this.BtnStartWrite.Text = "Start Write";
            this.BtnStartWrite.UseVisualStyleBackColor = true;
            this.BtnStartWrite.Click += new System.EventHandler(this.BtnStartWrite_Click);
            // 
            // BtnSetWriteBaseAddress
            // 
            this.BtnSetWriteBaseAddress.Location = new System.Drawing.Point(392, 222);
            this.BtnSetWriteBaseAddress.Margin = new System.Windows.Forms.Padding(4, 3, 4, 3);
            this.BtnSetWriteBaseAddress.Name = "BtnSetWriteBaseAddress";
            this.BtnSetWriteBaseAddress.Size = new System.Drawing.Size(182, 27);
            this.BtnSetWriteBaseAddress.TabIndex = 14;
            this.BtnSetWriteBaseAddress.Text = "Set Write Base Address";
            this.BtnSetWriteBaseAddress.UseVisualStyleBackColor = true;
            this.BtnSetWriteBaseAddress.Click += new System.EventHandler(this.BtnSetWriteBaseAddress_Click);
            // 
            // BtnSetLoopWrite
            // 
            this.BtnSetLoopWrite.Location = new System.Drawing.Point(203, 222);
            this.BtnSetLoopWrite.Margin = new System.Windows.Forms.Padding(4, 3, 4, 3);
            this.BtnSetLoopWrite.Name = "BtnSetLoopWrite";
            this.BtnSetLoopWrite.Size = new System.Drawing.Size(182, 27);
            this.BtnSetLoopWrite.TabIndex = 13;
            this.BtnSetLoopWrite.Text = "Set Loop Write";
            this.BtnSetLoopWrite.UseVisualStyleBackColor = true;
            this.BtnSetLoopWrite.Click += new System.EventHandler(this.BtnSetLoopWrite_Click);
            // 
            // BtnSetSingleWrite
            // 
            this.BtnSetSingleWrite.Location = new System.Drawing.Point(14, 222);
            this.BtnSetSingleWrite.Margin = new System.Windows.Forms.Padding(4, 3, 4, 3);
            this.BtnSetSingleWrite.Name = "BtnSetSingleWrite";
            this.BtnSetSingleWrite.Size = new System.Drawing.Size(182, 27);
            this.BtnSetSingleWrite.TabIndex = 12;
            this.BtnSetSingleWrite.Text = "Set Single Write";
            this.BtnSetSingleWrite.UseVisualStyleBackColor = true;
            this.BtnSetSingleWrite.Click += new System.EventHandler(this.BtnSetSingleWrite_Click);
            // 
            // BtnSendOnce
            // 
            this.BtnSendOnce.Location = new System.Drawing.Point(14, 288);
            this.BtnSendOnce.Margin = new System.Windows.Forms.Padding(4, 3, 4, 3);
            this.BtnSendOnce.Name = "BtnSendOnce";
            this.BtnSendOnce.Size = new System.Drawing.Size(182, 27);
            this.BtnSendOnce.TabIndex = 17;
            this.BtnSendOnce.Text = "Send Once";
            this.BtnSendOnce.UseVisualStyleBackColor = true;
            this.BtnSendOnce.Click += new System.EventHandler(this.BtnSendOnce_Click);
            // 
            // BtnCheck
            // 
            this.BtnCheck.Location = new System.Drawing.Point(204, 358);
            this.BtnCheck.Margin = new System.Windows.Forms.Padding(4, 3, 4, 3);
            this.BtnCheck.Name = "BtnCheck";
            this.BtnCheck.Size = new System.Drawing.Size(182, 27);
            this.BtnCheck.TabIndex = 18;
            this.BtnCheck.Text = "Check";
            this.BtnCheck.UseVisualStyleBackColor = true;
            this.BtnCheck.Click += new System.EventHandler(this.BtnCheck_Click);
            // 
            // BtnSetReadLength
            // 
            this.BtnSetReadLength.Location = new System.Drawing.Point(582, 65);
            this.BtnSetReadLength.Margin = new System.Windows.Forms.Padding(4, 3, 4, 3);
            this.BtnSetReadLength.Name = "BtnSetReadLength";
            this.BtnSetReadLength.Size = new System.Drawing.Size(182, 27);
            this.BtnSetReadLength.TabIndex = 19;
            this.BtnSetReadLength.Text = "Set Read Buffer Size (Byte)";
            this.BtnSetReadLength.UseVisualStyleBackColor = true;
            this.BtnSetReadLength.Click += new System.EventHandler(this.BtnSetReadLength_Click);
            // 
            // BtnStartDMA
            // 
            this.BtnStartDMA.Location = new System.Drawing.Point(13, 98);
            this.BtnStartDMA.Margin = new System.Windows.Forms.Padding(4, 3, 4, 3);
            this.BtnStartDMA.Name = "BtnStartDMA";
            this.BtnStartDMA.Size = new System.Drawing.Size(182, 27);
            this.BtnStartDMA.TabIndex = 20;
            this.BtnStartDMA.Text = "Start DMA";
            this.BtnStartDMA.UseVisualStyleBackColor = true;
            this.BtnStartDMA.Click += new System.EventHandler(this.BtnStartDMA_Click);
            // 
            // BtnGetDMAStatus
            // 
            this.BtnGetDMAStatus.Location = new System.Drawing.Point(393, 98);
            this.BtnGetDMAStatus.Margin = new System.Windows.Forms.Padding(4, 3, 4, 3);
            this.BtnGetDMAStatus.Name = "BtnGetDMAStatus";
            this.BtnGetDMAStatus.Size = new System.Drawing.Size(182, 27);
            this.BtnGetDMAStatus.TabIndex = 22;
            this.BtnGetDMAStatus.Text = "Get DMA Status";
            this.BtnGetDMAStatus.UseVisualStyleBackColor = true;
            this.BtnGetDMAStatus.Click += new System.EventHandler(this.BtnGetDMAStatus_Click);
            // 
            // BtnStopDMA
            // 
            this.BtnStopDMA.Location = new System.Drawing.Point(204, 98);
            this.BtnStopDMA.Margin = new System.Windows.Forms.Padding(4, 3, 4, 3);
            this.BtnStopDMA.Name = "BtnStopDMA";
            this.BtnStopDMA.Size = new System.Drawing.Size(182, 27);
            this.BtnStopDMA.TabIndex = 21;
            this.BtnStopDMA.Text = "Stop DMA";
            this.BtnStopDMA.UseVisualStyleBackColor = true;
            this.BtnStopDMA.Click += new System.EventHandler(this.BtnStopDMA_Click);
            // 
            // BtnReadDMATrigger
            // 
            this.BtnReadDMATrigger.Location = new System.Drawing.Point(582, 98);
            this.BtnReadDMATrigger.Margin = new System.Windows.Forms.Padding(4, 3, 4, 3);
            this.BtnReadDMATrigger.Name = "BtnReadDMATrigger";
            this.BtnReadDMATrigger.Size = new System.Drawing.Size(182, 27);
            this.BtnReadDMATrigger.TabIndex = 23;
            this.BtnReadDMATrigger.Text = "Read DMA Trigger";
            this.BtnReadDMATrigger.UseVisualStyleBackColor = true;
            this.BtnReadDMATrigger.Click += new System.EventHandler(this.BtnReadDMATrigger_Click);
            // 
            // BtnSetReadUSBPacketSize
            // 
            this.BtnSetReadUSBPacketSize.Location = new System.Drawing.Point(772, 65);
            this.BtnSetReadUSBPacketSize.Margin = new System.Windows.Forms.Padding(4, 3, 4, 3);
            this.BtnSetReadUSBPacketSize.Name = "BtnSetReadUSBPacketSize";
            this.BtnSetReadUSBPacketSize.Size = new System.Drawing.Size(182, 27);
            this.BtnSetReadUSBPacketSize.TabIndex = 24;
            this.BtnSetReadUSBPacketSize.Text = "Set Read USB Packet Size (Byte)";
            this.BtnSetReadUSBPacketSize.UseVisualStyleBackColor = true;
            this.BtnSetReadUSBPacketSize.Click += new System.EventHandler(this.BtnSetReadUSBPacketSize_Click);
            // 
            // BtnReadBufferOccupation
            // 
            this.BtnReadBufferOccupation.Location = new System.Drawing.Point(392, 131);
            this.BtnReadBufferOccupation.Margin = new System.Windows.Forms.Padding(4, 3, 4, 3);
            this.BtnReadBufferOccupation.Name = "BtnReadBufferOccupation";
            this.BtnReadBufferOccupation.Size = new System.Drawing.Size(182, 27);
            this.BtnReadBufferOccupation.TabIndex = 25;
            this.BtnReadBufferOccupation.Text = "Read Buffer Occupation";
            this.BtnReadBufferOccupation.UseVisualStyleBackColor = true;
            this.BtnReadBufferOccupation.Click += new System.EventHandler(this.BtnReadBufferOccupation_Click);
            // 
            // BtnCapture
            // 
            this.BtnCapture.Location = new System.Drawing.Point(13, 411);
            this.BtnCapture.Margin = new System.Windows.Forms.Padding(4, 3, 4, 3);
            this.BtnCapture.Name = "BtnCapture";
            this.BtnCapture.Size = new System.Drawing.Size(182, 27);
            this.BtnCapture.TabIndex = 26;
            this.BtnCapture.Text = "Capture";
            this.BtnCapture.UseVisualStyleBackColor = true;
            this.BtnCapture.Click += new System.EventHandler(this.BtnCapture_Click);
            // 
            // BtnSingleCapture
            // 
            this.BtnSingleCapture.Location = new System.Drawing.Point(204, 411);
            this.BtnSingleCapture.Margin = new System.Windows.Forms.Padding(4, 3, 4, 3);
            this.BtnSingleCapture.Name = "BtnSingleCapture";
            this.BtnSingleCapture.Size = new System.Drawing.Size(182, 27);
            this.BtnSingleCapture.TabIndex = 27;
            this.BtnSingleCapture.Text = "Single Capture";
            this.BtnSingleCapture.UseVisualStyleBackColor = true;
            this.BtnSingleCapture.Click += new System.EventHandler(this.BtnSingleCapture_Click);
            // 
            // MainForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 15F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1060, 519);
            this.Controls.Add(this.BtnSingleCapture);
            this.Controls.Add(this.BtnCapture);
            this.Controls.Add(this.BtnReadBufferOccupation);
            this.Controls.Add(this.BtnSetReadUSBPacketSize);
            this.Controls.Add(this.BtnReadDMATrigger);
            this.Controls.Add(this.BtnGetDMAStatus);
            this.Controls.Add(this.BtnStopDMA);
            this.Controls.Add(this.BtnStartDMA);
            this.Controls.Add(this.BtnSetReadLength);
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
            this.Margin = new System.Windows.Forms.Padding(4, 3, 4, 3);
            this.Name = "MainForm";
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
        private System.Windows.Forms.Button BtnSetReadLength;
        private System.Windows.Forms.Button BtnStartDMA;
        private System.Windows.Forms.Button BtnGetDMAStatus;
        private System.Windows.Forms.Button BtnStopDMA;
        private System.Windows.Forms.Button BtnReadDMATrigger;
        private System.Windows.Forms.Button BtnSetReadUSBPacketSize;
        private System.Windows.Forms.Button BtnReadBufferOccupation;
        private System.Windows.Forms.Button BtnCapture;
        private System.Windows.Forms.Button BtnSingleCapture;
    }
}

