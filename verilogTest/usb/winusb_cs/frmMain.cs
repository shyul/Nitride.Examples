using System;
using System.Diagnostics;
using System.Windows.Forms;
using Microsoft.Win32.SafeHandles;
using System.Management;
using System.Text;

namespace WinUsbDemo
{
	/// <summary>
	/// Project: WinUsb_cs
	/// 
	/// ***********************************************************************
	/// Software License Agreement
	///
	/// Licensor grants any person obtaining a copy of this software ("You") 
	/// a worldwide, royalty-free, non-exclusive license, for the duration of 
	/// the copyright, free of charge, to store and execute the Software in a 
	/// computer system and to incorporate the Software or any portion of it 
	/// in computer programs You write.   
	/// 
	/// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
	/// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
	/// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
	/// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
	/// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
	/// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
	/// THE SOFTWARE.
	/// ***********************************************************************
	/// 
	/// Author
	/// Jan Axelson          
	/// 
	/// This software was created using Visual Studio 2012 Professional Edition with .NET Framework 4.0.
	/// 
	/// Purpose: 
	/// Demonstrates USB communications using Microsoft's WinUSB driver.
	/// 
	/// Requirements:
	/// Windows 8.1 or later and an attached USB device that uses the WinUSB driver.
	/// 
	/// Description:
	/// Finds an attached device whose device firmware or host INF file contains a specific device interface GUID.
	/// Enables sending and receiving data via bulk, interrupt, control, and isochronous transfers.
	/// 
	/// Uses WMI to detect when a device is attached or removed.
	/// 
	/// For bulk transfers, the application uses a Delegate and the BeginInvoke 
	/// and EndInvoke methods to read and write data asynchronously so the application's main thread 
	/// doesn't have to wait for the device to return data. A callback routine uses 
	/// marshaling to send data to the form, whose code runs in a different thread.
	/// 
	/// Interrupt and control transfers read and write data synchronously, blocking the thread
	/// until the operation completes or a timeout. (Normally, the wait for completion is minimal.)
	/// 
	/// Isochronous transfers require Windows 8.1 or later.
	///  
	/// This software and companion device firmware are available from janaxelson.com
	/// 
	/// Report any problems to jan@janaxelson.com or post to my Ports forum at janaxelson.com/forum 
	/// This application has been tested under Windows 8 (64 bit).
	/// 
	/// 1/11/16
	/// V3.1
	/// Removed lock statements (unneeded).
	/// Other minor fixes.
	/// 
	/// 2/17/15
	/// V3.0
	/// Adds support for isochronous transfers - REQUIRES Windows 8.1 or later.
	/// Selects an alternate interface for isochronous transfers (because the default interface should use no isochronous bandwidth).
	/// To enable detecting Windows 8.1, in app.manifest, in the <application> section, added this line:
	/// <supportedOS Id="{1f676c76-80e1-4239-95bb-83d0f6d0da78}"/>
	/// 
	/// 5/9/14
	/// V2.2
	/// Added lock statements. 
	/// Changed _winUsbHandle from an IntPtr to a SafeWinUsbHandle.
	/// Minor improvements to error handling.
	/// 
	/// 10/15/13
	/// V2.1
	/// For detecting device arrival and removal, replaced the Win32 RegisterDeviceNotification code with .NET WMI functions.
	/// Added try...catch blocks.
	/// Other minor edits for clarity.
	/// 
	/// 5/3/13
	///	V2.0
	///	To illustrate asynchronous operations, bulk read and write are asynchronous.
	///	
	///	To illustrate synchronous operations, interrupt read and write and control transfers are synchronous. 
	///	
	/// For compatibility, replaced ToInt32 with ToInt64 here:
	/// IntPtr pDevicePathName = new IntPtr(detailDataBuffer.ToInt64() + 4);
	/// and here:
	/// if ((deviceNotificationHandle.ToInt64() == IntPtr.Zero.ToInt64()))
	/// 
	/// Uncommented QueryDeviceSpeed because Microsoft corrected the documentation for it.
	/// 
	/// Renamed some routines and variables.
	/// 
	/// Moved myDevInfo and other variables from WinUsbDevice.cs to frmMain.cs. 
	/// 
	/// For compatibility if the charset isn't English, added System.Globalization.CultureInfo.InvariantCulture here:
	/// if ((String.Compare(DeviceNameString, mydevicePathName, true, System.Globalization.CultureInfo.InvariantCulture) == 0))
	/// 
	/// Moved API declarations to classes named NativeMethods as recommended by Microsoft.
	/// 
	/// Minor changes to API declarations as advised by Visual Studio's Code Analysis.
	/// 
	/// Naming changes and other minor coding improvements as recommended by the Resharper tool.
	/// </summary>

	/// <summary>
	/// The application's form. Buttons enable detecting a device
	/// and initiating transfers.
	/// </summary>
	/// 
	internal class FrmMain : Form
	{
		#region '"Windows Form Designer generated code "'
		public FrmMain()
			: base()
		{
			// This call is required by the Windows Form Designer.
			InitializeComponent();
		}
		// Form overrides dispose to clean up the component list.
		protected override void Dispose(Boolean Disposing)
		{
			if (Disposing)
			{
				if (components != null)
				{
					components.Dispose();
				}
			}
			base.Dispose(Disposing);
		}

		// Required by the Windows Form Designer
		private System.ComponentModel.IContainer components;
		public System.Windows.Forms.ToolTip ToolTip1;
		public System.Windows.Forms.Button CmdSendandReceiveViaBulkTransfers;
		public System.Windows.Forms.GroupBox FraControlReadTransfer;
		public System.Windows.Forms.TextBox TxtBulkDataToSend;
		public System.Windows.Forms.GroupBox FraBulkTransfer;
		public System.Windows.Forms.ComboBox CboInterruptOutByte1;
		public System.Windows.Forms.ComboBox CboInterruptOutByte0;
		public System.Windows.Forms.GroupBox FraInterruptTransfer;
		public System.Windows.Forms.ListBox LstResults;
		// NOTE: The following procedure is required by the Windows Form Designer
		// It can be modified using the Windows Form Designer.
		// Do not modify it using the code editor.
		internal System.Windows.Forms.Button CmdFindDevice;
		internal System.Windows.Forms.Button CmdSendAndReceiveViaInterruptTransfers;
		public System.Windows.Forms.GroupBox FraControWriteTransfer;
		internal System.Windows.Forms.Button CmdControlWriteTransfer;
		public System.Windows.Forms.ComboBox CboControlWriteByte1;
		public System.Windows.Forms.ComboBox CboControlWriteByte0;
		private Button cmdIsochronousTransfer;
		public GroupBox FraIsochronousTransfers;
		public ComboBox CboIsochronousFirstByteToSend;
		private Label lblIsochronousInfo;
        private Button BtnReceive;
        internal System.Windows.Forms.Button CmdControlReadTransfer;

