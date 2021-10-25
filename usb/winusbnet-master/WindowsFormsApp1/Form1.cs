using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using MadWizard.WinUSBNet;

namespace WindowsFormsApp1
{
    public partial class Form1 : Form
    {
        USBDevice Device { get; set; } = null;

        public Form1()
        {
            InitializeComponent();

            var devices = USBDevice.GetDevices("{6AE77B78-518B-493D-A9DD-3A64E87EA3F9}");

            foreach(var dev in devices)
            {
                Console.WriteLine(dev.DevicePath);
            }

            if(devices.Length > 0)
            {
                Device = new USBDevice(devices.First());

            }


        }

        private void BtnReceiveOnce_Click(object sender, EventArgs e)
        {
            if(Device is USBDevice dev)
            {
                if( dev.Pipes.Where(n => n.Address == 0x81).FirstOrDefault() is USBPipe pipe)
                {
                    byte[] databuffer = new byte[65536];
                    int bytesRead = databuffer.Length;


                    bytesRead = pipe.Read(databuffer);//, 0, databuffer.Length);


                    if (bytesRead > 0)
                    {
                        string s = "";
                        int i = 1;
                        foreach (var b in databuffer.Take(64))
                        {
                            s += b.ToString() + "\t";
                            if (i % 16 == 0) s += "\n";
                            i++;
                        }


                        /*
                        List<int> data = new List<int>();

                        int i = 0;
                        for (; i < databuffer.Length; i += 2)
                        {
                            //short d = (short)(((char)databuffer[i + 1]) * 256);



                            int d = (databuffer[i + 1] << 10) | (databuffer[i] << 2);

                            d = ((d < 32768) ? d : (d - 65536)) / 4;

                            //short d = (short)(((databuffer[i + 1] << 10) | (databuffer[i] << 2)) / 4);
                            data.Add(d);
                        }

       
                        foreach (var b in data.Take(64))
                        {
                            s += b.ToString() + "\t";
                            if (i % 16 == 0) s += "\n";
                            i++;
                        }*/

                        Console.WriteLine(s + "\nbytesRead = " + bytesRead);
                    }
                    else
                    {
                        Console.WriteLine("failed");
                    }
                }

            }
        }

        private void BtnReceiveInterrupt_Click(object sender, EventArgs e)
        {
            if (Device is USBDevice dev)
            {
                if (dev.Pipes.Where(n => n.Address == 0x83).FirstOrDefault() is USBPipe pipe)
                {
                    byte[] databuffer = new byte[64];
                    int bytesRead = databuffer.Length;


                    bytesRead = pipe.Read(databuffer);//, 0, databuffer.Length);

                    if (bytesRead > 0)
                    {
                        string s = Encoding.UTF8.GetString(databuffer);

                        Console.WriteLine(s + "\nbytesRead = " + bytesRead);
                    }
                    else
                    {
                        Console.WriteLine("failed");
                    }
                }

            }
        }

        int BaseNumber = 100;

        private void BtnSendInterrupt_Click(object sender, EventArgs e)
        {
            if (Device is USBDevice dev)
            {
                if (dev.Pipes.Where(n => n.Address == 0x4).FirstOrDefault() is USBPipe pipe)
                {
                    byte[] databuffer = new byte[64];
                    int bytesRead = databuffer.Length;

                    for(byte i = 0; i < databuffer.Length; i++)
                    {
                        databuffer[i] = (byte)(i + BaseNumber);
                    }

                    for (int i = 0; i < databuffer.Length; i++)
                    {
                        Console.Write(databuffer[i] + " ");
                    }
                    Console.Write("\n");

                    pipe.Write(databuffer);
                    BaseNumber++;
                }

            }
        }

        private void BtnSendBulk_Click(object sender, EventArgs e)
        {
            if (Device is USBDevice dev)
            {
                if (dev.Pipes.Where(n => n.Address == 0x2).FirstOrDefault() is USBPipe pipe)
                {
                    Console.WriteLine("Found Pipe");

                    byte[] databuffer = new byte[0x2000000];
                    //int bytesRead = databuffer.Length;
                    Console.WriteLine("Build DataBuffer");
                    for (int i = 0; i < databuffer.Length; i++)
                    {
                        databuffer[i] = (byte)(i + BaseNumber);
                    }
                    /*
                    for (int i = 0; i < databuffer.Length; i++)
                    {
                        Console.Write(databuffer[i] + " ");
                    }
                    Console.Write("\n");*/

                    DateTime start = DateTime.Now;

                    for(int i = 0; i < databuffer.Length; i += 65536)
                    {
                        pipe.Write(databuffer, i, 65536);
                        //Console.Write(".");
                    }
                    
                    TimeSpan sp = DateTime.Now - start;
                    Console.Write("\n");
                    Console.WriteLine("Transfer Speed = " + (databuffer.Length / 1024 / 1024 / (sp.TotalSeconds)) + " MB / s");
                    BaseNumber++;
                }

            }
        }

        private void BtnReceiveBulk_Click(object sender, EventArgs e)
        {
        
            if (Device is USBDevice dev && dev.Pipes.Where(n => n.Address == 0x81).FirstOrDefault() is USBPipe pipe)
            {
                BtnReceiveBulk.Enabled = false;
                byte[] databuffer = new byte[65536];
                uint bytesRead = (uint)databuffer.Length;

                int i = 0;
                while (i < 512 && pipe.Read(databuffer) == databuffer.Length)//databuffer)) 
                {
                    //buffer.AddRange(databuffer);
                    i++;
                }

                Console.WriteLine("count: " + i);
                BtnReceiveBulk.Enabled = true;
            }
        }

        private void BtnReceiveBulk2_Click(object sender, EventArgs e)
        {
            if (Device is USBDevice dev && dev.Pipes.Where(n => n.Address == 0x81).FirstOrDefault() is USBPipe pipe)
            {
                BtnReceiveBulk2.Enabled = false;
                List<byte> result = new List<byte>();

                int i = 0;
                bool success = true;
                DateTime start = DateTime.Now;
                while (i < 1024 && success)//databuffer)) 
                {
                    byte[] databuffer = new byte[65536];
                    success = pipe.Read(databuffer) == databuffer.Length;

                    if (success)
                    {
                        result.AddRange(databuffer);
                    }
                     
                    else
                        Console.WriteLine("Whoopsie! " + i); 

                    i++;
                }
                TimeSpan sp = DateTime.Now - start;

                Console.WriteLine("Transfer Speed = " + ((i * 65536 / 1024 / 1024) / (sp.TotalSeconds)) + " MB / s");
                Console.WriteLine("count: " + i);
                Console.WriteLine("list count: " + result.Count);

                BtnReceiveBulk2.Enabled = true;
            }
        }


    }
}
