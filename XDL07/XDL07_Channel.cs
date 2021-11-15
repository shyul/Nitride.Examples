using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using Nitride.EE.FTDI;

namespace Nitride.Example
{
    public class XDL07_Channel : IDisposable
    {
        public XDL07_Channel(string serialNum)
        {
            Ftdi = new FTDI();
            FTDI.FT_STATUS status = Ftdi.OpenBySerialNumber(serialNum);
            status |= Ftdi.MPSSE_Init_SPI();

            status |= Ftdi.Write(new byte[] { 0x82, 0x0, 0x0 });
            UpdateDBUS();// status |= Ftdi.Write(new byte[] { 0x80, 0x08, 0xFB });

            if (status == FTDI.FT_STATUS.FT_OK)
                Console.WriteLine(serialNum + ": " + status);
            else
                throw new Exception("Failed to create: " + serialNum);

            //int txBufferLength = TxBuffer.Length;


            TxBuffer[0] = 0x80;
            //TxBuffer[1] = DBUS;
            TxBuffer[2] = 0xFB;
            //TxBuffer[3] = (byte)(DBUS0_SPI_CLK ? 0x34 : 0x31);
            TxBuffer[4] = 0x1A;
            TxBuffer[5] = 0x00;

            TxBuffer[TxBuffer.Length - 3] = 0x80;
            //TxBuffer[34] = DBUS;
            TxBuffer[TxBuffer.Length - 1] = 0xFB;
        }

        ~XDL07_Channel() => Dispose();

        public void Dispose()
        {
            Ftdi.Close();
        }

        public FTDI Ftdi { get; }

        /*
        public void SpiTransfer(List<byte> data)
        {
            DBUS3_SPI_CS_B = false;
            UpdateDBUS();

            foreach (byte b in data)
            {
                uint rxByteCount = 0;
                Ftdi.Write(new byte[] { 0x34, 0x0, 0x0, b });
                Ftdi.GetRxBytesAvailable(ref rxByteCount);
                Console.WriteLine("rxByteCount = " + rxByteCount);
                if (rxByteCount > 0) 
                {
                    Ftdi.Read(out string buffer, rxByteCount, ref rxByteCount);
                    Console.WriteLine("rxByteCount = " + rxByteCount);
                }
            }

            DBUS3_SPI_CS_B = true;
            UpdateDBUS();
        }*/




        
        public void SpiTransfer(List<byte> data, bool check = false) 
        {
            List<byte> list = new();

            DBUS3_SPI_CS_B = false;
            list.AddRange(new byte[] { 0x80, DBUS, 0xFB }); // 3

            int length = data.Count - 1;
            list.AddRange(new byte[] { (byte)(DBUS0_SPI_CLK ? 0x34 : 0x31), (byte)(length & 0xFF), (byte)((length >> 8) & 0xFF) }); //3
            list.AddRange(data); //27

            DBUS3_SPI_CS_B = true;
            list.AddRange(new byte[] { 0x80, DBUS, 0xFB }); // 3
            Ftdi.Write(list.ToArray());

            Thread.Sleep(10);

            uint rxByteCount = 0;
            Ftdi.GetRxBytesAvailable(ref rxByteCount);
            //Console.WriteLine("rxByteCount = " + rxByteCount);
            if (rxByteCount == data.Count)
            {
                byte[] buffer = new byte[rxByteCount];
                Ftdi.Read(buffer, (uint)buffer.Length, ref rxByteCount);

                if(rxByteCount != data.Count && check) throw new Exception("rxByteCount = " + rxByteCount);
            }
            else if(check)
                throw new Exception("rxByteCount = " + rxByteCount);
        }



        public int TXEN_Delay { get; private set; } = 0; // 0 ~ 7; (3-bit)

        public int LDB_Delay { get; private set; } = 0; // 0 ~ 7; (3-bit)

        public bool Load_FBS { get; set; } = false;

        public int FBS_Address { get; set; } = 0; // 0 ~ 7; (3-bit)

        public bool Power_Down_NW { get; set; } = false;

        public bool Power_Down_NE { get; set; } = false;

        public bool Power_Down_SW { get; set; } = false;

        public bool Power_Down_SE { get; set; } = false;