		[System.Diagnostics.DebuggerStepThrough()]
		private void InitializeComponent()
		{
            this.components = new System.ComponentModel.Container();
            this.ToolTip1 = new System.Windows.Forms.ToolTip(this.components);
            this.FraControlReadTransfer = new System.Windows.Forms.GroupBox();
            this.CmdControlReadTransfer = new System.Windows.Forms.Button();
            this.CmdSendandReceiveViaBulkTransfers = new System.Windows.Forms.Button();
            this.FraBulkTransfer = new System.Windows.Forms.GroupBox();
            this.TxtBulkDataToSend = new System.Windows.Forms.TextBox();
            this.FraInterruptTransfer = new System.Windows.Forms.GroupBox();
            this.CmdSendAndReceiveViaInterruptTransfers = new System.Windows.Forms.Button();
            this.CboInterruptOutByte0 = new System.Windows.Forms.ComboBox();
            this.CboInterruptOutByte1 = new System.Windows.Forms.ComboBox();
            this.LstResults = new System.Windows.Forms.ListBox();
            this.CmdFindDevice = new System.Windows.Forms.Button();
            this.FraControWriteTransfer = new System.Windows.Forms.GroupBox();
            this.CboControlWriteByte1 = new System.Windows.Forms.ComboBox();
            this.CboControlWriteByte0 = new System.Windows.Forms.ComboBox();
            this.CmdControlWriteTransfer = new System.Windows.Forms.Button();
            this.cmdIsochronousTransfer = new System.Windows.Forms.Button();
            this.FraIsochronousTransfers = new System.Windows.Forms.GroupBox();
            this.lblIsochronousInfo = new System.Windows.Forms.Label();
            this.CboIsochronousFirstByteToSend = new System.Windows.Forms.ComboBox();
            this.BtnReceive = new System.Windows.Forms.Button();
            this.FraControlReadTransfer.SuspendLayout();
            this.FraBulkTransfer.SuspendLayout();
            this.FraInterruptTransfer.SuspendLayout();
            this.FraControWriteTransfer.SuspendLayout();
            this.FraIsochronousTransfers.SuspendLayout();
            this.SuspendLayout();
            // 
            // FraControlReadTransfer
            // 
            this.FraControlReadTransfer.BackColor = System.Drawing.SystemColors.Control;
            this.FraControlReadTransfer.Controls.Add(this.CmdControlReadTransfer);
            this.FraControlReadTransfer.Font = new System.Drawing.Font("Arial", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.FraControlReadTransfer.ForeColor = System.Drawing.SystemColors.ControlText;
            this.FraControlReadTransfer.Location = new System.Drawing.Point(237, 27);
            this.FraControlReadTransfer.Name = "FraControlReadTransfer";
            this.FraControlReadTransfer.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this.FraControlReadTransfer.Size = new System.Drawing.Size(175, 94);
            this.FraControlReadTransfer.TabIndex = 7;
            this.FraControlReadTransfer.TabStop = false;
            this.FraControlReadTransfer.Text = "Control Read Transfer";
            // 
            // CmdControlReadTransfer
            // 
            this.CmdControlReadTransfer.Font = new System.Drawing.Font("Arial", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.CmdControlReadTransfer.Location = new System.Drawing.Point(49, 28);
            this.CmdControlReadTransfer.Name = "CmdControlReadTransfer";
            this.CmdControlReadTransfer.Size = new System.Drawing.Size(71, 36);
            this.CmdControlReadTransfer.TabIndex = 12;
            this.CmdControlReadTransfer.Text = "Send";
            this.CmdControlReadTransfer.UseVisualStyleBackColor = true;
            this.CmdControlReadTransfer.Click += new System.EventHandler(this.cmdControlReadTransfer_Click);
            // 
            // CmdSendandReceiveViaBulkTransfers
            // 
            this.CmdSendandReceiveViaBulkTransfers.BackColor = System.Drawing.SystemColors.Control;
            this.CmdSendandReceiveViaBulkTransfers.Cursor = System.Windows.Forms.Cursors.Default;
            this.CmdSendandReceiveViaBulkTransfers.Font = new System.Drawing.Font("Arial", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.CmdSendandReceiveViaBulkTransfers.ForeColor = System.Drawing.SystemColors.ControlText;
            this.CmdSendandReceiveViaBulkTransfers.Location = new System.Drawing.Point(256, 24);
            this.CmdSendandReceiveViaBulkTransfers.Name = "CmdSendandReceiveViaBulkTransfers";
            this.CmdSendandReceiveViaBulkTransfers.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this.CmdSendandReceiveViaBulkTransfers.Size = new System.Drawing.Size(71, 36);
            this.CmdSendandReceiveViaBulkTransfers.TabIndex = 8;
            this.CmdSendandReceiveViaBulkTransfers.Text = "Send";
            this.CmdSendandReceiveViaBulkTransfers.UseVisualStyleBackColor = false;
            this.CmdSendandReceiveViaBulkTransfers.Click += new System.EventHandler(this.cmdSendAndReceiveViaBulkTransfers_Click);
            // 
            // FraBulkTransfer
            // 
            this.FraBulkTransfer.BackColor = System.Drawing.SystemColors.Control;
            this.FraBulkTransfer.Controls.Add(this.TxtBulkDataToSend);
            this.FraBulkTransfer.Controls.Add(this.CmdSendandReceiveViaBulkTransfers);
            this.FraBulkTransfer.Font = new System.Drawing.Font("Arial", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.FraBulkTransfer.ForeColor = System.Drawing.SystemColors.ControlText;
            this.FraBulkTransfer.Location = new System.Drawing.Point(16, 139);
            this.FraBulkTransfer.Name = "FraBulkTransfer";
            this.FraBulkTransfer.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this.FraBulkTransfer.Size = new System.Drawing.Size(341, 89);
            this.FraBulkTransfer.TabIndex = 4;
            this.FraBulkTransfer.TabStop = false;
            this.FraBulkTransfer.Text = "Bulk Transfers";
            // 
            // TxtBulkDataToSend
            // 
            this.TxtBulkDataToSend.AcceptsReturn = true;
            this.TxtBulkDataToSend.BackColor = System.Drawing.SystemColors.Window;
            this.TxtBulkDataToSend.Cursor = System.Windows.Forms.Cursors.IBeam;
            this.TxtBulkDataToSend.Font = new System.Drawing.Font("Arial", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.TxtBulkDataToSend.ForeColor = System.Drawing.SystemColors.WindowText;
            this.TxtBulkDataToSend.Location = new System.Drawing.Point(16, 19);
            this.TxtBulkDataToSend.MaxLength = 0;
            this.TxtBulkDataToSend.Multiline = true;
            this.TxtBulkDataToSend.Name = "TxtBulkDataToSend";
            this.TxtBulkDataToSend.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this.TxtBulkDataToSend.ScrollBars = System.Windows.Forms.ScrollBars.Both;
            this.TxtBulkDataToSend.Size = new System.Drawing.Size(224, 59);
            this.TxtBulkDataToSend.TabIndex = 5;
            this.TxtBulkDataToSend.Text = "bulk transfer test data";
            // 
            // FraInterruptTransfer
            // 
            this.FraInterruptTransfer.BackColor = System.Drawing.SystemColors.Control;
            this.FraInterruptTransfer.Controls.Add(this.CmdSendAndReceiveViaInterruptTransfers);
            this.FraInterruptTransfer.Controls.Add(this.CboInterruptOutByte0);
            this.FraInterruptTransfer.Controls.Add(this.CboInterruptOutByte1);
            this.FraInterruptTransfer.Font = new System.Drawing.Font("Arial", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.FraInterruptTransfer.ForeColor = System.Drawing.SystemColors.ControlText;
            this.FraInterruptTransfer.Location = new System.Drawing.Point(379, 139);
            this.FraInterruptTransfer.Name = "FraInterruptTransfer";
            this.FraInterruptTransfer.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this.FraInterruptTransfer.Size = new System.Drawing.Size(180, 89);
            this.FraInterruptTransfer.TabIndex = 1;
            this.FraInterruptTransfer.TabStop = false;
            this.FraInterruptTransfer.Text = "Interrupt Transfers";
            // 
            // CmdSendAndReceiveViaInterruptTransfers
            // 
            this.CmdSendAndReceiveViaInterruptTransfers.Font = new System.Drawing.Font("Arial", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.CmdSendAndReceiveViaInterruptTransfers.Location = new System.Drawing.Point(98, 24);
            this.CmdSendAndReceiveViaInterruptTransfers.Name = "CmdSendAndReceiveViaInterruptTransfers";
            this.CmdSendAndReceiveViaInterruptTransfers.Size = new System.Drawing.Size(71, 36);
            this.CmdSendAndReceiveViaInterruptTransfers.TabIndex = 7;
            this.CmdSendAndReceiveViaInterruptTransfers.Text = "Send";
            this.CmdSendAndReceiveViaInterruptTransfers.UseVisualStyleBackColor = true;
            this.CmdSendAndReceiveViaInterruptTransfers.Click += new System.EventHandler(this.cmdSendAndReceiveViaInterruptTransfers_Click);
            // 
            // CboInterruptOutByte0
            // 
            this.CboInterruptOutByte0.BackColor = System.Drawing.SystemColors.Window;
            this.CboInterruptOutByte0.Cursor = System.Windows.Forms.Cursors.Default;
            this.CboInterruptOutByte0.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.CboInterruptOutByte0.Font = new System.Drawing.Font("Arial", 8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.CboInterruptOutByte0.ForeColor = System.Drawing.SystemColors.WindowText;
            this.CboInterruptOutByte0.Location = new System.Drawing.Point(6, 23);
            this.CboInterruptOutByte0.Name = "CboInterruptOutByte0";
            this.CboInterruptOutByte0.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this.CboInterruptOutByte0.Size = new System.Drawing.Size(72, 22);
            this.CboInterruptOutByte0.TabIndex = 2;
            this.CboInterruptOutByte0.SelectedIndexChanged += new System.EventHandler(this.CboInterruptOutByte0_SelectedIndexChanged);
            // 
            // CboInterruptOutByte1
            // 
            this.CboInterruptOutByte1.BackColor = System.Drawing.SystemColors.Window;
            this.CboInterruptOutByte1.Cursor = System.Windows.Forms.Cursors.Default;
            this.CboInterruptOutByte1.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.CboInterruptOutByte1.Font = new System.Drawing.Font("Arial", 8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.CboInterruptOutByte1.ForeColor = System.Drawing.SystemColors.WindowText;
            this.CboInterruptOutByte1.Location = new System.Drawing.Point(8, 56);
            this.CboInterruptOutByte1.Name = "CboInterruptOutByte1";
            this.CboInterruptOutByte1.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this.CboInterruptOutByte1.Size = new System.Drawing.Size(74, 22);
            this.CboInterruptOutByte1.TabIndex = 3;
            // 
            // LstResults
            // 
            this.LstResults.BackColor = System.Drawing.SystemColors.Window;
            this.LstResults.Cursor = System.Windows.Forms.Cursors.Default;
            this.LstResults.Font = new System.Drawing.Font("Arial", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.LstResults.ForeColor = System.Drawing.SystemColors.WindowText;
            this.LstResults.HorizontalScrollbar = true;
            this.LstResults.ItemHeight = 16;
            this.LstResults.Location = new System.Drawing.Point(16, 371);
            this.LstResults.Name = "LstResults";
            this.LstResults.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this.LstResults.Size = new System.Drawing.Size(543, 228);
            this.LstResults.TabIndex = 0;
            // 
            // CmdFindDevice
            // 
            this.CmdFindDevice.Font = new System.Drawing.Font("Arial", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.CmdFindDevice.Location = new System.Drawing.Point(446, 44);
            this.CmdFindDevice.Name = "CmdFindDevice";
            this.CmdFindDevice.Size = new System.Drawing.Size(102, 59);
            this.CmdFindDevice.TabIndex = 11;
            this.CmdFindDevice.Text = "Find My Device";
            this.CmdFindDevice.Click += new System.EventHandler(this.cmdFindDevice_Click);
            // 
            // FraControWriteTransfer
            // 
            this.FraControWriteTransfer.BackColor = System.Drawing.SystemColors.Control;
            this.FraControWriteTransfer.Controls.Add(this.CboControlWriteByte1);
            this.FraControWriteTransfer.Controls.Add(this.CboControlWriteByte0);
            this.FraControWriteTransfer.Controls.Add(this.CmdControlWriteTransfer);
            this.FraControWriteTransfer.Font = new System.Drawing.Font("Arial", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.FraControWriteTransfer.ForeColor = System.Drawing.SystemColors.ControlText;
            this.FraControWriteTransfer.Location = new System.Drawing.Point(16, 25);
            this.FraControWriteTransfer.Name = "FraControWriteTransfer";
            this.FraControWriteTransfer.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this.FraControWriteTransfer.Size = new System.Drawing.Size(193, 96);
            this.FraControWriteTransfer.TabIndex = 12;
            this.FraControWriteTransfer.TabStop = false;
            this.FraControWriteTransfer.Text = "Control Write Transfer";
            // 
            // CboControlWriteByte1
            // 
            this.CboControlWriteByte1.BackColor = System.Drawing.SystemColors.Window;
            this.CboControlWriteByte1.Cursor = System.Windows.Forms.Cursors.Default;
            this.CboControlWriteByte1.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.CboControlWriteByte1.Font = new System.Drawing.Font("Arial", 8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.CboControlWriteByte1.ForeColor = System.Drawing.SystemColors.WindowText;
            this.CboControlWriteByte1.Location = new System.Drawing.Point(16, 58);
            this.CboControlWriteByte1.Name = "CboControlWriteByte1";
            this.CboControlWriteByte1.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this.CboControlWriteByte1.Size = new System.Drawing.Size(67, 22);
            this.CboControlWriteByte1.TabIndex = 15;
            // 
            // CboControlWriteByte0
            // 
            this.CboControlWriteByte0.BackColor = System.Drawing.SystemColors.Window;
            this.CboControlWriteByte0.Cursor = System.Windows.Forms.Cursors.Default;
            this.CboControlWriteByte0.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.CboControlWriteByte0.Font = new System.Drawing.Font("Arial", 8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.CboControlWriteByte0.ForeColor = System.Drawing.SystemColors.WindowText;
            this.CboControlWriteByte0.Location = new System.Drawing.Point(16, 30);
            this.CboControlWriteByte0.Name = "CboControlWriteByte0";
            this.CboControlWriteByte0.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this.CboControlWriteByte0.Size = new System.Drawing.Size(67, 22);
            this.CboControlWriteByte0.TabIndex = 14;
            // 
            // CmdControlWriteTransfer
            // 
            this.CmdControlWriteTransfer.Font = new System.Drawing.Font("Arial", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.CmdControlWriteTransfer.Location = new System.Drawing.Point(102, 30);
            this.CmdControlWriteTransfer.Name = "CmdControlWriteTransfer";
            this.CmdControlWriteTransfer.Size = new System.Drawing.Size(71, 36);
            this.CmdControlWriteTransfer.TabIndex = 13;
            this.CmdControlWriteTransfer.Text = "Send";
            this.CmdControlWriteTransfer.UseVisualStyleBackColor = true;
            this.CmdControlWriteTransfer.Click += new System.EventHandler(this.cmdControlWriteTransfer_Click);
            // 
            // cmdIsochronousTransfer
            // 
            this.cmdIsochronousTransfer.Location = new System.Drawing.Point(176, 61);
            this.cmdIsochronousTransfer.Name = "cmdIsochronousTransfer";
            this.cmdIsochronousTransfer.Size = new System.Drawing.Size(75, 35);
            this.cmdIsochronousTransfer.TabIndex = 13;
            this.cmdIsochronousTransfer.Text = "Send";
            this.cmdIsochronousTransfer.UseVisualStyleBackColor = true;
            this.cmdIsochronousTransfer.Click += new System.EventHandler(this.cmdIsochronousTransfer_Click);
            // 
            // FraIsochronousTransfers
            // 
            this.FraIsochronousTransfers.BackColor = System.Drawing.SystemColors.Control;
            this.FraIsochronousTransfers.Controls.Add(this.lblIsochronousInfo);
            this.FraIsochronousTransfers.Controls.Add(this.CboIsochronousFirstByteToSend);
            this.FraIsochronousTransfers.Controls.Add(this.cmdIsochronousTransfer);
            this.FraIsochronousTransfers.Font = new System.Drawing.Font("Arial", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.FraIsochronousTransfers.ForeColor = System.Drawing.SystemColors.ControlText;
            this.FraIsochronousTransfers.Location = new System.Drawing.Point(16, 249);
            this.FraIsochronousTransfers.Name = "FraIsochronousTransfers";
            this.FraIsochronousTransfers.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this.FraIsochronousTransfers.Size = new System.Drawing.Size(268, 105);
            this.FraIsochronousTransfers.TabIndex = 14;
            this.FraIsochronousTransfers.TabStop = false;
            this.FraIsochronousTransfers.Text = "Isochronous Transfers";
            // 
            // lblIsochronousInfo
            // 
            this.lblIsochronousInfo.AutoSize = true;
            this.lblIsochronousInfo.Location = new System.Drawing.Point(8, 31);
            this.lblIsochronousInfo.Name = "lblIsochronousInfo";
            this.lblIsochronousInfo.Size = new System.Drawing.Size(220, 16);
            this.lblIsochronousInfo.TabIndex = 15;
            this.lblIsochronousInfo.Text = "Select first byte in sequence to send";
            this.lblIsochronousInfo.Click += new System.EventHandler(this.lblIsochronousInfo_Click);
            // 
            // CboIsochronousFirstByteToSend
            // 
            this.CboIsochronousFirstByteToSend.BackColor = System.Drawing.SystemColors.Window;
            this.CboIsochronousFirstByteToSend.Cursor = System.Windows.Forms.Cursors.Default;
            this.CboIsochronousFirstByteToSend.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.CboIsochronousFirstByteToSend.Font = new System.Drawing.Font("Arial", 8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.CboIsochronousFirstByteToSend.ForeColor = System.Drawing.SystemColors.WindowText;
            this.CboIsochronousFirstByteToSend.Location = new System.Drawing.Point(11, 61);
            this.CboIsochronousFirstByteToSend.Name = "CboIsochronousFirstByteToSend";
            this.CboIsochronousFirstByteToSend.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this.CboIsochronousFirstByteToSend.Size = new System.Drawing.Size(72, 22);
            this.CboIsochronousFirstByteToSend.TabIndex = 14;
            // 
            // BtnReceive
            // 
            this.BtnReceive.Location = new System.Drawing.Point(387, 272);
            this.BtnReceive.Name = "BtnReceive";
            this.BtnReceive.Size = new System.Drawing.Size(75, 23);
            this.BtnReceive.TabIndex = 15;
            this.BtnReceive.Text = "Receive";
            this.BtnReceive.UseVisualStyleBackColor = true;
            this.BtnReceive.Click += new System.EventHandler(this.BtnReceive_Click);
            // 
            // FrmMain
            // 
            this.ClientSize = new System.Drawing.Size(579, 622);
            this.Controls.Add(this.BtnReceive);
            this.Controls.Add(this.FraIsochronousTransfers);
            this.Controls.Add(this.FraControWriteTransfer);
            this.Controls.Add(this.CmdFindDevice);
            this.Controls.Add(this.FraControlReadTransfer);
            this.Controls.Add(this.FraBulkTransfer);
            this.Controls.Add(this.FraInterruptTransfer);
            this.Controls.Add(this.LstResults);
            this.Font = new System.Drawing.Font("Arial", 8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Location = new System.Drawing.Point(21, 28);
            this.Name = "FrmMain";
            this.StartPosition = System.Windows.Forms.FormStartPosition.Manual;
            this.Text = "WinUSB Demo";
            this.Closed += new System.EventHandler(this.frmMain_Closed);
            this.Load += new System.EventHandler(this.frmMain_Load);
            this.FraControlReadTransfer.ResumeLayout(false);
            this.FraBulkTransfer.ResumeLayout(false);
            this.FraBulkTransfer.PerformLayout();
            this.FraInterruptTransfer.ResumeLayout(false);
            this.FraControWriteTransfer.ResumeLayout(false);
            this.FraIsochronousTransfers.ResumeLayout(false);
            this.FraIsochronousTransfers.PerformLayout();
            this.ResumeLayout(false);

		}

		#endregion

		// *************************************************************************************
		// Device-specific values. Edit to match your device.

		// If using the sytem-provided winusb.inf, this GUID must match the GUID in the device's 
		// Microsoft OS 1.0 extended properties OS feature descriptor or 
		// Microsoft OS 2.0 registry property feature descriptor.
		// If using a vendor-provided INF file, this GUID must match the GUID in the INF file.
		// The GUID should be unique to your device (and other devices that communicate in the same way).
		// To create a GUID in Visual Studio, click Tools > Create GUID.

		//private const String DeviceInterfaceGuid = "{f99baaba-f033-483d-afb2-a6e4f3ae6310}";
		private const String DeviceInterfaceGuid = "{7e9a56c8-cfe1-4619-94fb-86faf3200c3c}";

		// WMI functions use these values to detect device arrival and removal and get device properties. 
		// Edit to match the values, expressed as hexadecimal numbers, in your device's device descriptor:

		//private const String VendorID = "0925";
		//private const String ProductID = "150C";
		private const String VendorID = "03FD";
		private const String ProductID = "0000";

		// *************************************************************************************

		private ManagementEventWatcher _deviceArrivedWatcher;
		private Boolean _deviceDetected;
		private SafeFileHandle _deviceHandle;
		private IntPtr _deviceNotificationHandle;
		private Boolean _deviceReady;
		private ManagementEventWatcher _deviceRemovedWatcher;
		private WinUsbCommunications.DeviceInfo _myDeviceInfo = new WinUsbCommunications.DeviceInfo();
		private readonly DeviceManagement _myDeviceManagement = new DeviceManagement();
		private readonly WinUsbCommunications _myWinUsbCommunications = new WinUsbCommunications();
		private Boolean _windows81;
		private WinUsbCommunications.SafeWinUsbHandle _winUsbHandle;

		private enum FormActions
		{
			AddItemToListBox,
			EnableCmdSendandReceiveViaBulkTransfers,
			EnableCmdSendandReceiveViaInterruptTransfers,
			ScrollToBottomOfListBox
		}

		private enum WmiDeviceProperties
		{
			Caption,
			Description,
			Manufacturer,
			Name,
			CompatibleID, // Returns System.String[]
			PNPDeviceID,
			DeviceID,
			ClassGUID,
			Availability // Always returns zero.
		}

		internal FrmMain FrmMy;

		///  <summary>
		///  Define a delegate with the same parameters as AccessForm.
		///  Used in accessing the application's form from a different thread.
		///  </summary>

		private delegate void MarshalToForm(String action, String textToAdd);

		///  <summary>
		///  Define a class of delegates with the same parameters as 
		///  WinUsbDevice.ReadViaBulkTransfer.
		///  Used for asynchronous reads from the device.
		///  </summary>

		private delegate void ReceiveFromDeviceDelegate(WinUsbCommunications.SafeWinUsbHandle winUsbHandle, WinUsbCommunications.DeviceInfo myDeviceInfo, UInt32 bytesToRead, ref Byte[] dataBuffer, ref UInt32 bytesRead, ref Boolean success);

		///  <summary>
		///  Define a class of delegates with the same parameters as 
		///  WinUsbDevice.SendViaBulkTransfer.
		///  Used for asynchronous writes to the device.
		///  </summary>		

		private delegate void SendToDeviceDelegate
			(WinUsbCommunications.SafeWinUsbHandle winUsbHandle,
			WinUsbCommunications.DeviceInfo myDevInfo,
			UInt32 bufferLength,
			Byte[] buffer,
			ref UInt32 lengthTransferred,
			ref Boolean success);

		///  <summary>
		///  Performs various application-specific functions that
		///  involve accessing the application's form.
		///  </summary>
		///  
		///  <param name="action"> A String that names the action to perform on the form. </param>
		///  <param name="formText"> Text to display on the form or an empty String. </param>
		///  
		/// <remarks>
		///  In asynchronous calls to WinUsb_ReadPipe, the callback function 
		///  uses this routine to access the application's form, which runs in 
		///  a different thread.
		/// </remarks>
		/// 
		private void AccessForm(String action, String formText)
		{
			try
			{
				//  Select an action to perform on the form:

				switch (action)
				{
					case "AddItemToListBox":

						LstResults.Items.Add(formText);
						break;

					case "EnableCmdSendandReceiveViaBulkTransfers":

						CmdSendandReceiveViaBulkTransfers.Enabled = true;
						CmdSendandReceiveViaBulkTransfers.Focus();
						break;

					case "EnableCmdSendandReceiveViaInterruptTransfers":

						CmdSendAndReceiveViaInterruptTransfers.Enabled = true;
						CmdSendAndReceiveViaInterruptTransfers.Focus();
						break;

					case "ScrollToBottomOfListBox":

						LstResults.SelectedIndex = LstResults.Items.Count - 1;
						break;
				}
			}
			catch (Exception ex)
			{
				DisplayException(Name, ex);
				throw;
			}
		}

		///  <summary>
		///  Add a handler to detect arrival of devices.
		///  </summary>

		private void AddDeviceArrivedHandler()
		{
			const Int32 pollingIntervalSeconds = 3;
			var scope = new ManagementScope("root\\CIMV2");
			scope.Options.EnablePrivileges = true;

			try
			{
				var q = new WqlEventQuery();
				q.EventClassName = "__InstanceCreationEvent";
				q.WithinInterval = new TimeSpan(0, 0, pollingIntervalSeconds);
				q.Condition = @"TargetInstance ISA 'Win32_USBControllerdevice'";
				_deviceArrivedWatcher = new ManagementEventWatcher(scope, q);
				_deviceArrivedWatcher.EventArrived += DeviceAdded;

				_deviceArrivedWatcher.Start();
			}
			catch (Exception e)
			{
				Console.WriteLine(e.Message);
				if (_deviceArrivedWatcher != null)
					_deviceArrivedWatcher.Stop();
			}
		}

		///  <summary>
		///  Add a handler to detect removal of devices.
		///  </summary>

		private void AddDeviceRemovedHandler()
		{
			const Int32 pollingIntervalSeconds = 3;
			var scope = new ManagementScope("root\\CIMV2");
			scope.Options.EnablePrivileges = true;

			try
			{
				var q = new WqlEventQuery();
				q.EventClassName = "__InstanceDeletionEvent";
				q.WithinInterval = new TimeSpan(0, 0, pollingIntervalSeconds);
				q.Condition = @"TargetInstance ISA 'Win32_USBControllerdevice'";
				_deviceRemovedWatcher = new ManagementEventWatcher(scope, q);
				_deviceRemovedWatcher.EventArrived += DeviceRemoved;
				_deviceRemovedWatcher.Start();
			}
			catch (Exception e)
			{
				Console.WriteLine(e.Message);
				if (_deviceRemovedWatcher != null)
					_deviceRemovedWatcher.Stop();
			}
		}

		///  <summary>
		///  Calls a routine to initiate a Control Read transfer. (Data stage is device to host.)
		///  </summary>

		private void cmdControlReadTransfer_Click(Object sender, EventArgs e)
		{
			RequestControlReadTransfer();
		}

		///  <summary>
		///  Calls a routine to initiate a Control Write transfer. (Data stage is host to device.)
		///  </summary>
		///   
		private void cmdControlWriteTransfer_Click(Object sender, EventArgs e)
		{
			RequestControlWriteTransfer();
		}

		///  <summary>
		///  Search for a specific device.
		///  </summary>

		private void cmdFindDevice_Click(Object sender, EventArgs e)
		{
			FindMyDevice();
		}

		private void cmdIsochronousTransfer_Click(object sender, EventArgs e)
		{
			SendAndReceiveViaIsochronousTransfers();
		}

		///  <summary>
		///  Calls a routine to exchange data via bulk transfers.
		///  </summary>

		private void cmdSendAndReceiveViaBulkTransfers_Click(Object eventSender, EventArgs eventArgs)
		{
			// Don't allow another transfer request until this one completes.

			CmdSendandReceiveViaBulkTransfers.Enabled = false;

			SendAndReceiveViaBulkTransfers();
		}

		///  <summary>
		///  Calls a routine to exchange data via interrupt transfers.
		///  </summary>
		///  
		private void cmdSendAndReceiveViaInterruptTransfers_Click(Object sender, EventArgs e)
		{
			// Don't allow another transfer request until this one completes.

			CmdSendAndReceiveViaInterruptTransfers.Enabled = false;

			SendAndReceiveViaInterruptTransfers();
		}

		/// <summary>
		/// Detects if Windows 8.1 or later (to enable isochronous transfers). 
		/// Windows 8.1 = 6.3.9600.0
		/// Windows 8.0 = 6.2.9200.0
		/// </summary>

		void DetectWindows81()
		{
			String completeWindowsVersion = Convert.ToString(Environment.OSVersion.Version);
			var windowsVersion = Convert.ToDecimal(completeWindowsVersion.Substring(0, 3));
			if (windowsVersion >= (Decimal)6.3)
			{
				_windows81 = true;
				LstResults.Items.Add("Windows version is 8.1 or later; WinUSB isochronous transfers supported.");
			}
			else
			{
				_windows81 = false;
				LstResults.Items.Add("Windows version is not 8.1 or later; WinUSB isochronous transfers not supported.");
			}
		}

		///  <summary>
		///  Called on arrival of any device.
		///  Calls a routine that searches to see if the desired device is present.
		///  </summary>

		private void DeviceAdded(object sender, EventArrivedEventArgs e)
		{
			try
			{
				Console.WriteLine("A USB device has been inserted");

				_deviceDetected = FindDeviceUsingWmi();
			}
			catch (Exception ex)
			{
				DisplayException(Name, ex);
				throw;
			}
		}

		///  <summary>
		///  Add handlers to detect device arrival and removal.
		///  </summary>

		private void DeviceNotificationsStart()
		{
			AddDeviceArrivedHandler();
			AddDeviceRemovedHandler();
		}

		///  <summary>
		///  Stop receiving notifications about device arrival and removal
		///  </summary>

		private void DeviceNotificationsStop()
		{
			try
			{
				if (_deviceArrivedWatcher != null)
					_deviceArrivedWatcher.Stop();
				if (_deviceRemovedWatcher != null)
					_deviceRemovedWatcher.Stop();
			}
			catch (Exception ex)
			{
				DisplayException(Name, ex);
				throw;
			}
		}

		///  <summary>
		///  Called on removal of any device.
		///  Calls a routine that searches to see if the desired device is still present.
		///  </summary>
		/// 
		private void DeviceRemoved(object sender, EventArgs e)
		{
			try
			{
				Console.WriteLine("A USB device has been removed");

				_deviceDetected = FindDeviceUsingWmi();
			}
			catch (Exception ex)
			{
				DisplayException(Name, ex);
				throw;
			}
		}

		///  <summary>
		///  Get and display the device's speed in the list box.
		///  </summary>		

		private void DisplayDeviceSpeed()
		{
			try
			{
				var speed = "";

				WinUsbCommunications.QueryDeviceSpeed(_winUsbHandle, ref _myDeviceInfo);

				switch (_myDeviceInfo.DeviceSpeed)
				{
					case 1:
						speed = "low or full speed";
						break;
					case 3:
						speed = "high speed or SuperSpeed";
						break;
				}

				LstResults.Items.Add("Device is " + speed);
			}
			catch (Exception ex)
			{
				DisplayException(Name, ex);
				throw;
			}
		}

		///  <summary>
		///  Provides a central mechanism for exception handling.
		///  Displays a message box that describes the exception.
		///  </summary>
		///  
		///  <param name="name"> the module where the exception occurred. </param>
		///  <param name="e"> the exception </param>

		internal static void DisplayException(String name, Exception e)
		{
			try
			{
				//  Create an error message.

				String message = "Exception: " + e.Message + Environment.NewLine + "Module: " + name + Environment.NewLine + "Method: " + e.TargetSite.Name;

				const string caption = "Unexpected Exception";

				MessageBox.Show(message, caption, MessageBoxButtons.OK);
				Debug.Write(message);
			}
			catch (Exception ex)
			{
				DisplayException(name, ex);
				throw;
			}
		}

		///  <summary>
		///  Use WMI to find a device by Vendor ID and Product ID. If found, display device properties.
		///  Can also search by ClassGUID, description, and other properties. 
		///  The WMI functions don't detect the device interface GUID so you need to use another property or properties.
		///  </summary>
		/// 
		private Boolean FindDeviceUsingWmi()
		{
			try
			{
				// ClassGUID value from Windows-provided winusb.inf for use if you want to search by ClassGUID.

				const String classGuid = "88bae032-5a81-49f0-bc3d-a4ff138216d6";

				_deviceDetected = false;
				var searcher = new ManagementObjectSearcher("root\\CIMV2", "SELECT * FROM Win32_PnPEntity");

				foreach (ManagementObject queryObj in searcher.Get())
				{
					// More query exampless for the device search below:

					// Search for any WinUSB device:
					// if (queryObj["ClassGUID"].ToString().Contains(classGuid))

					// Search by description:
					// if (queryObj["Description"].ToString().ToLower().Contains("winusb"))

					// Prepend "@" in string below to treat backslash as a normal character (not escape character):

					const String deviceIdString = @"USB\VID_" + VendorID + "&PID_" + ProductID;

					if (queryObj["PNPDeviceID"].ToString().Contains(deviceIdString))
					{
						_deviceDetected = true;
						MyMarshalToForm(FormActions.AddItemToListBox.ToString(), "--------");
						MyMarshalToForm(FormActions.AddItemToListBox.ToString(), "My device found (WMI):");

						foreach (WmiDeviceProperties wmiDeviceProperty in Enum.GetValues(typeof(WmiDeviceProperties)))
						{
							MyMarshalToForm(FormActions.AddItemToListBox.ToString(), (wmiDeviceProperty.ToString() + ": " + queryObj[wmiDeviceProperty.ToString()]));
							Console.WriteLine(wmiDeviceProperty.ToString() + ": {0}", queryObj[wmiDeviceProperty.ToString()]);
						}
						MyMarshalToForm(FormActions.AddItemToListBox.ToString(), "--------");
						MyMarshalToForm(FormActions.ScrollToBottomOfListBox.ToString(), "");
					}
				}
				if (!_deviceDetected)
				{
					_deviceReady = false;
					MyMarshalToForm(FormActions.AddItemToListBox.ToString(), "My device not found (WMI)");
					MyMarshalToForm(FormActions.ScrollToBottomOfListBox.ToString(), "");
				}
				return _deviceDetected;
			}
			catch (Exception ex)
			{
				DisplayException(Name, ex);
				throw;
			}
		}

		///  <summary>
		///  If a device with the specified device interface GUID hasn't been previously detected,
		///  look for it. If found, open a handle to the device.
		///  </summary>
		///  
		///  <returns>
		///  True if the device is detected, False if not detected.
		///  </returns>

		private void FindMyDevice()
		{
			try
			{
				var devicePathName = "";
				Boolean lastDevice;
				const uint pipeTimeout = 2000;

				if (!(_deviceReady))
				{
					// Convert the device interface GUID String to a GUID object: 

					var winUsbDemoGuid = new Guid(DeviceInterfaceGuid);

					// Fill an array with the device path names of all attached devices with matching GUIDs.

					var deviceFound = _myDeviceManagement.FindDeviceFromGuid(winUsbDemoGuid, ref devicePathName);

					if (deviceFound)
					{
						_deviceHandle = _myWinUsbCommunications.GetDeviceHandle(devicePathName);

						if (!_deviceHandle.IsInvalid)
						{
							_deviceReady = true;

							_myWinUsbCommunications.InitializeDevice(_deviceHandle, ref _winUsbHandle, ref _myDeviceInfo, pipeTimeout);

							DisplayDeviceSpeed();
						}
						else
						{
							// There was a problem in retrieving the information.

							_deviceReady = false;
							_myWinUsbCommunications.CloseDeviceHandle(_deviceHandle, _winUsbHandle);
							LstResults.Items.Add("Device not found.");
						}
					}
					else
					{
						CmdSendandReceiveViaBulkTransfers.Enabled = true;
						CmdSendAndReceiveViaInterruptTransfers.Enabled = true;
					}
				}
				else
				{
					LstResults.Items.Add("The device has been detected.");
					DisplayDeviceSpeed();
				}

				// Display device information.

				FindDeviceUsingWmi();
				ScrollToBottomOfListBox();
			}
			catch (Exception ex)
			{
				DisplayException(Name, ex);
				throw;
			}
		}

		///  <summary>
		///  Perform shutdown operations.
		///  </summary>

		private void frmMain_Closed(Object eventSender, EventArgs eventArgs)
		{
			Shutdown();
		}

		///  <summary>
		///  Perform startup operations.
		///  </summary>

		private void frmMain_Load(Object eventSender, EventArgs eventArgs)
		{
			FrmMy = this;
			Startup();
		}

		///  <summary>
		///  Retrieves received data from a bulk endpoint.
		///  This routine is called automatically when myWinUsbDevice.ReadViaBulkTransfer
		///  returns. The routine calls several marshaling routines to access the main form.       
		///  </summary>
		///  
		///  <param name="ar"> An object containing status information about the 
		///  asynchronous operation.</param>
		///  
		private void GetBulkDataSent(IAsyncResult ar)
		{
			try
			{
				UInt32 bytesSent = 0;
				var myEncoder = new ASCIIEncoding();
				Byte[] sentDataBuffer;
				String receivedtext = "";
				var success = false;

				// Define a delegate using the IAsyncResult object.

				var deleg = ((SendToDeviceDelegate)(ar.AsyncState));

				// Get the IAsyncResult object and the values of other paramaters that the
				// BeginInvoke method passed by reference.

				deleg.EndInvoke(ref bytesSent, ref success, ar);


				if (ar.IsCompleted)
				{
					Debug.WriteLine(bytesSent);
					Debug.WriteLine(success);
				}

				// Display the received data in the form's list box.

				if ((ar.IsCompleted && success))
				{
					MyMarshalToForm(FormActions.AddItemToListBox.ToString(), "Data sent via bulk transfer:");
				}
				else
				{
					MyMarshalToForm(FormActions.AddItemToListBox.ToString(), "The attempt to send bulk data has failed.");
				}

				MyMarshalToForm(FormActions.ScrollToBottomOfListBox.ToString(), "");

				// Enable requesting another transfer.

				MyMarshalToForm(FormActions.EnableCmdSendandReceiveViaBulkTransfers.ToString(), "");
			}
			catch (Exception ex)
			{
				DisplayException(Name, ex);
				throw;
			}
		}

		///  <summary>
		///  Retrieves received data from a bulk endpoint.
		///  This routine is called automatically when myWinUsbDevice.ReceiveViaBulkTransfer
		///  returns. The routine calls several marshaling routines to access the main form.       
		///  </summary>
		///  
		///  <param name="ar"> An object containing status information about the 
		///  asynchronous operation.</param>
		///  
		private void GetBulkDataReceived(IAsyncResult ar)
		{
			try
			{
				UInt32 bytesRead = 0;
				var myEncoder = new ASCIIEncoding();
				var success = false;

				Byte[] receivedDataBuffer = null;

				// Define a delegate using the IAsyncResult object.

				var deleg = ((ReceiveFromDeviceDelegate)(ar.AsyncState));

				// Get the IAsyncResult object and the values of other paramaters that the
				// BeginInvoke method passed ByRef.

				deleg.EndInvoke
					(ref receivedDataBuffer,
					 ref bytesRead,
					 ref success,
					 ar);

				if (ar.IsCompleted)
				{
					Debug.WriteLine(bytesRead);
					Debug.WriteLine(success);
					for (Int32 i = 0; i <= Convert.ToInt32(bytesRead) - 1; i++)
					{
						Debug.WriteLine(receivedDataBuffer[i]); ;
					}
				}

				// Display the received data in the form's list box.

				if ((ar.IsCompleted && success))
				{
					MyMarshalToForm(FormActions.AddItemToListBox.ToString(), "Data received via bulk transfer:");

					//  Convert the received bytes to a String for display.

					String receivedtext = myEncoder.GetString(receivedDataBuffer);

					MyMarshalToForm(FormActions.AddItemToListBox.ToString(), receivedtext);
				}
				else
				{
					MyMarshalToForm(FormActions.AddItemToListBox.ToString(), "The attempt to read bulk data has failed.");
				}

				MyMarshalToForm(FormActions.ScrollToBottomOfListBox.ToString(), "");

				// Enable requesting another transfer.

				MyMarshalToForm(FormActions.EnableCmdSendandReceiveViaBulkTransfers.ToString(), "");
			}
			catch (Exception ex)
			{
				DisplayException(Name, ex);
				throw;
			}
		}

		///  <summary>
		///  Initializes elements on the form.
		///  </summary>

		private void InitializeDisplay()
		{
			try
			{
				// Create dropdown list boxes.

				for (var i = 0; i <= 255; i++)
				{
					String byteValue = String.Format("{0:X2} ", i);

					FrmMy.CboInterruptOutByte0.Items.Insert(i, byteValue);
					FrmMy.CboInterruptOutByte1.Items.Insert(i, byteValue);
					FrmMy.CboControlWriteByte0.Items.Insert(i, byteValue);
					FrmMy.CboControlWriteByte1.Items.Insert(i, byteValue);
					FrmMy.CboIsochronousFirstByteToSend.Items.Insert(i, byteValue);
				}

				// Select a default value for each box

				FrmMy.CboInterruptOutByte0.SelectedIndex = 0;
				FrmMy.CboInterruptOutByte1.SelectedIndex = 128;
				FrmMy.CboControlWriteByte0.SelectedIndex = 65;
				FrmMy.CboControlWriteByte1.SelectedIndex = 53;
				FrmMy.CboIsochronousFirstByteToSend.SelectedIndex = 97;

				if (!(IsWindowsXpOrLater()))
				{
					LstResults.Items.Add("The operating system is not Windows XP or later.");
					LstResults.Items.Add("The WinUsb driver requires Windows XP or later.");
				}

				if (!_windows81)
				{
					// Isochronous transfers require Windows 8.1 or later.

					cmdIsochronousTransfer.Enabled = false;
				}

			}
			catch (Exception ex)
			{
				DisplayException(Name, ex);
				throw;
			}
		}

		///  <summary>
		///  Is the current operating system Windows XP or later?
		///  The WinUSB driver requires Windows XP or later.
		///  </summary>
		/// 
		///  <returns>
		///  True if Windows XP or later, False if not.
		///  </returns>

		internal Boolean IsWindowsXpOrLater()
		{
			try
			{
				var myEnvironment = Environment.OSVersion;

				//  Windows XP is version 5.1.

				var versionXp = new Version(5, 1);

				if (myEnvironment.Version >= versionXp)
				{
					return true;
				}
				return false;
			}

			catch (Exception ex)
			{
				DisplayException(Name, ex);
				throw;
			}
		}

		///  <summary>
		///  Enables accessing a form from another thread 
		///  </summary>
		///  
		///  <param name="action"> A String that names the action to perform on the form. </param>
		///  <param name="textToDisplay"> Text that the form displays or uses for 
		///  another purpose. Actions that don't use text ignore this parameter. </param>

		private void MyMarshalToForm(String action, String textToDisplay)
		{
			try
			{
				object[] args = { action, textToDisplay };

				//  The AccessForm routine contains the code that accesses the form.

				MarshalToForm marshalToFormDelegate = AccessForm;

				//  Execute AccessForm, passing the parameters in args.

				Invoke(marshalToFormDelegate, args);
			}
			catch (Exception ex)
			{
				DisplayException(Name, ex);
				throw;
			}
		}

		///  <summary>
		///  Initiates a Control Read transfer. (Data stage is device to host.)
		///  </summary>
		///  
		private void RequestControlReadTransfer()
		{
			try
			{
				var dataStage = new Byte[2];

				// If the device hasn't been detected or was removed, look for the device.

				if (!(_deviceReady))
				{
					FindMyDevice();
				}

				if (_deviceReady)
				{
					var success = _myWinUsbCommunications.DoControlReadTransfer(_winUsbHandle, ref dataStage);

					String formText;
					if (success)
					{
						formText = "Bytes received via Control Read transfer:";
						AccessForm(FormActions.AddItemToListBox.ToString(), formText);

						for (Int32 i = 0; i <= dataStage.Length - 1; i++)
						{
							formText = String.Format("{0:X2} ", dataStage[i]);
							AccessForm(FormActions.AddItemToListBox.ToString(), formText);
						}
					}
					else
					{
						formText = "Control Read transfer failed.";
						AccessForm(FormActions.AddItemToListBox.ToString(), formText);
					}

				}
				ScrollToBottomOfListBox();
			}
			catch (Exception ex)
			{
				DisplayException(Name, ex);
				throw;
			}
		}

		///  <summary>
		///  Initiates a Control Write transfer. (Data stage is host to device.)
		///  Converts hex strings from combo boxes to byte values for sending.
		///  </summary>
		///  
		private void RequestControlWriteTransfer()
		{
			try
			{
				var dataStage = new Byte[2];

				// If the device hasn't been detected, was removed, or timed out on a previous attempt
				// to access it, look for the device.

				if (!(_deviceReady))
				{
					FindMyDevice();
				}
				if (_deviceReady)
				{
					// Get the value to send as a hex String.

					var comboBoxText = Convert.ToString(CboControlWriteByte0.SelectedItem).TrimEnd(null);

					// Convert the String to a byte.

					dataStage[0] = Convert.ToByte(String.Format("{0:X2}", comboBoxText), 16);

					// Get the value to send as a hex String.

					comboBoxText =
						Convert.ToString(CboControlWriteByte1.SelectedItem).TrimEnd(null);

					// Convert the String to a byte.

					dataStage[1] = Convert.ToByte(String.Format("{0:X2}", comboBoxText), 16);

					var success = _myWinUsbCommunications.DoControlWriteTransfer(_winUsbHandle, dataStage);

					String formText;
					if (success)
					{
						formText = "Control Write transfer completed successfully.";
					}
					else
					{
						formText = "Control Write transfer failed.";
					}

					AccessForm(FormActions.AddItemToListBox.ToString(), formText);
				}
				ScrollToBottomOfListBox();
			}
			catch (Exception ex)
			{
				DisplayException(Name, ex);
				throw;
			}
		}

		///  <summary>
		///  Initiates a read operation from a bulk IN endpoint.
		///  To enable reading without blocking the main thread, uses an asynchronous delegate.
		///  </summary>
		///  
		///  <param name="bytesToRead"> The number of bytes to read </param>		
		///  <param name="dataBuffer"> Buffer to hold the bytes read </param>
		///  <param name="bytesRead"> The number of bytes read </param>
		///  <param name="success"> True on success </param>		

		private void RequestToReceiveDataViaBulkTransfer(UInt32 bytesToRead, Byte[] dataBuffer, ref UInt32 bytesRead, ref Boolean success)
		{
			try
			{
				if (dataBuffer == null) throw new ArgumentNullException("dataBuffer");

				//  Define a delegate for the ReadViaBulkTransfer method of WinUsbDevice.

				ReceiveFromDeviceDelegate myReceiveFromDeviceDelegate = _myWinUsbCommunications.ReceiveDataViaBulkTransfer;

				//  The BeginInvoke method calls MyWinUsbDevice.ReceiveViaBulkTransfer to attempt 
				//  to read data. The method has the same parameters as ReceiveViaBulkTransfer,
				//  plus two additional parameters:
				//  GetBulkDataReceived is the callback routine that executes when 
				//  ReceiveViaBulkTransfer returns.
				//  MyReceiveFromDeviceDelegate is the asynchronous delegate object.

				myReceiveFromDeviceDelegate.BeginInvoke
					(_winUsbHandle,
					_myDeviceInfo,
					 bytesToRead,
					 ref dataBuffer,
					 ref bytesRead,
					 ref success,
					 GetBulkDataReceived,
					 myReceiveFromDeviceDelegate);
			}
			catch (Exception ex)
			{
				DisplayException(Name, ex);
				throw;
			}
		}

		///  <summary>
		///  Initiates a read operation from an interrupt IN endpoint.
		///  Synchronous, blocks until data received or timeout.
		///  </summary>
		///  
		///  <param name="bytesToRead"> The number of bytes to read </param>		
		///  <param name="dataBuffer"> Buffer to hold the bytes read </param>
		///  <param name="bytesRead"> The number of bytes read </param>
		///  <param name="success"> True on success </param>  		

		private void RequestToReceiveDataViaInterruptTransfer(UInt32 bytesToRead, Byte[] dataBuffer, ref UInt32 bytesRead, ref Boolean success)
		{
			try
			{
				if (dataBuffer == null) throw new ArgumentNullException("dataBuffer");
				success = _myWinUsbCommunications.ReceiveDataViaInterruptTransfer
					(_winUsbHandle,
					_myDeviceInfo,
					bytesToRead,
					ref dataBuffer,
					ref bytesRead
					);

				if (success)
				{
					MyMarshalToForm(FormActions.AddItemToListBox.ToString(), "Data received via interrupt transfer:");

					MyMarshalToForm(FormActions.AddItemToListBox.ToString(), " Received Data:");

					for (Int32 i = 0; i <= dataBuffer.GetUpperBound(0); i++)
					{
						// Convert the byte value to a 2-character hex String.

						var byteValue = String.Format("{0:X2} ", dataBuffer[i]);

						MyMarshalToForm(FormActions.AddItemToListBox.ToString(), " " + byteValue);
					}
				}
				else
				{
					MyMarshalToForm(FormActions.AddItemToListBox.ToString(), "The attempt to read interrupt data has failed.");
				}

				MyMarshalToForm(FormActions.ScrollToBottomOfListBox.ToString(), "");

				// Enable requesting another transfer.

				MyMarshalToForm(FormActions.EnableCmdSendandReceiveViaInterruptTransfers.ToString(), "");
			}
			catch (Exception ex)
			{
				DisplayException(Name, ex);
				throw;
			}
		}

		///  <summary>
		///  Initiates a read operation from an isochronous IN endpoint.
		///  Synchronous, blocks until data received or timeout.
		///  </summary>
		///  
		///  <param name="bytesToRead"> The number of bytes to read </param>		
		///  <param name="dataInBuffer"> Buffer to hold the bytes read </param>
		///  <param name="bytesRead"> The number of bytes read </param>
		///  <param name="success"> True on success </param>  		

		private void RequestToReceiveDataViaIsochronousTransfer(UInt32 bytesToRead, Byte[] dataInBuffer, ref UInt32 bytesRead, UInt32 numberOfPackets, ref Boolean success)
		{
			try
			{
				if (dataInBuffer == null) throw new ArgumentNullException("dataInBuffer");
				success = _myWinUsbCommunications.ReceiveDataViaIsochronousTransfer
					(_winUsbHandle,
					_myDeviceInfo,
					bytesToRead,
					ref dataInBuffer,
					ref bytesRead,
					numberOfPackets
					);

				if (success)
				{
					MyMarshalToForm(FormActions.AddItemToListBox.ToString(), "Data received via isochronous transfer:");

					MyMarshalToForm(FormActions.AddItemToListBox.ToString(), " Received Data:");

					for (Int32 i = 0; i <= dataInBuffer.GetUpperBound(0); i++)
					{
						// Convert the byte value to a 2-character hex String.

						var byteValue = String.Format("{0:X2} ", dataInBuffer[i]);

						MyMarshalToForm(FormActions.AddItemToListBox.ToString(), " " + byteValue);
					}
				}
				else
				{
					MyMarshalToForm(FormActions.AddItemToListBox.ToString(), "The attempt to read isochronous data has failed.");
				}

				MyMarshalToForm(FormActions.ScrollToBottomOfListBox.ToString(), "");
			}
			catch (Exception ex)
			{
				DisplayException(Name, ex);
				throw;
			}
		}

		///  <summary>
		///  Initiates a write operation to a bulk OUT endpoint.
		///  To enable writing without blocking the main thread, uses an asynchronous delegate.
		///  </summary>
		///  
		///  <param name="bytesToWrite"> The number of bytes to send </param> 
		///  <param name="dataBuffer"> Buffer to hold the bytes to send </param> 
		///  <param name="bytesWritten"> The number of bytes send </param>
		///  <param name="success"> True on success </param>		

		private void RequestToSendDataViaBulkTransfer(UInt32 bytesToWrite, Byte[] dataBuffer, ref UInt32 bytesWritten, ref Boolean success)
		{
			try
			{
				if (dataBuffer == null) throw new ArgumentNullException("dataBuffer");

				//  Define a delegate for the ReadViaBulkTransfer method of WinUsbDevice.

				SendToDeviceDelegate mySendToDeviceDelegate = _myWinUsbCommunications.SendDataViaBulkTransfer;

				//  The BeginInvoke method calls MyWinUsbDevice.SendViaBulkTransfer to attempt 
				//  to read data. The method has the same parameters as SendViaBulkTransfer,
				//  plus two additional parameters:
				//  GetBulkDataSent is the callback routine that executes when 
				//  SendViaBulkTransfer returns.
				//  MySendToDeviceDelegate is the asynchronous delegate object.

				mySendToDeviceDelegate.BeginInvoke
					(_winUsbHandle,
					 _myDeviceInfo,
					 bytesToWrite,
					 dataBuffer,
					 ref bytesWritten,
					 ref success,
					 GetBulkDataSent,
					 mySendToDeviceDelegate);
			}
			catch (Exception ex)
			{
				DisplayException(Name, ex);
				throw;
			}
		}

		///  <summary>
		///  Initiates a write operation to an interrupt OUT endpoint.
		///  Synchronous, blocks until data sent or timeout.
		///  </summary>
		///  
		///  <param name="bytesToSend"> The number of bytes to send </param> 
		///  <param name="dataBuffer"> Buffer to hold the bytes to send </param> 
		///  <param name="bytesSent"> The number of bytes send </param>
		///  <param name="success"> True on success </param>	

		private void RequestToSendDataViaInterruptTransfer(UInt32 bytesToSend, Byte[] dataBuffer, ref UInt32 bytesSent, ref Boolean success)
		{
			try
			{
				if (dataBuffer == null) throw new ArgumentNullException("dataBuffer");
				success = _myWinUsbCommunications.SendDataViaInterruptTransfer
					(_winUsbHandle,
					_myDeviceInfo,
					 bytesToSend,
					 dataBuffer,
					 ref bytesSent);

				if (success)
				{
					MyMarshalToForm(FormActions.AddItemToListBox.ToString(), "Data sent via interrupt transfer:");
				}
				else
				{
					MyMarshalToForm(FormActions.AddItemToListBox.ToString(), "The attempt to send interrupt data has failed.");
				}

				MyMarshalToForm(FormActions.ScrollToBottomOfListBox.ToString(), "");

				// Enable requesting another transfer.

				MyMarshalToForm(FormActions.EnableCmdSendandReceiveViaInterruptTransfers.ToString(), "");
			}
			catch (Exception ex)
			{
				DisplayException(Name, ex);
				throw;
			}
		}

		///  <summary>
		///  Initiates a write operation to an isochronous OUT endpoint.
		///  Synchronous, blocks until data sent or timeout.
		///  </summary>
		///  
		///  <param name="bytesToSend"> The number of bytes to send </param> 
		///  <param name="dataOutBuffer"> Buffer to hold the bytes to send </param> 
		///  <param name="bytesSent"> The number of bytes send </param>
		///  <param name="success"> True on success </param>	

		private void RequestToSendDataViaIsochronousTransfer(UInt32 bytesToSend, Byte[] dataOutBuffer, ref UInt32 bytesSent, ref Boolean success)
		{
			try
			{
				if (dataOutBuffer == null) throw new ArgumentNullException("dataOutBuffer");
				success = _myWinUsbCommunications.SendDataViaIsochronousTransfer
					(_winUsbHandle,
					_myDeviceInfo,
					 bytesToSend,
					 dataOutBuffer,
					 ref bytesSent);

				if (success)
				{
					MyMarshalToForm(FormActions.AddItemToListBox.ToString(), "Data sent via isochronous transfer:");
				}
				else
				{
					MyMarshalToForm(FormActions.AddItemToListBox.ToString(), "The attempt to send isochronous data has failed.");
				}

				MyMarshalToForm(FormActions.ScrollToBottomOfListBox.ToString(), "");
			}
			catch (Exception ex)
			{
				DisplayException(Name, ex);
				throw;
			}
		}

		///  <summary>
		///  Scroll to the bottom of the list box and trim if needed.
		///  </summary>

		private void ScrollToBottomOfListBox()
		{
			try
			{
				LstResults.SelectedIndex = LstResults.Items.Count - 1;

				// If the list box is getting too large, trim its contents.

				if (LstResults.Items.Count > 1000)
				{
					for (Int32 i = 1; i <= 800; i++)
					{
						LstResults.Items.RemoveAt(i);
					}
				}
			}
			catch (Exception ex)
			{
				DisplayException(Name, ex);
				throw;
			}
		}

		///  <summary>
		///  Initiates sending data via a bulk transfer, then receiving data via a bulk transfer.
		///  </summary>

		private void SendAndReceiveViaBulkTransfers()
		{
			try
			{
				UInt32 bytesWritten = 0;
				var myEncoder = new ASCIIEncoding();
				var success = false;

				//  Get data to send from the textbox.

				var dataToSend = TxtBulkDataToSend.Text;

				if (dataToSend.Length > 64)
				{
					dataToSend = dataToSend.Substring(0, 64);
				}

				//  Convert the String to a byte array.

				var databuffer = myEncoder.GetBytes(dataToSend);

				var bytesToWrite = Convert.ToUInt32(databuffer.Length);

				// If the device hasn't been detected, look for it.

				if (!(_deviceReady))
				{
					FindMyDevice();
				}

				var dataBuffer = new Byte[64];

				if (_deviceReady)
				{
					RequestToSendDataViaBulkTransfer(bytesToWrite, databuffer, ref bytesWritten, ref success);

					UInt32 bytesRead = 0;
					UInt32 bytesToRead = Convert.ToUInt32(64);
					RequestToReceiveDataViaBulkTransfer(bytesToRead, dataBuffer, ref bytesRead, ref success);
				}
				else
				{
					MyMarshalToForm(FormActions.EnableCmdSendandReceiveViaBulkTransfers.ToString(), "");
				}
			}
			catch (Exception ex)
			{
				DisplayException(Name, ex);
				throw;
			}
		}

		///  <summary>
		///  Initiates sending data via an interrupt transfer, then retrieving data 
		///  via an interrupt transfer.
		///  Converts hex strings from combo boxes to byte values for sending.
		///  </summary>

		private void SendAndReceiveViaInterruptTransfers()
		{
			var success = false;
			try
			{
				UInt32 bytesWritten = 0;
				var dataBuffer = new Byte[2];
				var dataToSend = "";
				var formText = "";

				//  Get bytes to send from combo boxes.

				// Get the value to send as a hex String.

				var comboBoxText = Convert.ToString(CboInterruptOutByte0.SelectedItem).TrimEnd(null);

				// Convert the String to a Byte.

				dataBuffer[0] = Convert.ToByte(String.Format("{0:X2}", comboBoxText), 16);

				// Get the value to send as a hex String.

				comboBoxText =
					Convert.ToString(CboInterruptOutByte1.SelectedItem).TrimEnd(null);

				// Convert the String to a Byte.

				dataBuffer[1] =
					Convert.ToByte(String.Format("{0:X2}", comboBoxText), 16);

				var bytesToSend = Convert.ToUInt32(dataBuffer.Length);

				var dataInBuffer = new Byte[2];
				UInt32 bytesRead = 0;
				var bytesToRead = Convert.ToUInt32(2);

				// If the device hasn't been detected, look for it.

				if (!(_deviceReady))
				{
					FindMyDevice();
				}

				if (_deviceReady)
				{
					RequestToSendDataViaInterruptTransfer(bytesToSend, dataBuffer, ref bytesWritten, ref success);
					RequestToReceiveDataViaInterruptTransfer(bytesToRead, dataInBuffer, ref bytesRead, ref success);
				}
				else
				{
					MyMarshalToForm(FormActions.EnableCmdSendandReceiveViaInterruptTransfers.ToString(), "");
				}
			}
			catch (Exception ex)
			{
				DisplayException(Name, ex);
				throw;
			}
		}


		///  <summary>
		///  Initiates sending data via an isochronous transfer, then retrieving data 
		///  via an isochronous transfer.
		///  Converts hex strings from combo boxes to byte values for sending.
		///  </summary>

		private void SendAndReceiveViaIsochronousTransfers()
		{
			var success = false;
			try
			{
				// Change these values to match the amount of data to send or receive.

				var dataInBuffer = new Byte[24];
				var dataOutBuffer = new Byte[24];

				// The number of packets needed to receive the desired amount of data (varies with the endpoint's wMaxPacketSize).

				UInt32 numberOfPackets = 3;

				// Get the value to send as a hex String.

				var comboBoxText = Convert.ToString(CboIsochronousFirstByteToSend.SelectedItem).TrimEnd(null);

				// Convert the String to a Byte.

				dataOutBuffer[0] = Convert.ToByte(String.Format("{0:X2}", comboBoxText), 16);

				// Send a sequence of 24 bytes starting with the value in the combo box.

				for (var i = 0; i <= 23; i++)
				{
					dataOutBuffer[i] = (Byte)(dataOutBuffer[0] + i);
				}

				UInt32 bytesRead = 0;
				UInt32 packetSize = 8;
				UInt32 bytesWritten = 0;
				var formText = "";

				UInt32 bytesToRead = Convert.ToUInt32(dataInBuffer.Length);
				UInt32 bytesToSend = Convert.ToUInt32(dataOutBuffer.Length);

				// If the device hasn't been detected, look for it.

				if (!(_deviceReady))
				{
					FindMyDevice();
				}

				if (_deviceReady)
				{
					RequestToSendDataViaIsochronousTransfer(bytesToSend, dataOutBuffer, ref bytesWritten, ref success);
					RequestToReceiveDataViaIsochronousTransfer(bytesToRead, dataInBuffer, ref bytesRead, numberOfPackets, ref success);

				}
				else
				{
					MyMarshalToForm(FormActions.EnableCmdSendandReceiveViaInterruptTransfers.ToString(), "");
				}
			}
			catch (Exception ex)
			{
				DisplayException(Name, ex);
				throw;
			}
		}

		///  <summary>
		///  Perform actions that must execute when the program ends.
		///  </summary>

		private void Shutdown()
		{
			try
			{
				_myWinUsbCommunications.CloseDeviceHandle(_deviceHandle, _winUsbHandle);


				DeviceNotificationsStop();
			}
			catch (Exception ex)
			{
				DisplayException(Name, ex);
				throw;
			}
		}

		///  <summary>
		///  Perform actions that must execute when the program starts.
		///  </summary>

		private void Startup()
		{
			try
			{
				var myWinUsbCommunications = new WinUsbCommunications();
				_winUsbHandle = new WinUsbCommunications.SafeWinUsbHandle();
				DetectWindows81();
				InitializeDisplay();
				DeviceNotificationsStart();

				FindMyDevice();

			}
			catch (Exception ex)
			{
				DisplayException(Name, ex);
				throw;
			}
		}

		private void lblIsochronousInfo_Click(object sender, EventArgs e)
		{

		}

		private void CboInterruptOutByte0_SelectedIndexChanged(object sender, EventArgs e)
		{

		}
		// internal static extern Boolean WinUsb_ReadPipe(SafeWinUsbHandle InterfaceHandle, Byte PipeID, Byte[] Buffer, UInt32 BufferLength, ref UInt32 LengthTransferred, IntPtr Overlapped);
		private void BtnReceive_Click(object sender, EventArgs e)
        {
			if (!_deviceReady)
			{
				FindMyDevice();
			}

			byte[] databuffer = new byte[65536];
			uint bytesRead = 0;
			uint bytesCount = 65536;
            //_myWinUsbCommunications.ReceiveDataViaBulkTransfer(_winUsbHandle,)

            if (!(_winUsbHandle.IsInvalid)) 
			{
				bool success = false;
				DateTime startTime = DateTime.Now;
				for (int i = 0; i < 16384; i++)
                {
					success = WinUsbCommunications.NativeMethods.WinUsb_ReadPipe
						(_winUsbHandle,
						 0x81,
						 databuffer,
						 Convert.ToUInt32(databuffer.Length),
						 ref bytesRead,
						 IntPtr.Zero);
				}

				TimeSpan ts = DateTime.Now - startTime;



				if (success) 
				{
					foreach (byte b in databuffer)
					{
						//Console.Write(b + ", ");
					}

					Console.WriteLine("speed = " + (((65536*16384) / ts.TotalMilliseconds) / 1024 / 1024) * 1000 + " MB / sec");
				}
				else
					Console.WriteLine("No luck..." + bytesRead);
			}
			else
				Console.WriteLine("No handle..." + bytesRead);

		}
    }
}
