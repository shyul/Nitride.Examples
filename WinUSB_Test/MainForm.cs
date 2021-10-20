using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Nitride.EE.WinUSB;

namespace Nitride.Example
{
    public partial class MainForm : Form
    {
        public WinUsbDevice UsbDevice { get; private set; }

        public MainForm()
        {
            InitializeComponent();
        }

        public BulkInEndPoint BulkIn { get; private set; }

        private void BtnFindDevice_Click(object sender, EventArgs e)
        {
            Guid guid = Guid.Parse(textBoxGuid.Text);
            Console.WriteLine("GUID is: " + guid.ToString().ToUpper());
            //Console.WriteLine("Start -1...");
            var pathList = NativeMethods.FindDevicePathList(guid);

            Console.WriteLine("found devices: " + pathList.Length);

            foreach (var path in pathList) 
            {
                Console.WriteLine("path is: " + path);
            }
            
            if(pathList.Length > 0) 
            {
                UsbDevice = new WinUsbDevice(pathList.Last());

                if (UsbDevice.Interfaces.FirstOrDefault() is UsbInterface iface && iface.EndPoints.Where(n => n.PipeId == 0x81).FirstOrDefault() is BulkInEndPoint bep)
                    BulkIn = bep;

                UsbDevice.PrintInfo();
            }


        }

        private void BtnSingleReceive_Click(object sender, EventArgs e)
        {
            byte[] databuffer = new byte[65536];
            uint bytesRead =  (uint)databuffer.Length;
            bool success = BulkIn.ReceiveData(ref bytesRead, databuffer);

            if (success)
            {
                List<int> data = new List<int>();


                for (int i = 0; i < databuffer.Length; i += 2)
                {
                    //short d = (short)(((char)databuffer[i + 1]) * 256);



                    int d = (databuffer[i + 1] << 10) | (databuffer[i] << 2);

                    d = ((d < 32768) ? d : (d - 65536)) / 4;

                    //short d = (short)(((databuffer[i + 1] << 10) | (databuffer[i] << 2)) / 4);
                    data.Add(d);
                }

                string s = "";

                foreach (short b in data.Take(64))
                {
                    s += b.ToString() + "\t";

                }

                Console.WriteLine(s);
            }
            else
            {
                Console.Write("failed");
            }
        }
    }
}
