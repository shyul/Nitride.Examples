using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Nitride.EE.FTDI;

namespace Nitride.Example
{
    public class XDL07_USB
    {
        public XDL07_USB()
        {
            FTDI ft = new();
            uint devCount = 0;
            FTDI.FT_STATUS status = ft.GetNumberOfDevices(ref devCount);
            Console.WriteLine("Device Count = " + devCount);
            FTDIDeviceList = new FTDI.FT_DEVICE_INFO_NODE[devCount];
            status |= ft.GetDeviceList(FTDIDeviceList);

            if (status == FTDI.FT_STATUS.FT_OK) 
            {
                for (int i = 0; i < devCount; i++)
                {
                    FTDI.FT_DEVICE_INFO_NODE dev = FTDIDeviceList[i];
                    Console.WriteLine("Id = " + dev.ID + " Desc = " + dev.Description + " sn = " + dev.SerialNumber);
                }
            }
        }

        private FTDI.FT_DEVICE_INFO_NODE[] FTDIDeviceList { get; set; }

        public List<XDL07_Channel> Channels { get; } = new();

        public bool IsConnected { get; private set; } = false;

        public FTDI.FT_STATUS Connect(string serialNum = "FT5LDNTP")//"FT4Q1LMS")
        {
            if (!IsConnected)
            {
                foreach (var sn in FTDIDeviceList.Where(n => n.SerialNumber.StartsWith(serialNum)).Select(n => n.SerialNumber))
                {
                    try
                    {
                        XDL07_Channel ch = new(sn);
                        Channels.Add(ch);
                    }
                    catch
                    {
                        Console.WriteLine("Failed to create: " + sn);
                        return FTDI.FT_STATUS.FT_DEVICE_NOT_FOUND;
                    }
                }

                IsConnected = true;
            }

            return FTDI.FT_STATUS.FT_OK;
        }




        /*
        public static FTDI FtdiChannelA { get; set; } = new FTDI();

        public static FTDI FtdiChannelB { get; set; } = new FTDI();

        public static FTDI.FT_STATUS Connect(string serialNum = "FT4Q1LMS")
        {
            FTDI.FT_STATUS status = FTDI.FT_STATUS.FT_OK;
            if (!IsConnected)
            {
                uint devCount = 0;

                try
                {
                    status = FtdiChannelB.GetNumberOfDevices(ref devCount);
                    Console.WriteLine("Device Count = " + devCount);
                    FTDIDeviceList = new FTDI.FT_DEVICE_INFO_NODE[devCount];
                    FtdiChannelB.GetDeviceList(FTDIDeviceList);

                    for (int i = 0; i < devCount; i++)
                    {
                        FTDI.FT_DEVICE_INFO_NODE dev = FTDIDeviceList[i];
                        Console.WriteLine("Id = " + dev.ID + " Desc = " + dev.Description + " sn = " + dev.SerialNumber);
                    }
                }
                catch
                {
                    Console.WriteLine("Driver not loaded");
                    return status;
                }

                if (status == FTDI.FT_STATUS.FT_OK && FTDIDeviceList.Where(n => n.SerialNumber == serialNum + "A").Count() > 0)
                {
                    status |= FtdiChannelA.OpenBySerialNumber(serialNum + "A");
                    status |= FtdiChannelA.MPSSE_Init_SPI();
                    status |= FtdiChannelA.Write(FTDI.SPI_CS_H);
                    status |= FtdiChannelA.Write(new byte[] { 0x82, 0x0, 0x0 });
                    status |= FtdiChannelA.Write(new byte[] { 0x80, 0x08, 0xFB });
                    Console.WriteLine(serialNum + "A: " + status);
                }

                if (status == FTDI.FT_STATUS.FT_OK && FTDIDeviceList.Where(n => n.SerialNumber == serialNum + "B").Count() > 0)
                {
                    status |= FtdiChannelB.OpenBySerialNumber(serialNum + "B");
                    status |= FtdiChannelB.MPSSE_Init_SPI();
                    status |= FtdiChannelB.Write(FTDI.SPI_CS_H);
                    status |= FtdiChannelB.Write(new byte[] { 0x82, 0x0, 0x0 });
                    status |= FtdiChannelB.Write(new byte[] { 0x80, 0x08, 0xFB });
                    Console.WriteLine(serialNum + "B: " + status);
                }

                if (status == FTDI.FT_STATUS.FT_OK) IsConnected = true;
            }

            return status;
        }
        */
    }
}
