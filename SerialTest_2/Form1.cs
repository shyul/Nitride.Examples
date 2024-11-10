using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.IO.Ports;
using System.Threading;

namespace SerialTest_2
{
    public partial class Form1 : Form
    {
        public static SerialPort SerialPort = new SerialPort();

        public static Task ReadTask;

        public static void Read()
        {
            while (true) 
            {
                try
                {
                    if (SerialPort.IsOpen)
                    {
                        //SerialPort.ReadLine();
                        //byte[] data = Encoding.ASCII.GetBytes(SerialPort.ReadLine());
                        //SerialPort.Read();
                        Console.Write("Print Message: " + SerialPort.ReadLine());
                        /*
                        foreach (var d in data)
                        {
                            Console.Write(d + " ");
                        }*/

                        Console.Write(" EOB\n\r");
                    }
                }
                catch (TimeoutException)
                {
                    Thread.Sleep(20);
                }
            }

        }

        public Form1()
        {
            Console.WriteLine("Available Ports:");
            foreach (string s in SerialPort.GetPortNames())
            {
                Console.WriteLine("   {0}", s);
            }

            SerialPort.PortName = "COM3";
            SerialPort.BaudRate = 115200;
            SerialPort.Parity = Parity.None;
            SerialPort.StopBits = StopBits.One;
            SerialPort.DataBits = 8;
            SerialPort.RtsEnable = false;
            SerialPort.Handshake = Handshake.XOnXOff;
            SerialPort.ReadTimeout = 500;
            SerialPort.WriteTimeout = 500;
            SerialPort.NewLine = "\0";

            ReadTask = new Task(() => { Read(); });
          

            InitializeComponent();
        }

        private void BtnOpen_Click(object sender, EventArgs e)
        {
            try
            {
                if (!SerialPort.IsOpen)
                    SerialPort.Open();

                if (SerialPort.IsOpen && ReadTask.Status != TaskStatus.Running)
                    ReadTask.Start();
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
        }

        private void BtnWriteMessage_Click(object sender, EventArgs e)
        {
            byte[] buffer = new byte[] { 0x12, 0x11, 0x30, 0x55, 0x0 };// 0x4, 0x0 };

            try
            {
                //char c = (char)0x02;
                //SerialPort.Write(c+"Henlo My Fren:)\0");
                SerialPort.Write(buffer, 0, buffer.Length);
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
        }
    }
}