        public int Cal_Mode { get; set; } = 0; // 0 ~ 7; (3-bit)

        public int TX_Temp_VGA { get; set; } = 0; // 5-bit

        public int RX_H_Temp_VGA { get; set; } = 0; // 6-bit

        public int RX_V_Temp_VGA { get; set; } = 0; // 6-bit

        public int Temp_Sense { get; set; } = 0; // 5-bit


        public int TX1_H_Power_Det { get; set; } = 0; // 5-bit

        public int TX2_H_Power_Det { get; set; } = 0; // 5-bit

        public int TX3_H_Power_Det { get; set; } = 0; // 5-bit

        public int TX4_H_Power_Det { get; set; } = 0; // 5-bit



        public int RX4_V_Phase { get; set; } = 0; // 6-bit

        public int RX4_V_VGA { get; set; } = 0; // 6-bit

        public int RX4_H_Phase { get; set; } = 0; // 6-bit

        public int RX4_H_VGA { get; set; } = 0; // 6-bit

        public int TX4_H_Phase { get; set; } = 0; // 6-bit

        public int TX4_H_VGA { get; set; } = 0; // 6-bit



        public int RX3_V_Phase { get; set; } = 0; // 6-bit

        public int RX3_V_VGA { get; set; } = 0; // 6-bit

        public int RX3_H_Phase { get; set; } = 0; // 6-bit

        public int RX3_H_VGA { get; set; } = 0; // 6-bit

        public int TX3_H_Phase { get; set; } = 0; // 6-bit

        public int TX3_H_VGA { get; set; } = 0; // 6-bit


        public int RX2_V_Phase { get; set; } = 0; // 6-bit

        public int RX2_V_VGA { get; set; } = 0; // 6-bit

        public int RX2_H_Phase { get; set; } = 0; // 6-bit

        public int RX2_H_VGA { get; set; } = 0; // 6-bit

        public int TX2_H_Phase { get; set; } = 30; // 6-bit

        public int TX2_H_VGA { get; set; } = 23; // 6-bit



        public int RX1_V_Phase { get; set; } = 17; // 6-bit

        public int RX1_V_VGA { get; set; } = 16; // 6-bit

        public int RX1_H_Phase { get; set; } = 7; // 6-bit

        public int RX1_H_VGA { get; set; } = 16; // 6-bit

        public int TX1_H_Phase { get; set; } = 21; // 6-bit

        public int TX1_H_VGA { get; set; } = 12; // 6-bit




        public byte[] TxBuffer = new byte[36]; //= new byte[36];
        public byte[] RxBuffer = new byte[27];

