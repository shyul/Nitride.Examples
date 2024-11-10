namespace SerialTest
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
            this.BtnConnect = new System.Windows.Forms.Button();
            this.ComboBoxPortList = new System.Windows.Forms.ComboBox();
            this.GroupBoxCarbide = new System.Windows.Forms.GroupBox();
            this.BtnWriteParam = new System.Windows.Forms.Button();
            this.CheckBoxDefaultOn = new System.Windows.Forms.CheckBox();
            this.BtnPsReset = new System.Windows.Forms.Button();
            this.BtnGetTempPMIC2V3 = new System.Windows.Forms.Button();
            this.BtnGetTempPMIC0V85 = new System.Windows.Forms.Button();
            this.BtnGetTempFPGA = new System.Windows.Forms.Button();
            this.BtnGetTempBoard = new System.Windows.Forms.Button();
            this.BtnGetBusCurrent = new System.Windows.Forms.Button();
            this.BtnGetBusVoltage = new System.Windows.Forms.Button();
            this.label14 = new System.Windows.Forms.Label();
            this.label13 = new System.Windows.Forms.Label();
            this.label12 = new System.Windows.Forms.Label();
            this.label11 = new System.Windows.Forms.Label();
            this.label10 = new System.Windows.Forms.Label();
            this.label9 = new System.Windows.Forms.Label();
            this.label8 = new System.Windows.Forms.Label();
            this.TextBoxTempPMIC2V3 = new System.Windows.Forms.TextBox();
            this.label7 = new System.Windows.Forms.Label();
            this.TextBoxTempPMIC0V85 = new System.Windows.Forms.TextBox();
            this.label6 = new System.Windows.Forms.Label();
            this.TextBoxTempFPGA = new System.Windows.Forms.TextBox();
            this.label5 = new System.Windows.Forms.Label();
            this.TextBoxTempBoard = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.TextBoxBusCurrent = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.TextBoxBusVoltage = new System.Windows.Forms.TextBox();
            this.BtnShutdown = new System.Windows.Forms.Button();
            this.BtnSetBootOption = new System.Windows.Forms.Button();
            this.label2 = new System.Windows.Forms.Label();
            this.ComboBoxBootOption = new System.Windows.Forms.ComboBox();
            this.TextBoxSerialNumber = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.TextBoxModelNumber = new System.Windows.Forms.TextBox();
            this.GroupBoxFPGA = new System.Windows.Forms.GroupBox();
            this.BtnBulkRead = new System.Windows.Forms.Button();
            this.BtnBulkWrite = new System.Windows.Forms.Button();
            this.BtnCtrlRead = new System.Windows.Forms.Button();
            this.BtnCtrlWrite = new System.Windows.Forms.Button();
            this.ProgressBarBulkTx = new System.Windows.Forms.ProgressBar();
            this.ProgressBarBulkRx = new System.Windows.Forms.ProgressBar();
            this.GroupBoxCarbide.SuspendLayout();
            this.GroupBoxFPGA.SuspendLayout();
            this.SuspendLayout();
            // 
            // BtnConnect
            // 
            this.BtnConnect.Location = new System.Drawing.Point(178, 13);
            this.BtnConnect.Name = "BtnConnect";
            this.BtnConnect.Size = new System.Drawing.Size(75, 23);
            this.BtnConnect.TabIndex = 0;
            this.BtnConnect.Text = "Connect";
            this.BtnConnect.UseVisualStyleBackColor = true;
            this.BtnConnect.Click += new System.EventHandler(this.BtnConnect_Click);
            // 
            // ComboBoxPortList
            // 
            this.ComboBoxPortList.FormattingEnabled = true;
            this.ComboBoxPortList.Location = new System.Drawing.Point(67, 13);
            this.ComboBoxPortList.Name = "ComboBoxPortList";
            this.ComboBoxPortList.Size = new System.Drawing.Size(105, 23);
            this.ComboBoxPortList.TabIndex = 2;
            // 
            // GroupBoxCarbide
            // 
            this.GroupBoxCarbide.Controls.Add(this.BtnWriteParam);
            this.GroupBoxCarbide.Controls.Add(this.CheckBoxDefaultOn);
            this.GroupBoxCarbide.Controls.Add(this.BtnPsReset);
            this.GroupBoxCarbide.Controls.Add(this.BtnGetTempPMIC2V3);
            this.GroupBoxCarbide.Controls.Add(this.BtnGetTempPMIC0V85);
            this.GroupBoxCarbide.Controls.Add(this.BtnGetTempFPGA);
            this.GroupBoxCarbide.Controls.Add(this.BtnGetTempBoard);
            this.GroupBoxCarbide.Controls.Add(this.BtnGetBusCurrent);
            this.GroupBoxCarbide.Controls.Add(this.BtnGetBusVoltage);
            this.GroupBoxCarbide.Controls.Add(this.label14);
            this.GroupBoxCarbide.Controls.Add(this.label13);
            this.GroupBoxCarbide.Controls.Add(this.label12);
            this.GroupBoxCarbide.Controls.Add(this.label11);
            this.GroupBoxCarbide.Controls.Add(this.label10);
            this.GroupBoxCarbide.Controls.Add(this.label9);
            this.GroupBoxCarbide.Controls.Add(this.label8);
            this.GroupBoxCarbide.Controls.Add(this.TextBoxTempPMIC2V3);
            this.GroupBoxCarbide.Controls.Add(this.label7);
            this.GroupBoxCarbide.Controls.Add(this.TextBoxTempPMIC0V85);
            this.GroupBoxCarbide.Controls.Add(this.label6);
            this.GroupBoxCarbide.Controls.Add(this.TextBoxTempFPGA);
            this.GroupBoxCarbide.Controls.Add(this.label5);
            this.GroupBoxCarbide.Controls.Add(this.TextBoxTempBoard);
            this.GroupBoxCarbide.Controls.Add(this.label4);
            this.GroupBoxCarbide.Controls.Add(this.TextBoxBusCurrent);
            this.GroupBoxCarbide.Controls.Add(this.label3);
            this.GroupBoxCarbide.Controls.Add(this.TextBoxBusVoltage);
            this.GroupBoxCarbide.Controls.Add(this.BtnShutdown);
            this.GroupBoxCarbide.Controls.Add(this.BtnSetBootOption);
            this.GroupBoxCarbide.Controls.Add(this.label2);
            this.GroupBoxCarbide.Controls.Add(this.ComboBoxBootOption);
            this.GroupBoxCarbide.Controls.Add(this.TextBoxSerialNumber);
            this.GroupBoxCarbide.Controls.Add(this.label1);
            this.GroupBoxCarbide.Controls.Add(this.TextBoxModelNumber);
            this.GroupBoxCarbide.Enabled = false;
            this.GroupBoxCarbide.Location = new System.Drawing.Point(14, 41);
            this.GroupBoxCarbide.Name = "GroupBoxCarbide";
            this.GroupBoxCarbide.Size = new System.Drawing.Size(280, 408);
            this.GroupBoxCarbide.TabIndex = 3;
            this.GroupBoxCarbide.TabStop = false;
            this.GroupBoxCarbide.Text = "Carbide Controls";
            // 
            // BtnWriteParam
            // 
            this.BtnWriteParam.Location = new System.Drawing.Point(86, 366);
            this.BtnWriteParam.Name = "BtnWriteParam";
            this.BtnWriteParam.Size = new System.Drawing.Size(99, 23);
            this.BtnWriteParam.TabIndex = 32;
            this.BtnWriteParam.Text = "Write Param";
            this.BtnWriteParam.UseVisualStyleBackColor = true;
            this.BtnWriteParam.Click += new System.EventHandler(this.BtnWriteParam_Click);
            // 
            // CheckBoxDefaultOn
            // 
            this.CheckBoxDefaultOn.AutoSize = true;
            this.CheckBoxDefaultOn.Location = new System.Drawing.Point(43, 318);
            this.CheckBoxDefaultOn.Name = "CheckBoxDefaultOn";
            this.CheckBoxDefaultOn.Size = new System.Drawing.Size(85, 19);
            this.CheckBoxDefaultOn.TabIndex = 31;
            this.CheckBoxDefaultOn.Text = "Default ON";
            this.CheckBoxDefaultOn.UseVisualStyleBackColor = true;
            this.CheckBoxDefaultOn.CheckedChanged += new System.EventHandler(this.CheckBoxDefaultOn_CheckedChanged);
            // 
            // BtnPsReset
            // 
            this.BtnPsReset.Location = new System.Drawing.Point(182, 314);
            this.BtnPsReset.Name = "BtnPsReset";
            this.BtnPsReset.Size = new System.Drawing.Size(81, 23);
            this.BtnPsReset.TabIndex = 30;
            this.BtnPsReset.Text = "Reset";
            this.BtnPsReset.UseVisualStyleBackColor = true;
            this.BtnPsReset.Click += new System.EventHandler(this.BtnPsReset_Click);
            // 
            // BtnGetTempPMIC2V3
            // 
            this.BtnGetTempPMIC2V3.Location = new System.Drawing.Point(219, 239);
            this.BtnGetTempPMIC2V3.Name = "BtnGetTempPMIC2V3";
            this.BtnGetTempPMIC2V3.Size = new System.Drawing.Size(44, 23);
            this.BtnGetTempPMIC2V3.TabIndex = 29;
            this.BtnGetTempPMIC2V3.Text = "ON";
            this.BtnGetTempPMIC2V3.UseVisualStyleBackColor = true;
            this.BtnGetTempPMIC2V3.Click += new System.EventHandler(this.BtnGetTempPMIC2V3_Click);
            // 
            // BtnGetTempPMIC0V85
            // 
            this.BtnGetTempPMIC0V85.Location = new System.Drawing.Point(219, 210);
            this.BtnGetTempPMIC0V85.Name = "BtnGetTempPMIC0V85";
            this.BtnGetTempPMIC0V85.Size = new System.Drawing.Size(44, 23);
            this.BtnGetTempPMIC0V85.TabIndex = 28;
            this.BtnGetTempPMIC0V85.Text = "ON";
            this.BtnGetTempPMIC0V85.UseVisualStyleBackColor = true;
            this.BtnGetTempPMIC0V85.Click += new System.EventHandler(this.BtnGetTempPMIC0V85_Click);
            // 
            // BtnGetTempFPGA
            // 
            this.BtnGetTempFPGA.Location = new System.Drawing.Point(219, 181);
            this.BtnGetTempFPGA.Name = "BtnGetTempFPGA";
            this.BtnGetTempFPGA.Size = new System.Drawing.Size(44, 23);
            this.BtnGetTempFPGA.TabIndex = 27;
            this.BtnGetTempFPGA.Text = "ON";
            this.BtnGetTempFPGA.UseVisualStyleBackColor = true;
            this.BtnGetTempFPGA.Click += new System.EventHandler(this.BtnGetTempFPGA_Click);
            // 
            // BtnGetTempBoard
            // 
            this.BtnGetTempBoard.Location = new System.Drawing.Point(219, 152);
            this.BtnGetTempBoard.Name = "BtnGetTempBoard";
            this.BtnGetTempBoard.Size = new System.Drawing.Size(44, 23);
            this.BtnGetTempBoard.TabIndex = 26;
            this.BtnGetTempBoard.Text = "ON";
            this.BtnGetTempBoard.UseVisualStyleBackColor = true;
            this.BtnGetTempBoard.Click += new System.EventHandler(this.BtnGetTempBoard_Click);
            // 
            // BtnGetBusCurrent
            // 
            this.BtnGetBusCurrent.Location = new System.Drawing.Point(219, 123);
            this.BtnGetBusCurrent.Name = "BtnGetBusCurrent";
            this.BtnGetBusCurrent.Size = new System.Drawing.Size(44, 23);
            this.BtnGetBusCurrent.TabIndex = 25;
            this.BtnGetBusCurrent.Text = "ON";
            this.BtnGetBusCurrent.UseVisualStyleBackColor = true;
            this.BtnGetBusCurrent.Click += new System.EventHandler(this.BtnGetBusCurrent_Click);
            // 
            // BtnGetBusVoltage
            // 
            this.BtnGetBusVoltage.Location = new System.Drawing.Point(219, 94);
            this.BtnGetBusVoltage.Name = "BtnGetBusVoltage";
            this.BtnGetBusVoltage.Size = new System.Drawing.Size(44, 23);
            this.BtnGetBusVoltage.TabIndex = 24;
            this.BtnGetBusVoltage.Text = "ON";
            this.BtnGetBusVoltage.UseVisualStyleBackColor = true;
            this.BtnGetBusVoltage.Click += new System.EventHandler(this.BtnGetBusVoltage_Click);
            // 
            // label14
            // 
            this.label14.AutoSize = true;
            this.label14.Location = new System.Drawing.Point(182, 242);
            this.label14.Name = "label14";
            this.label14.Size = new System.Drawing.Size(20, 15);
            this.label14.TabIndex = 23;
            this.label14.Text = "ºC";
            // 
            // label13
            // 
            this.label13.AutoSize = true;
            this.label13.Location = new System.Drawing.Point(182, 213);
            this.label13.Name = "label13";
            this.label13.Size = new System.Drawing.Size(20, 15);
            this.label13.TabIndex = 22;
            this.label13.Text = "ºC";
            // 
            // label12
            // 
            this.label12.AutoSize = true;
            this.label12.Location = new System.Drawing.Point(182, 184);
            this.label12.Name = "label12";
            this.label12.Size = new System.Drawing.Size(20, 15);
            this.label12.TabIndex = 21;
            this.label12.Text = "ºC";
            // 
            // label11
            // 
            this.label11.AutoSize = true;
            this.label11.Location = new System.Drawing.Point(182, 155);
            this.label11.Name = "label11";
            this.label11.Size = new System.Drawing.Size(20, 15);
            this.label11.TabIndex = 20;
            this.label11.Text = "ºC";
            // 
            // label10
            // 
            this.label10.AutoSize = true;
            this.label10.Location = new System.Drawing.Point(182, 126);
            this.label10.Name = "label10";
            this.label10.Size = new System.Drawing.Size(26, 15);
            this.label10.TabIndex = 19;
            this.label10.Text = "mA";
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Location = new System.Drawing.Point(182, 97);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(14, 15);
            this.label9.TabIndex = 18;
            this.label9.Text = "V";
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(20, 242);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(93, 15);
            this.label8.TabIndex = 17;
            this.label8.Text = "PMIC 2.3V Temp";
            // 
            // TextBoxTempPMIC2V3
            // 
            this.TextBoxTempPMIC2V3.Location = new System.Drawing.Point(119, 239);
            this.TextBoxTempPMIC2V3.Name = "TextBoxTempPMIC2V3";
            this.TextBoxTempPMIC2V3.ReadOnly = true;
            this.TextBoxTempPMIC2V3.Size = new System.Drawing.Size(57, 23);
            this.TextBoxTempPMIC2V3.TabIndex = 16;
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(14, 213);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(99, 15);
            this.label7.TabIndex = 15;
            this.label7.Text = "PMIC 0.85V Temp";
            // 
            // TextBoxTempPMIC0V85
            // 
            this.TextBoxTempPMIC0V85.Location = new System.Drawing.Point(119, 210);
            this.TextBoxTempPMIC0V85.Name = "TextBoxTempPMIC0V85";
            this.TextBoxTempPMIC0V85.ReadOnly = true;
            this.TextBoxTempPMIC0V85.Size = new System.Drawing.Size(57, 23);
            this.TextBoxTempPMIC0V85.TabIndex = 14;
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(45, 184);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(68, 15);
            this.label6.TabIndex = 13;
            this.label6.Text = "FPGA Temp";
            // 
            // TextBoxTempFPGA
            // 
            this.TextBoxTempFPGA.Location = new System.Drawing.Point(119, 181);
            this.TextBoxTempFPGA.Name = "TextBoxTempFPGA";
            this.TextBoxTempFPGA.ReadOnly = true;
            this.TextBoxTempFPGA.Size = new System.Drawing.Size(57, 23);
            this.TextBoxTempFPGA.TabIndex = 12;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(43, 155);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(70, 15);
            this.label5.TabIndex = 11;
            this.label5.Text = "Board Temp";
            // 
            // TextBoxTempBoard
            // 
            this.TextBoxTempBoard.Location = new System.Drawing.Point(119, 152);
            this.TextBoxTempBoard.Name = "TextBoxTempBoard";
            this.TextBoxTempBoard.ReadOnly = true;
            this.TextBoxTempBoard.Size = new System.Drawing.Size(57, 23);
            this.TextBoxTempBoard.TabIndex = 10;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(44, 126);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(69, 15);
            this.label4.TabIndex = 9;
            this.label4.Text = "Bus Current";
            // 
            // TextBoxBusCurrent
            // 
            this.TextBoxBusCurrent.Location = new System.Drawing.Point(119, 123);
            this.TextBoxBusCurrent.Name = "TextBoxBusCurrent";
            this.TextBoxBusCurrent.ReadOnly = true;
            this.TextBoxBusCurrent.Size = new System.Drawing.Size(57, 23);
            this.TextBoxBusCurrent.TabIndex = 8;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(45, 97);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(68, 15);
            this.label3.TabIndex = 7;
            this.label3.Text = "Bus Voltage";
            // 
            // TextBoxBusVoltage
            // 
            this.TextBoxBusVoltage.Location = new System.Drawing.Point(119, 94);
            this.TextBoxBusVoltage.Name = "TextBoxBusVoltage";
            this.TextBoxBusVoltage.ReadOnly = true;
            this.TextBoxBusVoltage.Size = new System.Drawing.Size(57, 23);
            this.TextBoxBusVoltage.TabIndex = 5;
            // 
            // BtnShutdown
            // 
            this.BtnShutdown.Location = new System.Drawing.Point(182, 285);
            this.BtnShutdown.Name = "BtnShutdown";
            this.BtnShutdown.Size = new System.Drawing.Size(81, 23);
            this.BtnShutdown.TabIndex = 5;
            this.BtnShutdown.Text = "Shutdown";
            this.BtnShutdown.UseVisualStyleBackColor = true;
            this.BtnShutdown.Click += new System.EventHandler(this.BtnShutdown_Click);
            // 
            // BtnSetBootOption
            // 
            this.BtnSetBootOption.Location = new System.Drawing.Point(102, 285);
            this.BtnSetBootOption.Name = "BtnSetBootOption";
            this.BtnSetBootOption.Size = new System.Drawing.Size(44, 23);
            this.BtnSetBootOption.TabIndex = 6;
            this.BtnSetBootOption.Text = "Set";
            this.BtnSetBootOption.UseVisualStyleBackColor = true;
            this.BtnSetBootOption.Click += new System.EventHandler(this.BtnSetBootOption_Click);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(6, 54);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(44, 15);
            this.label2.TabIndex = 5;
            this.label2.Text = "Model:";
            // 
            // ComboBoxBootOption
            // 
            this.ComboBoxBootOption.FormattingEnabled = true;
            this.ComboBoxBootOption.Items.AddRange(new object[] {
            "PS JTAG",
            "SD CARD",
            "QSPI",
            "MIO JTAG"});
            this.ComboBoxBootOption.Location = new System.Drawing.Point(17, 285);
            this.ComboBoxBootOption.Name = "ComboBoxBootOption";
            this.ComboBoxBootOption.Size = new System.Drawing.Size(79, 23);
            this.ComboBoxBootOption.TabIndex = 5;
            this.ComboBoxBootOption.Text = "PS JTAG";
            // 
            // TextBoxSerialNumber
            // 
            this.TextBoxSerialNumber.Location = new System.Drawing.Point(53, 22);
            this.TextBoxSerialNumber.Name = "TextBoxSerialNumber";
            this.TextBoxSerialNumber.ReadOnly = true;
            this.TextBoxSerialNumber.Size = new System.Drawing.Size(210, 23);
            this.TextBoxSerialNumber.TabIndex = 2;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(17, 25);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(30, 15);
            this.label1.TabIndex = 1;
            this.label1.Text = "S/N:";
            // 
            // TextBoxModelNumber
            // 
            this.TextBoxModelNumber.Location = new System.Drawing.Point(53, 51);
            this.TextBoxModelNumber.Name = "TextBoxModelNumber";
            this.TextBoxModelNumber.ReadOnly = true;
            this.TextBoxModelNumber.Size = new System.Drawing.Size(210, 23);
            this.TextBoxModelNumber.TabIndex = 0;
            // 
            // GroupBoxFPGA
            // 
            this.GroupBoxFPGA.Controls.Add(this.ProgressBarBulkRx);
            this.GroupBoxFPGA.Controls.Add(this.ProgressBarBulkTx);
            this.GroupBoxFPGA.Controls.Add(this.BtnBulkRead);
            this.GroupBoxFPGA.Controls.Add(this.BtnBulkWrite);
            this.GroupBoxFPGA.Controls.Add(this.BtnCtrlRead);
            this.GroupBoxFPGA.Controls.Add(this.BtnCtrlWrite);
            this.GroupBoxFPGA.Location = new System.Drawing.Point(300, 41);
            this.GroupBoxFPGA.Name = "GroupBoxFPGA";
            this.GroupBoxFPGA.Size = new System.Drawing.Size(524, 276);
            this.GroupBoxFPGA.TabIndex = 4;
            this.GroupBoxFPGA.TabStop = false;
            this.GroupBoxFPGA.Text = "FPGA";
            // 
            // BtnBulkRead
            // 
            this.BtnBulkRead.Location = new System.Drawing.Point(61, 176);
            this.BtnBulkRead.Name = "BtnBulkRead";
            this.BtnBulkRead.Size = new System.Drawing.Size(140, 23);
            this.BtnBulkRead.TabIndex = 3;
            this.BtnBulkRead.Text = "Start Bulk Read (RX)";
            this.BtnBulkRead.UseVisualStyleBackColor = true;
            this.BtnBulkRead.Click += new System.EventHandler(this.BtnBulkRead_Click);
            // 
            // BtnBulkWrite
            // 
            this.BtnBulkWrite.Location = new System.Drawing.Point(61, 147);
            this.BtnBulkWrite.Name = "BtnBulkWrite";
            this.BtnBulkWrite.Size = new System.Drawing.Size(140, 23);
            this.BtnBulkWrite.TabIndex = 2;
            this.BtnBulkWrite.Text = "Start Bulk Write (TX)";
            this.BtnBulkWrite.UseVisualStyleBackColor = true;
            this.BtnBulkWrite.Click += new System.EventHandler(this.BtnBulkWrite_Click);
            // 
            // BtnCtrlRead
            // 
            this.BtnCtrlRead.Location = new System.Drawing.Point(61, 89);
            this.BtnCtrlRead.Name = "BtnCtrlRead";
            this.BtnCtrlRead.Size = new System.Drawing.Size(140, 23);
            this.BtnCtrlRead.TabIndex = 1;
            this.BtnCtrlRead.Text = "Test Control Read";
            this.BtnCtrlRead.UseVisualStyleBackColor = true;
            this.BtnCtrlRead.Click += new System.EventHandler(this.BtnCtrlRead_Click);
            // 
            // BtnCtrlWrite
            // 
            this.BtnCtrlWrite.Location = new System.Drawing.Point(61, 46);
            this.BtnCtrlWrite.Name = "BtnCtrlWrite";
            this.BtnCtrlWrite.Size = new System.Drawing.Size(140, 23);
            this.BtnCtrlWrite.TabIndex = 0;
            this.BtnCtrlWrite.Text = "Test Control Write";
            this.BtnCtrlWrite.UseVisualStyleBackColor = true;
            this.BtnCtrlWrite.Click += new System.EventHandler(this.BtnCtrlWrite_Click);
            // 
            // ProgressBarBulkTx
            // 
            this.ProgressBarBulkTx.Location = new System.Drawing.Point(217, 147);
            this.ProgressBarBulkTx.Name = "ProgressBarBulkTx";
            this.ProgressBarBulkTx.Size = new System.Drawing.Size(273, 23);
            this.ProgressBarBulkTx.TabIndex = 5;
            // 
            // ProgressBarBulkRx
            // 
            this.ProgressBarBulkRx.Location = new System.Drawing.Point(217, 176);
            this.ProgressBarBulkRx.Name = "ProgressBarBulkRx";
            this.ProgressBarBulkRx.Size = new System.Drawing.Size(273, 23);
            this.ProgressBarBulkRx.TabIndex = 6;
            // 
            // MainForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 15F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(936, 614);
            this.Controls.Add(this.GroupBoxFPGA);
            this.Controls.Add(this.GroupBoxCarbide);
            this.Controls.Add(this.ComboBoxPortList);
            this.Controls.Add(this.BtnConnect);
            this.DoubleBuffered = true;
            this.MaximizeBox = false;
            this.Name = "MainForm";
            this.ShowIcon = false;
            this.SizeGripStyle = System.Windows.Forms.SizeGripStyle.Hide;
            this.Text = "Tidalloft Tungsten SDR Remote Controller";
            this.GroupBoxCarbide.ResumeLayout(false);
            this.GroupBoxCarbide.PerformLayout();
            this.GroupBoxFPGA.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Button BtnConnect;
        private System.Windows.Forms.ComboBox ComboBoxPortList;
        private System.Windows.Forms.GroupBox GroupBoxCarbide;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox TextBoxModelNumber;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox TextBoxSerialNumber;
        private System.Windows.Forms.Button BtnShutdown;
        private System.Windows.Forms.Button BtnSetBootOption;
        private System.Windows.Forms.ComboBox ComboBoxBootOption;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.TextBox TextBoxTempPMIC2V3;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.TextBox TextBoxTempPMIC0V85;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.TextBox TextBoxTempFPGA;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.TextBox TextBoxTempBoard;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.TextBox TextBoxBusCurrent;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox TextBoxBusVoltage;
        private System.Windows.Forms.Label label14;
        private System.Windows.Forms.Label label13;
        private System.Windows.Forms.Label label12;
        private System.Windows.Forms.Label label11;
        private System.Windows.Forms.Label label10;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.Button BtnGetTempPMIC2V3;
        private System.Windows.Forms.Button BtnGetTempPMIC0V85;
        private System.Windows.Forms.Button BtnGetTempFPGA;
        private System.Windows.Forms.Button BtnGetTempBoard;
        private System.Windows.Forms.Button BtnGetBusCurrent;
        private System.Windows.Forms.Button BtnGetBusVoltage;
        private System.Windows.Forms.Button BtnPsReset;
        private System.Windows.Forms.CheckBox CheckBoxDefaultOn;
        private System.Windows.Forms.Button BtnWriteParam;
        private System.Windows.Forms.GroupBox GroupBoxFPGA;
        private System.Windows.Forms.Button BtnCtrlRead;
        private System.Windows.Forms.Button BtnCtrlWrite;
        private System.Windows.Forms.Button BtnBulkRead;
        private System.Windows.Forms.Button BtnBulkWrite;
        private System.Windows.Forms.ProgressBar ProgressBarBulkRx;
        private System.Windows.Forms.ProgressBar ProgressBarBulkTx;
    }
}
