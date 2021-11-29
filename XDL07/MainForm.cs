using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Nitride.Example
{
    public partial class MainForm : Form
    {
        XDL07_USB XDL07 { get; }// = new();

        public MainForm()
        {
            XDL07 = new();
            XDL07.Connect("");

            InitializeComponent();

            SuspendLayout();
            int y = 0, y1 = ControlPanel.Location.Y;
            foreach (var channel in XDL07.Channels)
            {
                ChannelControl cc = channel.ChannelControl;
                cc.Location = new Point(0, y);
                if (ControlPanel.Width < cc.Width) ControlPanel.Width = cc.Width;
                ControlPanel.Controls.Add(cc);
                y += cc.Bottom + 2;
                y1 = cc.Bottom;
            }

            ControlPanel.Height = y1;
            Height = ControlPanel.Bottom + 50;

            ResumeLayout(false);
        }

        int count = 0;


        public bool IsTesting { get; set; } = false;

        public void TestModeWorker()
        {
            while (IsTesting && XDL07.IsConnected)
            {
                foreach (var channel in XDL07.Channels)//.Where(n => n.SerialNumber.EndsWith("B")))
                {
                    channel.ChannelControl.Test();
                }
                Thread.Sleep(500);
            }
        }

        Task TestModeTask { get; set; }

        private void BtnSPITest_Click(object sender, EventArgs e)
        {
            if (!IsTesting) 
            {
                IsTesting = true;
                TestModeTask = new Task(() => TestModeWorker());
                TestModeTask.Start();
            }
            else
            {
                IsTesting = false;
            }
        }

        private void BtnTX_Click(object sender, EventArgs e)
        {
            if (XDL07.IsConnected)
            {
                foreach (var channel in XDL07.Channels)//.Where(n => n.SerialNumber.EndsWith("B")))
                {
                    channel.EnableTx = true;
                    channel.DisplayTestValue();
                }
                Console.WriteLine("Just sent data.");
            }

        }

        private void BtnRX_Click(object sender, EventArgs e)
        {
            if (XDL07.IsConnected)
            {
                foreach (var channel in XDL07.Channels)//.Where(n => n.SerialNumber.EndsWith("B")))
                {
                    channel.EnableTx = false;
                    channel.DisplayTestValue();
                }

                Console.WriteLine("Just sent data.");
            }
        }

        public void Standby() 
        {

            if (XDL07.IsConnected)
            {
                foreach (var channel in XDL07.Channels)//.Where(n => n.SerialNumber.EndsWith("B")))
                {
                    channel.StandBy();

                    //channel.Power_Down_SW = !channel.Power_Down_SW;
                    //channel.SpiTransfer();
                    //channel.DisplayTestValue();
                }

                Console.WriteLine("Just sent data.");
            }
        }

        private void BtnStandby_Click(object sender, EventArgs e)
        {
            Standby();
        }

        private void MainForm_FormClosing(object sender, FormClosingEventArgs e)
        {
            Standby();
        }
    }
}