        public void SpiTransfer() 
        {
            DBUS3_SPI_CS_B = false;

            //Ftdi.Write(new byte[] { 0x80, DBUS, 0xFB });

            //Thread.Sleep(1);


            TxBuffer[1] = DBUS;
            TxBuffer[3] = (byte)(DBUS0_SPI_CLK ? 0x34 : 0x31);

            TxBuffer[10] = (byte)((RX_V_Temp_VGA >> 2) & 0xF);
            TxBuffer[11] = (byte)((RX_V_Temp_VGA & 0x3) + (RX_H_Temp_VGA & 0x3F));

            TxBuffer[12] = (byte)(((TX1_H_VGA & 0x3F) << 2) + ((TX1_H_Phase >> 4) & 0x3));
            TxBuffer[13] = (byte)(((TX1_H_Phase & 0xF) << 4) + ((RX1_H_VGA >> 2) & 0xF));
            TxBuffer[14] = (byte)(((RX1_H_VGA & 0x3) << 6) + (RX1_H_Phase & 0x3F));

            TxBuffer[15] = (byte)(((RX1_V_VGA & 0x3F) << 2) + ((RX1_V_Phase >> 4) & 0x3));
            TxBuffer[16] = (byte)(((RX1_V_Phase & 0xF) << 4) + ((TX2_H_VGA >> 2) & 0xF));
            TxBuffer[17] = (byte)(((TX2_H_VGA & 0x3) << 6) + (TX2_H_Phase & 0x3F));


            /*
            TxBuffer[1 + 27] = DBUS;
            TxBuffer[3 + 27] = (byte)(DBUS0_SPI_CLK ? 0x34 : 0x31);

            TxBuffer[10 + 27] = (byte)((RX_V_Temp_VGA >> 2) & 0xF);
            TxBuffer[11 + 27] = (byte)((RX_V_Temp_VGA & 0x3) + (RX_H_Temp_VGA & 0x3F));

            TxBuffer[12 + 27] = (byte)(((TX1_H_VGA & 0x3F) << 2) + ((TX1_H_Phase >> 4) & 0x3));
            TxBuffer[13 + 27] = (byte)(((TX1_H_Phase & 0xF) << 4) + ((RX1_H_VGA >> 2) & 0xF));
            TxBuffer[14 + 27] = (byte)(((RX1_H_VGA & 0x3) << 6) + (RX1_H_Phase & 0x3F));

            TxBuffer[15 + 27] = (byte)(((RX1_V_VGA & 0x3F) << 2) + ((RX1_V_Phase >> 4) & 0x3));
            TxBuffer[16 + 27] = (byte)(((RX1_V_Phase & 0xF) << 4) + ((TX2_H_VGA >> 2) & 0xF));
            TxBuffer[17 + 27] = (byte)(((TX2_H_VGA & 0x3) << 6) + (TX2_H_Phase & 0x3F));
            */



            DBUS3_SPI_CS_B = true;
            TxBuffer[TxBuffer.Length - 2] = DBUS;

            Ftdi.Write(TxBuffer);

            uint rxByteCount = 0;
            while (rxByteCount < RxBuffer.Length)
                Ftdi.GetRxBytesAvailable(ref rxByteCount);


            Ftdi.Read(RxBuffer, (uint)RxBuffer.Length, ref rxByteCount);





            for (int i = 0; i < RxBuffer.Length; i++)
            {
                Console.WriteLine(i + ":\tTX=0x" + TxBuffer[i + 6].ToString("X") + "\tRX=0x" + RxBuffer[i].ToString("X"));

            }

        }


        public FTDI.FT_STATUS UpdateDBUS() => Ftdi.Write(new byte[] { 0x80, DBUS, 0xFB });

        public byte DBUS => (byte)(((DBUS7_RX_EN ? 1 : 0) << 7) + ((DBUS6_TX_EN ? 1 : 0) << 6) + ((DBUS5_SW_VCTL ? 1 : 0) << 5) + ((DBUS4_SPI_LD ? 1 : 0) << 4) + ((DBUS3_SPI_CS_B ? 1 : 0) << 3) + ((DBUS2_SPI_DOUT ? 1 : 0) << 2) + ((DBUS1_SPI_DIN ? 1 : 0) << 1) + (DBUS0_SPI_CLK ? 1 : 0));

        // send clock
        public bool DBUS0_SPI_CLK { get; set; } = false;

        // send data
        public bool DBUS1_SPI_DIN { get; set; } = false;

        // return data
        public bool DBUS2_SPI_DOUT { get; set; } = false; // input

        public bool DBUS3_SPI_CS_B { get; set; } = true;

        public bool DBUS4_SPI_LD { get; set; } = true;

        public bool DBUS5_SW_VCTL { get; set; } = false;

        public bool DBUS6_TX_EN { get; set; } = false;

        public bool DBUS7_RX_EN { get; set; } = false;

        public FTDI.FT_STATUS UpdateCBUS() => Ftdi.Write(new byte[] { 0x82, CBUS, 0x0E });

        public byte CBUS => (byte)(((CBUS7_CAL_B1 ? 1 : 0) << 7) + ((CBUS6_CAL_B0 ? 1 : 0) << 6) + ((CBUS4_CAL_ACT ? 1 : 0) << 4) + ((CBUS3_FBS_B0 ? 1 : 0) << 3) + ((CBUS2_FBS_B2 ? 1 : 0) << 2) + ((CBUS1_FBS_B1 ? 1 : 0) << 1));

        public bool CBUS3_FBS_B0 { get; set; } = false; 

        public bool CBUS1_FBS_B1 { get; set; } = false;

        public bool CBUS2_FBS_B2 { get; set; } = false;

        public bool CBUS6_CAL_B0 { get; set; } = false; // input

        public bool CBUS7_CAL_B1 { get; set; } = false; // input

        public bool CBUS4_CAL_ACT { get; set; } = false; // input
    }
}
