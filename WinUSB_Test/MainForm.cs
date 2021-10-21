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
                List<int> data = new();

                int i = 0;
                for (; i < databuffer.Length; i += 2)
                {
                    //short d = (short)(((char)databuffer[i + 1]) * 256);



                    int d = (databuffer[i + 1] << 10) | (databuffer[i] << 2);

                    d = ((d < 32768) ? d : (d - 65536)) / 4;

                    //short d = (short)(((databuffer[i + 1] << 10) | (databuffer[i] << 2)) / 4);
                    data.Add(d);
                }

                string s = "";
                i = 1;
                foreach (var b in data.Take(64))
                {
                    s += b.ToString() + "\t";
                    if (i % 16 == 0) s += "\n";
                    i++;
                }

                Console.WriteLine(s + "\nbytesRead = " + bytesRead);
            }
            else
            {
                Console.WriteLine("failed");
            }
        }

        private void BtnBulkReceive_Click(object sender, EventArgs e)
        {
            /*
            int packetLength = 65536;
            int packetCount = 512;



            List<byte[]> buffer = new();

            int i = 0;
            for(; i < packetCount; i++) 
            {



                buffer.Add(new byte[packetLength]);
            }
            */


            byte[] databuffer = new byte[65536];
            uint bytesRead = (uint)databuffer.Length;

            int i = 0;



            while (i < 512 && BulkIn.ReceiveData(ref bytesRead, databuffer))//databuffer)) 
            {
                //buffer.AddRange(databuffer);
                i++;
            }

            Console.WriteLine("count: " + i);
            //Console.WriteLine("Buffer count: " + buffer.Count);
        }

        private void BtnBulkReceive2_Click(object sender, EventArgs e)
        {
            int packetLength = 65536;
            int packetCount = 16;
            List<byte> buffer = new();

            int success = 0;
            //List<int> data = new();


            for (int i = 0; i < packetCount; i++)
            {
                byte[] databuffer = new byte[65536];
                uint bytesRead = (uint)databuffer.Length;

                if (BulkIn.ReceiveData(ref bytesRead, databuffer))
                {
                    buffer.AddRange(databuffer);
                    success++;
                }
            }
            Console.WriteLine("success count: " + success);
            Console.WriteLine("Buffer count: " + buffer.Count);

            StringBuilder s = new();

            if(success == packetCount) 
            {
                int j = 0;
                string ch1 = string.Empty;
                for (int i = 0; i < buffer.Count; i += 2)
                {
                    int d = (buffer[i + 1] << 10) | (buffer[i] << 2);

                    d = ((d < 32768) ? d : (d - 65536)) / 4;

                    //short d = (short)(((databuffer[i + 1] << 10) | (databuffer[i] << 2)) / 4);
                    //data.Add(d);

                   
                    if (j % 2 == 0)
                    {
                        ch1 = d.ToString();
                    }
                    else
                    {
                        s.AppendLine(ch1 + "," + d.ToString());
                    }



                    j++;
                }

            }


            s.ToFile("B:\\samples.txt");
        }
    }
}
