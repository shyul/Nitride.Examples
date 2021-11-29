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
            SerialNumber = serialNum;
            Ftdi = new FTDI();
            FTDI.FT_STATUS status = Ftdi.OpenBySerialNumber(SerialNumber);
            status |= Ftdi.MPSSE_Init_SPI();

            status |= Ftdi.Write(new byte[] { 0x82, 0x0, 0x0 });
            UpdateDBUS();// status |= Ftdi.Write(new byte[] { 0x80, 0x08, 0xFB });
            UpdateCBUS();

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



            TxBuffer[TxBuffer.Length - 9] = 0x80;
            //TxBuffer[34] = DBUS;
            TxBuffer[TxBuffer.Length - 7] = 0xFB;

            TxBuffer[TxBuffer.Length - 6] = 0x80;
            //TxBuffer[34] = DBUS;
            TxBuffer[TxBuffer.Length - 4] = 0xFB;

            TxBuffer[TxBuffer.Length - 3] = 0x80;
            //TxBuffer[34] = DBUS;
            TxBuffer[TxBuffer.Length - 1] = 0xFB;

            //Initialize_Test_Values();

            ChannelControl = new ChannelControl(this);
        }

        ~XDL07_Channel() => Dispose();

        public void Dispose()
        {
            Ftdi.Close();
        }

        public FTDI Ftdi { get; }


        public string SerialNumber { get; }


        public ChannelControl ChannelControl { get; }

        public int TXEN_Delay { get; private set; } = 0; // 0 ~ 7; (3-bit)

        public int LDB_Delay { get; private set; } = 0; // 0 ~ 7; (3-bit)

        public bool Load_FBS { get; set; } = false;

        public int FBS_Address { get; set; } = 0; // 0 ~ 7; (3-bit)

        // 1
        public bool Power_Down_NW => ChannelControl.ElementControl1.PowerOff; //{ get; set; } = false;

        // 2
        public bool Power_Down_NE => ChannelControl.ElementControl2.PowerOff; //{ get; set; } = false;

        // 3
        public bool Power_Down_SW => ChannelControl.ElementControl3.PowerOff; //{ get; set; } = false;

        // 4
        public bool Power_Down_SE => ChannelControl.ElementControl4.PowerOff; //{ get; set; } = false;



        public int Cal_Mode { get; set; } = 0; // 0 ~ 7; (3-bit)

        public int TX_Temp_VGA { get; set; } = 0; // 5-bit

        public int RX_H_Temp_VGA { get; set; } = 0; // 6-bit

        public int RX_V_Temp_VGA { get; set; } = 0; // 6-bit



        public int RX4_V_Phase => ChannelControl.ElementControl4.RX_V_Phase; // 6-bit

        public int RX4_V_Atten => ChannelControl.ElementControl4.RX_V_Atten; // 6-bit

        public int RX4_H_Phase => ChannelControl.ElementControl4.RX_H_Phase; // 6-bit

        public int RX4_H_Atten => ChannelControl.ElementControl4.RX_H_Atten; // 6-bit

        public int TX4_H_Phase => ChannelControl.ElementControl4.TX_H_Phase; // 6-bit

        public int TX4_H_Atten => ChannelControl.ElementControl4.TX_H_Atten; // 6-bit


        public int RX3_V_Phase => ChannelControl.ElementControl3.RX_V_Phase; // 6-bit

        public int RX3_V_Atten => ChannelControl.ElementControl3.RX_V_Atten; // 6-bit

        public int RX3_H_Phase => ChannelControl.ElementControl3.RX_H_Phase; // 6-bit

        public int RX3_H_Atten => ChannelControl.ElementControl3.RX_H_Atten; // 6-bit

        public int TX3_H_Phase => ChannelControl.ElementControl3.TX_H_Phase; // 6-bit

        public int TX3_H_Atten => ChannelControl.ElementControl3.TX_H_Atten; // 6-bit


        public int RX2_V_Phase => ChannelControl.ElementControl2.RX_V_Phase; // 6-bit

        public int RX2_V_Atten => ChannelControl.ElementControl2.RX_V_Atten; // 6-bit

        public int RX2_H_Phase => ChannelControl.ElementControl2.RX_H_Phase; // 6-bit

        public int RX2_H_Atten => ChannelControl.ElementControl2.RX_H_Atten; // 6-bit

        public int TX2_H_Phase => ChannelControl.ElementControl2.TX_H_Phase; // 6-bit

        public int TX2_H_Atten => ChannelControl.ElementControl2.TX_H_Atten; // 6-bit


        public int RX1_V_Phase => ChannelControl.ElementControl1.RX_V_Phase; // 6-bit

        public int RX1_V_Atten => ChannelControl.ElementControl1.RX_V_Atten; // 6-bit

        public int RX1_H_Phase => ChannelControl.ElementControl1.RX_H_Phase; // 6-bit

        public int RX1_H_Atten => ChannelControl.ElementControl1.RX_H_Atten; // 6-bit

        public int TX1_H_Phase => ChannelControl.ElementControl1.TX_H_Phase; // 6-bit

        public int TX1_H_Atten => ChannelControl.ElementControl1.TX_H_Atten; // 6-bit


        public int TX1_Power { get => ChannelControl.ElementControl1.TX_Power; private set => ChannelControl.ElementControl1.TX_Power = value; } // 5-bit

        public int TX2_Power { get => ChannelControl.ElementControl2.TX_Power; private set => ChannelControl.ElementControl2.TX_Power = value; } // 5-bit

        public int TX3_Power { get => ChannelControl.ElementControl3.TX_Power; private set => ChannelControl.ElementControl3.TX_Power = value; } // 5-bit

        public int TX4_Power { get => ChannelControl.ElementControl4.TX_Power; private set => ChannelControl.ElementControl4.TX_Power = value; } // 5-bit

        public int Chip_Temperature { get => ChannelControl.Temperature; private set => ChannelControl.Temperature = value; }




        private byte[] TxBuffer { get; } = new byte[42]; //= new byte[36];

        private byte[] RxBuffer { get; } = new byte[27];

        public void SpiTransfer()
        {
            //Initialize_Test_Values();
            DBUS4_SPI_LD = true;
            UpdateCBUS();

            DBUS3_SPI_CS_B = false;
            TxBuffer[1] = DBUS;
            TxBuffer[3] = (byte)(DBUS0_SPI_CLK ? 0x34 : 0x31);

            TxBuffer[10] = (byte)((RX_V_Temp_VGA >> 2) & 0xF);
            TxBuffer[11] = (byte)(((RX_V_Temp_VGA & 0x3) << 6) + (RX_H_Temp_VGA & 0x3F));

            TxBuffer[12] = (byte)(((TX1_H_Atten & 0x3F) << 2) + ((TX1_H_Phase >> 4) & 0x3));
            TxBuffer[13] = (byte)(((TX1_H_Phase & 0xF) << 4) + ((RX1_H_Atten >> 2) & 0xF));
            TxBuffer[14] = (byte)(((RX1_H_Atten & 0x3) << 6) + (RX1_H_Phase & 0x3F));

            TxBuffer[15] = (byte)(((RX1_V_Atten & 0x3F) << 2) + ((RX1_V_Phase >> 4) & 0x3));
            TxBuffer[16] = (byte)(((RX1_V_Phase & 0xF) << 4) + ((TX2_H_Atten >> 2) & 0xF));
            TxBuffer[17] = (byte)(((TX2_H_Atten & 0x3) << 6) + (TX2_H_Phase & 0x3F));

            TxBuffer[18] = (byte)(((RX2_H_Atten & 0x3F) << 2) + ((RX2_H_Phase >> 4) & 0x3));
            TxBuffer[19] = (byte)(((RX2_H_Phase & 0xF) << 4) + ((RX2_V_Atten >> 2) & 0xF));
            TxBuffer[20] = (byte)(((RX2_V_Atten & 0x3) << 6) + (RX2_V_Phase & 0x3F));

            TxBuffer[21] = (byte)(((TX3_H_Atten & 0x3F) << 2) + ((TX3_H_Phase >> 4) & 0x3));
            TxBuffer[22] = (byte)(((TX3_H_Phase & 0xF) << 4) + ((RX3_H_Atten >> 2) & 0xF));
            TxBuffer[23] = (byte)(((RX3_H_Atten & 0x3) << 6) + (RX3_H_Phase & 0x3F));

            TxBuffer[24] = (byte)(((RX3_V_Atten & 0x3F) << 2) + ((RX3_V_Phase >> 4) & 0x3));
            TxBuffer[25] = (byte)(((RX3_V_Phase & 0xF) << 4) + ((TX4_H_Atten >> 2) & 0xF));
            TxBuffer[26] = (byte)(((TX4_H_Atten & 0x3) << 6) + (TX4_H_Phase & 0x3F));

            TxBuffer[27] = (byte)(((RX4_H_Atten & 0x3F) << 2) + ((RX4_H_Phase >> 4) & 0x3));
            TxBuffer[28] = (byte)(((RX4_H_Phase & 0xF) << 4) + ((RX4_V_Atten >> 2) & 0xF));
            TxBuffer[29] = (byte)(((RX4_V_Atten & 0x3) << 6) + (RX4_V_Phase & 0x3F));

            TxBuffer[30] = (byte)(((TX_Temp_VGA & 0x1F) << 3) + (Cal_Mode & 0x7));
            TxBuffer[31] = (byte)(((Power_Down_SE ? 1 : 0) << 7) + ((Power_Down_SW ? 1 : 0) << 6) + ((Power_Down_NE ? 1 : 0) << 5) + ((Power_Down_NW ? 1 : 0) << 4) + ((Load_FBS ? 1 : 0) << 3) + ((FBS_Address >> 1) & 0x3));
            TxBuffer[32] = (byte)(((FBS_Address & 0x1) << 7) + ((LDB_Delay & 0x7) << 4) + ((TXEN_Delay & 0x7) << 1));

            DBUS3_SPI_CS_B = true;
            //TxBuffer[^2] = DBUS;
            TxBuffer[TxBuffer.Length - 8] = DBUS;
            DBUS4_SPI_LD = false;
            TxBuffer[TxBuffer.Length - 5] = DBUS;
            DBUS4_SPI_LD = true;
            TxBuffer[TxBuffer.Length - 2] = DBUS;

            Ftdi.Write(TxBuffer);

    
            //UpdateDBUS(); // Ftdi.Write(new byte[] { 0x80, DBUS, 0xFB });
            //Thread.Sleep(5);
       
            //UpdateDBUS(); // Ftdi.Write(new byte[] { 0x80, DBUS, 0xFB });

            uint rxByteCount = 0;
            while (rxByteCount < RxBuffer.Length)
            {
                Thread.Sleep(1);
                Ftdi.GetRxBytesAvailable(ref rxByteCount);
            }



            Ftdi.Read(RxBuffer, (uint)RxBuffer.Length, ref rxByteCount);

            /*
            TXEN_Delay = (RxBuffer[26] >> 1) & 0x7;
            LDB_Delay = (RxBuffer[26] >> 4) & 0x7;
            FBS_Address = ((RxBuffer[26] >> 7) & 0x1) + ((RxBuffer[25] & 0x3) << 1);
            Load_FBS = ((RxBuffer[25] >> 3) & 0x1) > 0;
            Power_Down_NW = ((RxBuffer[25] >> 4) & 0x1) > 0;
            Power_Down_NE = ((RxBuffer[25] >> 5) & 0x1) > 0;
            Power_Down_SW = ((RxBuffer[25] >> 6) & 0x1) > 0;
            Power_Down_SE = ((RxBuffer[25] >> 7) & 0x1) > 0;
            Cal_Mode = (RxBuffer[24] & 0x7);
            TX_Temp_VGA = (RxBuffer[24] >> 3) & 0x1F;

            RX4_V_Phase = RxBuffer[23] & 0x3F;
            RX4_V_VGA = ((RxBuffer[23] >> 6) & 0x3) + ((RxBuffer[22] & 0xF) << 2);
            RX4_H_Phase = ((RxBuffer[22] >> 4) & 0xF) + ((RxBuffer[21] & 0x3) << 4);
            RX4_H_VGA = (RxBuffer[21] >> 2) & 0x3F;
            TX4_H_Phase = RxBuffer[20] & 0x3F;
            TX4_H_VGA = ((RxBuffer[20] >> 6) & 0x3) + ((RxBuffer[19] & 0xF) << 2);

            RX3_V_Phase = ((RxBuffer[19] >> 4) & 0xF) + ((RxBuffer[18] & 0x3) << 4);
            RX3_V_VGA = (RxBuffer[18] >> 2) & 0x3F;
            RX3_H_Phase = RxBuffer[17] & 0x3F;
            RX3_H_VGA = ((RxBuffer[17] >> 6) & 0x3) + ((RxBuffer[16] & 0xF) << 2);
            TX3_H_Phase = ((RxBuffer[16] >> 4) & 0xF) + ((RxBuffer[15] & 0x3) << 4);
            TX3_H_VGA = (RxBuffer[15] >> 2) & 0x3F;

            RX2_V_Phase = RxBuffer[14] & 0x3F;
            RX2_V_VGA = ((RxBuffer[14] >> 6) & 0x3) + ((RxBuffer[13] & 0xF) << 2);
            RX2_H_Phase = ((RxBuffer[13] >> 4) & 0xF) + ((RxBuffer[12] & 0x3) << 4);
            RX2_H_VGA = (RxBuffer[12] >> 2) & 0x3F;
            TX2_H_Phase = RxBuffer[11] & 0x3F;
            TX2_H_VGA = ((RxBuffer[11] >> 6) & 0x3) + ((RxBuffer[10] & 0xF) << 2);

            RX1_V_Phase = ((RxBuffer[10] >> 4) & 0xF) + ((RxBuffer[9] & 0x3) << 4);
            RX1_V_VGA = (RxBuffer[9] >> 2) & 0x3F;
            RX1_H_Phase = RxBuffer[8] & 0x3F;
            RX1_H_VGA = ((RxBuffer[8] >> 6) & 0x3) + ((RxBuffer[7] & 0xF) << 2);
            TX1_H_Phase = ((RxBuffer[7] >> 4) & 0xF) + ((RxBuffer[6] & 0x3) << 4);
            TX1_H_VGA = (RxBuffer[6] >> 2) & 0x3F;

            RX_H_Temp_VGA = RxBuffer[5] & 0x3F;
            RX_V_Temp_VGA = ((RxBuffer[5] >> 6) & 0x3) + ((RxBuffer[4] & 0xF) << 2);
            */

            TX3_Power = ((RxBuffer[4] >> 4) & 0xF) + ((RxBuffer[3] & 0x1) << 4);
            TX4_Power = (RxBuffer[3] >> 2) & 0x1F;
            TX2_Power = RxBuffer[2] & 0x1F;
            TX1_Power = ((RxBuffer[2] >> 6) & 0x3) + ((RxBuffer[1] & 0x7) << 2);

            Chip_Temperature = (RxBuffer[0] >> 2) & 0x1F;
        }

        int i = 0;

        public void Initialize_Test_Values()
        {
            Load_FBS = true;

            //Power_Down_NW = false;
            //Power_Down_NE = true;
            //Power_Down_SW = false;
            //Power_Down_SE = true;

            TXEN_Delay = (1 + i) % 7;
            LDB_Delay = (2 + i) % 7;
            FBS_Address = (3 + i) % 7;
            Cal_Mode = (4 + i) % 7;
            TX_Temp_VGA = (5 + i) % 31;
            /*
            RX4_V_Phase = (6 + i) % 63;
            RX4_V_VGA = (7 + i) % 63;
            RX4_H_Phase = (8 + i) % 63;
            RX4_H_VGA = (9 + i) % 63;
            TX4_H_Phase = (10 + i) % 63;
            TX4_H_VGA = (11 + i) % 63;

            RX3_V_Phase = (12 + i) % 63;
            RX3_V_VGA = (13 + i) % 63;
            RX3_H_Phase = (14 + i) % 63;
            RX3_H_VGA = (15 + i) % 63;
            TX3_H_Phase = (16 + i) % 63;
            TX3_H_VGA = (17 + i) % 63;

            RX2_V_Phase = (18 + i) % 63;
            RX2_V_VGA = (19 + i) % 63;
            RX2_H_Phase = (20 + i) % 63;
            RX2_H_VGA = (21 + i) % 63;
            TX2_H_Phase = (22 + i) % 63;
            TX2_H_VGA = (23 + i) % 63;

            RX1_V_Phase = (24 + i) % 63;
            RX1_V_VGA = (25 + i) % 63;
            RX1_H_Phase = (26 + i) % 63;
            RX1_H_VGA = (27 + i) % 63;
            TX1_H_Phase = (28 + i) % 63;
            TX1_H_VGA = (29 + i) % 63;
            */
            RX_H_Temp_VGA = (30 + i) % 31;
            RX_V_Temp_VGA = (31 + i) % 31;

            i++;
        }


        public void DisplayTestValue()
        {
            Console.WriteLine("Load_FBS = " + Load_FBS);

            Console.WriteLine("Power_Down_NW = " + Power_Down_NW);
            Console.WriteLine("Power_Down_NE = " + Power_Down_NE);
            Console.WriteLine("Power_Down_SW = " + Power_Down_SW);
            Console.WriteLine("Power_Down_SE = " + Power_Down_SE);

            Console.WriteLine("TXEN_Delay = " + TXEN_Delay);
            Console.WriteLine("LDB_Delay = " + LDB_Delay);
            Console.WriteLine("FBS_Address = " + FBS_Address);
            Console.WriteLine("Cal_Mode = " + Cal_Mode);
            Console.WriteLine("TX_Temp_VGA = " + TX_Temp_VGA);

            Console.WriteLine("RX4_V_Phase = " + RX4_V_Phase);
            Console.WriteLine("RX4_V_VGA = " + RX4_V_Atten);
            Console.WriteLine("RX4_H_Phase = " + RX4_H_Phase);
            Console.WriteLine("RX4_H_VGA = " + RX4_H_Atten);
            Console.WriteLine("TX4_H_Phase = " + TX4_H_Phase);
            Console.WriteLine("TX4_H_VGA = " + TX4_H_Atten);

            Console.WriteLine("RX3_V_Phase = " + RX3_V_Phase);
            Console.WriteLine("RX3_V_VGA = " + RX3_V_Atten);
            Console.WriteLine("RX3_H_Phase = " + RX3_H_Phase);
            Console.WriteLine("RX3_H_VGA = " + RX3_H_Atten);
            Console.WriteLine("TX3_H_Phase = " + TX3_H_Phase);
            Console.WriteLine("TX3_H_VGA = " + TX3_H_Atten);

            Console.WriteLine("RX2_V_Phase = " + RX2_V_Phase);
            Console.WriteLine("RX2_V_VGA = " + RX2_V_Atten);
            Console.WriteLine("RX2_H_Phase = " + RX2_H_Phase);
            Console.WriteLine("RX2_H_VGA = " + RX2_H_Atten);
            Console.WriteLine("TX2_H_Phase = " + TX2_H_Phase);
            Console.WriteLine("TX2_H_VGA = " + TX2_H_Atten);

            Console.WriteLine("RX1_V_Phase = " + RX1_V_Phase);
            Console.WriteLine("RX1_V_VGA = " + RX1_V_Atten);
            Console.WriteLine("RX1_H_Phase = " + RX1_H_Phase);
            Console.WriteLine("RX1_H_VGA = " + RX1_H_Atten);
            Console.WriteLine("TX1_H_Phase = " + TX1_H_Phase);
            Console.WriteLine("TX1_H_VGA = " + TX1_H_Atten);

            Console.WriteLine("RX_H_Temp_VGA = " + RX_H_Temp_VGA);
            Console.WriteLine("RX_V_Temp_VGA = " + RX_V_Temp_VGA);

            Console.WriteLine("TX1_Power = " + TX1_Power);
            Console.WriteLine("TX2_Power = " + TX2_Power);
            Console.WriteLine("TX3_Power = " + TX3_Power);
            Console.WriteLine("TX4_Power = " + TX4_Power);
            Console.WriteLine("Chip_Temperature = " + Chip_Temperature);

            for (int i = 0; i < RxBuffer.Length; i++)
            {
                Console.WriteLine(i + ":\tTX=0x" + TxBuffer[i + 6].ToString("X") + "\tRX=0x" + RxBuffer[i].ToString("X"));
            }
        }


        public bool EnableTx
        {
            get => DBUS6_TX_EN;
            set
            {
                DBUS6_TX_EN = value;
                DBUS7_RX_EN = !DBUS6_TX_EN;
                DBUS5_SW_VCTL = DBUS6_TX_EN;
                SpiTransfer();
                //UpdateDBUS();
            }
        }

        public void StandBy()
        {
            DBUS6_TX_EN = false;
            DBUS7_RX_EN = false;
            DBUS5_SW_VCTL = DBUS6_TX_EN;
            UpdateDBUS();
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
