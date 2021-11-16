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
        XDL07_USB XDL07;// = new();

        public MainForm()
        {
            XDL07 = new();
            XDL07.Connect();

            InitializeComponent();
        }

        int count = 0;

        private void BtnSPITest_Click(object sender, EventArgs e)
        {
          
            //while (true)
            if (XDL07.IsConnected)
            {
                foreach (var channel in XDL07.Channels.Where(n => n.SerialNumber.EndsWith("B")))
                {
                    //channel.SpiTransfer(new List<byte>() { 0xAA, 0x55 }, count > -1);
                    count++;
                    int i = count;

                    channel.RX4_V_Phase = (6 + i) % 63;
                    channel.RX4_V_VGA = 0;// (7 + i) % 63;
                    channel.RX4_H_Phase = (8 + i) % 63;
                    channel.RX4_H_VGA = 10;//(9 + i) % 63;
                    channel.TX4_H_Phase = (10 + i) % 63;
                    channel.TX4_H_VGA = 10;//(11 + i) % 63;

                    channel.RX3_V_Phase = (12 + i) % 63;
                    channel.RX3_V_VGA = 0;//(13 + i) % 63;
                    channel.RX3_H_Phase = (14 + i) % 63;
                    channel.RX3_H_VGA = 10;//(15 + i) % 63;
                    channel.TX3_H_Phase = (16 + i) % 63;
                    channel.TX3_H_VGA = 10;//(17 + i) % 63;

                    channel.RX2_V_Phase = (18 + i) % 63;
                    channel.RX2_V_VGA = 0;//(19 + i) % 63;
                    channel.RX2_H_Phase = (20 + i) % 63;
                    channel.RX2_H_VGA = 10;//(21 + i) % 63;
                    channel.TX2_H_Phase = (22 + i) % 63;
                    channel.TX2_H_VGA = 10;//(23 + i) % 63;

                    channel.RX1_V_Phase = (24 + i) % 63;
                    channel.RX1_V_VGA = 0;//(25 + i) % 63;
                    channel.RX1_H_Phase = (26 + i) % 63;
                    channel.RX1_H_VGA = 10;//(27 + i) % 63;
                    channel.TX1_H_Phase = (28 + i) % 63;
                    channel.TX1_H_VGA = 10;//(29 + i) % 63;


                    channel.SpiTransfer();

                    channel.DisplayTestValue();
                }

                //Thread.Sleep(1000);

                Console.WriteLine("Just sent data.");
            }
        }

        private void BtnTX_Click(object sender, EventArgs e)
        {
            if (XDL07.IsConnected)
            {
                foreach (var channel in XDL07.Channels.Where(n => n.SerialNumber.EndsWith("B")))
                {
                    channel.EnableTx = true;
                }
                Console.WriteLine("Just sent data.");
            }

        }

        private void BtnRX_Click(object sender, EventArgs e)
        {
            if (XDL07.IsConnected)
            {
                foreach (var channel in XDL07.Channels.Where(n => n.SerialNumber.EndsWith("B")))
                {
                    channel.EnableTx = false;
                }

                Console.WriteLine("Just sent data.");
            }
        }

        private void BtnSW_Click(object sender, EventArgs e)
        {
            if (XDL07.IsConnected)
            {
                foreach (var channel in XDL07.Channels.Where(n => n.SerialNumber.EndsWith("B")))
                {
                    channel.Power_Down_SW = !channel.Power_Down_SW;
                    channel.SpiTransfer();
                    channel.DisplayTestValue();
                }

                Console.WriteLine("Just sent data.");
            }
        }
    }
}
