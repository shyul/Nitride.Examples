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

            List<byte> list = new();
            list.AddRange(new byte[] { 0x80, 0x08, 0xFB });
            for (int i = 0; i< 27; i++) 
            {
                list.AddRange(new byte[] { 0x13, 0x7 });
                list.Add(0xAA);
            }
            list.AddRange(new byte[] { 0x80, 0x08, 0xFB });
            test_data = list.ToArray();

        }

        byte[] test_data { get; }

        private void BtnSPITest_Click(object sender, EventArgs e)
        {
            int count = 0;
            while (true)
                if (XDL07.IsConnected)
                {
                    foreach(var channel in XDL07.Channels) 
                    {
                        //channel.SpiTransfer(new List<byte>() { 0xAA, 0x55 }, count > -1);
                        count++;

                        channel.SpiTransfer();
                    }

                    Thread.Sleep(1000);

                    Console.WriteLine("Just sent data.");
                }
        }
    }
}
