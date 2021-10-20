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

        private void BtnFindDevice_Click(object sender, EventArgs e)
        {
            Guid guid = Guid.Parse(textBoxGuid.Text);
            Console.WriteLine("GUID is: " + guid.ToString().ToUpper());

            var pathList = NativeMethods.FindDevicePathList(guid);

            foreach(var path in pathList) 
            {
                Console.WriteLine("path is: " + path);
            }
            
            UsbDevice = new WinUsbDevice(pathList.Last());
            UsbDevice.PrintInfo();
        }
    }
}
