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
using MadWizard.WinUSBNet;

namespace WindowsFormsApp1
{
    public partial class Form1 : Form
    {
        USBDevice Device { get; set; } = null;

        private Random Random { get; } = new Random();

        byte[] TestBuffer { get; set; } = new byte[16 * 1024 * 1024];

        public Form1()
        {
            InitializeComponent();

            var devices = USBDevice.GetDevices("{6AE77B78-518B-493D-A9DD-3A64E87EA3F9}");

            for (int i = 0; i < TestBuffer.Length; i++)
            {
                int next = Random.Next();
                TestBuffer[i] = (byte)next;
            }

            foreach (var dev in devices)
            {
                Console.WriteLine(dev.DevicePath);
            }

            if (devices.Length > 0)
            {
                Device = new USBDevice(devices.First());
                Device.ControlPipeTimeout = 500;

                if (Device.Pipes.Where(n => n.Address == 0x2).FirstOrDefault() is USBPipe pipe)
                {
                    pipe.Policy.PipeTransferTimeout = 500;
                }


                if (Device.Pipes.Where(n => n.Address == 0x81).FirstOrDefault() is USBPipe rxPipe)
                {
                    rxPipe.Policy.PipeTransferTimeout = 500;
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

        int BaseNumber = 0;

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




        public void SendCommand(ushort command, byte[] parameter = null)
        {
            if (Device is USBDevice dev)
            {
                List<byte> sendbuffer = new List<byte>() { (byte)(command & 0xFF), (byte)((command >> 8) & 0xFF) };
                if (dev.Pipes.Where(n => n.Address == 0x4).FirstOrDefault() is USBPipe pipe)
                {
        

                    if (parameter is null)
                    {
                        sendbuffer.AddRange(new byte[62]);
                    }
                    else
                    {
                        sendbuffer.AddRange(parameter);
                        int zeroCount = 62 - parameter.Length;

                        if (zeroCount > 0)
                        {
                            sendbuffer.AddRange(new byte[zeroCount]);
                        }
                    }

                    /*
                    for (int i = 0; i < sendbuffer.Count; i++)
                    {
                        Console.Write(sendbuffer[i] + " ");
                    }
                    Console.Write("\n");*/

                    pipe.Write(sendbuffer.ToArray());
                    //BaseNumber++;
                }

                if (dev.Pipes.Where(n => n.Address == 0x83).FirstOrDefault() is USBPipe pipeRx)
                {
                    byte[] recvbuffer = new byte[64];
                    int bytesRead = recvbuffer.Length;

                    bytesRead = pipeRx.Read(recvbuffer);//, 0, databuffer.Length);

                    if (bytesRead > 0)
                    {
                        if (recvbuffer[0] == 0xD && recvbuffer[1] == 0x60 && recvbuffer[2] == sendbuffer[0] && recvbuffer[3] == sendbuffer[1])
                        {
                            Console.WriteLine("Command Success");
                        }
                        else
                        {
                            Console.Write("Command Failed: ");
                            for (int i = 0; i < bytesRead; i++)
                            {
                                Console.Write("0x" + recvbuffer[i].ToString("X") + " ");
                            }

                            Console.Write("\n");
                        }



                    }
                    else
                    {
                        Console.WriteLine("failed");
                    }
                }
            }
        }

        public const ushort STREAM_COMMAND_SET_SINGLE_READ = 0x1000;
        public const ushort STREAM_COMMAND_SET_LOOP_READ = 0x1001;
        public const ushort STREAM_COMMAND_SET_READ_BASEADDR = 0x2000;
        public const ushort STREAM_COMMAND_START_READ = 0x3000;
        public const ushort STREAM_COMMAND_STOP_READ = 0x4000;
        public const ushort STREAM_COMMAND_READ_STATUS = 0x5000;

        public const ushort STREAM_COMMAND_SET_SINGLE_WRITE = 0xA000;
        public const ushort STREAM_COMMAND_SET_LOOP_WRITE = 0xA001;
        public const ushort STREAM_COMMAND_SET_WRITE_BASEADDR = 0xB000;
        public const ushort STREAM_COMMAND_START_WRITE = 0xC000;
        public const ushort STREAM_COMMAND_STOP_WRITE = 0xD000;
        public const ushort STREAM_COMMAND_WRITE_STATUS = 0xE000;

        private void BtnSetSingleRead_Click(object sender, EventArgs e)
        {
            SendCommand(STREAM_COMMAND_SET_SINGLE_READ);
        }

        private void BtnSetLoopRead_Click(object sender, EventArgs e)
        {
            SendCommand(STREAM_COMMAND_SET_LOOP_READ);
        }

        private void BtnSetReadBaseAddress_Click(object sender, EventArgs e)
        {
            SetReadAddress(0x800000000);
        }

        void SetReadAddress(ulong addr)
        {
            ulong baseAddess = addr;
            SendCommand(STREAM_COMMAND_SET_READ_BASEADDR, new byte[] { (byte)(baseAddess & 0xFF), (byte)((baseAddess << 8) & 0xFF), (byte)((baseAddess >> 16) & 0xFF), (byte)((baseAddess >> 24) & 0xFF), (byte)((baseAddess >> 32) & 0xFF), (byte)((baseAddess >> 40) & 0xFF), (byte)((baseAddess >> 48) & 0xFF), (byte)((baseAddess >> 56) & 0xFF) });
        }

        private void BtnSetStartRead_Click(object sender, EventArgs e)
        {
            SendCommand(STREAM_COMMAND_START_READ);
        }

        private void BtnStopRead_Click(object sender, EventArgs e)
        {
            SendCommand(STREAM_COMMAND_STOP_READ);
        }



        private void BtnReceiveOnce_Click(object sender, EventArgs e)
        {
            if (Device is USBDevice dev)
            {
                if (dev.Pipes.Where(n => n.Address == 0x81).FirstOrDefault() is USBPipe pipe)
                {
                    byte[] databuffer = new byte[65536];
                    int bytesRead = 0;// databuffer.Length;

                    try
                    {
                        bytesRead = pipe.Read(databuffer);//, 0, databuffer.Length);
                    }
                    catch (USBException ex)
                    {
                        Console.WriteLine(ex.Message);
                    }


                    if (bytesRead > 0)
                    {
                        string s = "";
                        int i = 1;
                        foreach (var b in databuffer.Take(64))
                        {
                            s += b.ToString() + "\t";
                            if (i % 8 == 0) s += "\n";
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

        private void BtnReceiveBulk_Click(object sender, EventArgs e)
        {
        
            if (Device is USBDevice dev && dev.Pipes.Where(n => n.Address == 0x81).FirstOrDefault() is USBPipe pipe)
            {
                BtnReceiveBulk.Enabled = false;
                byte[] databuffer = new byte[65536];
                uint bytesRead = (uint)databuffer.Length;

                int i = 0;
                DateTime start = DateTime.Now;
                while (i < 4096 && pipe.Read(databuffer) == databuffer.Length)//databuffer)) 
                {
                    //buffer.AddRange(databuffer);
                    i++;
                }

                TimeSpan sp = DateTime.Now - start;
                Console.WriteLine("Transfer Speed = " + ((i * 65536 / 1024 / 1024) / (sp.TotalSeconds)) + " MB / s");
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
                while (i < 4096 && success)//databuffer)) 
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

        private void BtnReceiveForever_Click(object sender, EventArgs e)
        {
            if (Device is USBDevice dev && dev.Pipes.Where(n => n.Address == 0x81).FirstOrDefault() is USBPipe pipe)
            {
                BtnReceiveBulk.Enabled = false;
                byte[] databuffer = new byte[65536];
                uint bytesRead = (uint)databuffer.Length;

                int i = 0;
                DateTime start = DateTime.Now;
                while (true)//databuffer)) 
                {
                    try
                    {
                        pipe.Read(databuffer);
                    }
                    catch (USBException ex)
                    {
                        Console.WriteLine(ex.Message);
                    }

                    if (i % 4096 == 0)
                    {
                        TimeSpan sp = DateTime.Now - start;
                        Console.WriteLine("Transfer Speed = " + (256 / sp.TotalSeconds) + " MB / s");
                        start = DateTime.Now;
                    }
                    //buffer.AddRange(databuffer);
                    i++;
                }


                Console.WriteLine("count: " + i);


                BtnReceiveBulk.Enabled = true;
            }
        }

        private void BtnSetSingleWrite_Click(object sender, EventArgs e)
        {
            SendCommand(STREAM_COMMAND_SET_SINGLE_WRITE);
        }

        private void BtnSetLoopWrite_Click(object sender, EventArgs e)
        {
            SendCommand(STREAM_COMMAND_SET_LOOP_WRITE);
        }

        private void BtnSetWriteBaseAddress_Click(object sender, EventArgs e)
        {
            SetWriteAddress(0x800000000);
        }

        void SetWriteAddress(ulong addr)
        {
            ulong baseAddess = addr;
            SendCommand(STREAM_COMMAND_SET_WRITE_BASEADDR, new byte[] { (byte)(baseAddess & 0xFF), (byte)((baseAddess << 8) & 0xFF), (byte)((baseAddess >> 16) & 0xFF), (byte)((baseAddess >> 24) & 0xFF), (byte)((baseAddess >> 32) & 0xFF), (byte)((baseAddess >> 40) & 0xFF), (byte)((baseAddess >> 48) & 0xFF), (byte)((baseAddess >> 56) & 0xFF) });
        }

        private void BtnStartWrite_Click(object sender, EventArgs e)
        {
            SendCommand(STREAM_COMMAND_START_WRITE);
        }

        private void BtnStopWrite_Click(object sender, EventArgs e)
        {
            SendCommand(STREAM_COMMAND_STOP_WRITE);
        }

        private void BtnSendOnce_Click(object sender, EventArgs e)
        {
            if (Device is USBDevice dev)
            {
                if (dev.Pipes.Where(n => n.Address == 0x2).FirstOrDefault() is USBPipe pipe)
                {

                    pipe.Write(TestBuffer, 0, 65536);//, 0, databuffer.Length);


                }

            }
        }

        private void BtnSendBulk_Click(object sender, EventArgs e)
        {
            if (Device is USBDevice dev)
            {
                if (dev.Pipes.Where(n => n.Address == 0x2).FirstOrDefault() is USBPipe pipe)
                {
                    /*
                    byte[] databuffer = new byte[0x2000000];

                    for (int i = 0; i < databuffer.Length; i++)
                    {
                        databuffer[i] = (byte)(i + BaseNumber);
                    }
                    
                    for (int i = 0; i < 64; i++)
                    {
                        Console.Write(databuffer[i] + " ");
                    }
                    Console.Write("\n");*/

                    DateTime start = DateTime.Now;

                    //for (int i = 0; i < databuffer.Length; i += 65536)
                    for (int i = 0; i < TestBuffer.Length; i += 65536)
                    {
                        pipe.Write(TestBuffer, i, 65536);
                        //pipe.Write(databuffer, i, 65536);
                    }

                    TimeSpan sp = DateTime.Now - start;
                    Console.Write("\n");
                    Console.WriteLine("Transfer Speed = " + (TestBuffer.Length / 1024 / 1024 / (sp.TotalSeconds)) + " MB / s");
                    BaseNumber++;
                }

            }
        }

        private void BtnCheck_Click(object sender, EventArgs e)
        {
            BtnCheck.Enabled = false;


            if (Device is USBDevice dev)
            {
                SendCommand(STREAM_COMMAND_STOP_WRITE);
                //Thread.Sleep(100);
                SendCommand(STREAM_COMMAND_STOP_READ);
                //Thread.Sleep(100);
                SendCommand(STREAM_COMMAND_SET_LOOP_READ);
               // Thread.Sleep(100);
                SendCommand(STREAM_COMMAND_SET_LOOP_WRITE);
                //Thread.Sleep(100);
                SetReadAddress(0x800000000);
                //Thread.Sleep(100);
                SetWriteAddress(0x800000000);
                //Thread.Sleep(100);
                SendCommand(STREAM_COMMAND_START_WRITE);
                Thread.Sleep(100);
                if (dev.Pipes.Where(n => n.Address == 0x2).FirstOrDefault() is USBPipe pipe)
                {
                    DateTime start = DateTime.Now;

                    //for (int i = 0; i < databuffer.Length; i += 65536)
                    for (int i = 0; i < TestBuffer.Length; i += 65536)
                    {
                        pipe.Write(TestBuffer, i, 65536);
                        //pipe.Write(databuffer, i, 65536);
                    }

                    TimeSpan sp = DateTime.Now - start;
                    Console.Write("\n");
                    Console.WriteLine("Transfer Speed = " + (TestBuffer.Length / 1024 / 1024 / (sp.TotalSeconds)) + " MB / s");
                    BaseNumber++;
                }
                Thread.Sleep(200);
                SendCommand(STREAM_COMMAND_STOP_WRITE);
                //Thread.Sleep(200);
                SendCommand(STREAM_COMMAND_START_READ);
                Thread.Sleep(100);
                if (dev.Pipes.Where(n => n.Address == 0x81).FirstOrDefault() is USBPipe pipeRx)
                {
                    BtnReceiveBulk2.Enabled = false;
                    List<byte> result = new List<byte>();

                    DateTime start = DateTime.Now;
                    for (int i = 0; i < TestBuffer.Length; i += 65536)
                    {
                        byte[] databuffer = new byte[65536];
                        pipeRx.Read(databuffer);
                        result.AddRange(databuffer);
                    }

                    TimeSpan sp = DateTime.Now - start;
                    Console.WriteLine("Transfer Speed = " + ((TestBuffer.Length / 1024 / 1024) / (sp.TotalSeconds)) + " MB / s");

                    bool success = true;
                    if (TestBuffer.Length == result.Count)
                        for (int i = 0; i < TestBuffer.Length; i++)
                        {
                            if (result[i] != TestBuffer[i])
                            {
                                success = false;
                                Console.WriteLine("i = " + i + "; result = " + result[i] + "; TestBuffer = " + TestBuffer[i]);
                                break;
                            }
                        }

                    Console.WriteLine("Tested success? " + success);
                }

                Thread.Sleep(100);

                SendCommand(STREAM_COMMAND_STOP_READ);
            }
            BtnCheck.Enabled = true;







        }
    }
}
