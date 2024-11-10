using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Runtime.InteropServices;

namespace SerialTest
{
    internal static class Program
    {
        /// <summary>
        ///  The main entry point for the application.
        /// </summary>
        [STAThread]
        static void Main()
        {
            Application.SetHighDpiMode(HighDpiMode.SystemAware);
            Application.EnableVisualStyles();
            Application.SetCompatibleTextRenderingDefault(false);
            Application.Run(new MainForm());
        }
    }

    [StructLayout(LayoutKind.Sequential)]
    public class DMAC_CONFIG
    {
        public ulong Base_Address { get; set; } = 40000000000;

        public ulong Top_Address { get; set; } = 40000000000;

        public uint Packet_Size { get; set; } = 0;

        public uint Count { get; set; } = 0;

    }

    [StructLayout(LayoutKind.Sequential)]
    public class DMAC_TRANSFER_STATUS
    {
        public uint Count { get; set; } = 0;

        public uint Index { get; set; } = 0;

        public byte Enable { get; set; } = 0;

        public byte Busy { get; set; } = 0;

        public byte Round { get; set; } = 0;

        public byte Last { get; set; } = 0;
    }

    [StructLayout(LayoutKind.Sequential)]
    public class AD9544_CONFIG
    {
        public AD9544_CONFIG()
        {
            B_Length = (byte)Marshal.SizeOf(this);
        }

        // G0
        public byte B_Length { get; }

        public byte B_Type { get; } = 0xA1;

        public sbyte System_Clock_Input_Divider { get; } = -2; // -2 = enable doubler, others means divider // 	u8 System_Clock_Enable_Doubler; 	u8 System_Clock_Enable_Crystal;

        public byte System_Clock_Feedback_Divider { get; } = 23;

        public uint System_Clock_Stability_Period { get; } = 50;

        public double System_Clock_Frequency { get; } = 52e6;




        public ulong Reference_Period { get; set; } = 40000000000;

        public uint Reference_Input_Divider { get; set; } = 125;

        public ushort Reference_Jitter_Tolerance { get; set; } = 0;

        public ushort Reserved_0 { get; } = 0;

        public uint Reference_Offset_Limit { get; set; } = 0x186A0;

        public byte Reference_Source { get; set; } = 2;

        public byte Reference_Hysteresis { get; set; } = 3;

        public byte Reference_Validation_Timer { get; set; } = 0xA;




        public byte DPLL0_APLL_Divider { get; set; } = 8;

        public uint DPLL0_DPLL_Divider { get; set; } = 1562;

        public uint DPLL0_DPLL_Frac { get; set; } = 1;

        public uint DPLL0_DPLL_Mod { get; set; } = 2;

        public uint DPLL0_Loop_Bandwidth { get; set; } = 50000000;




        private uint Reserved_1 { get; } = 0;

        private ushort Reserved_2 { get; } = 0;

        private byte Reserved_3 { get; } = 0;




        public byte DPLL1_APLL_Divider { get; set; } = 12;

        public uint DPLL1_DPLL_Divider { get; set; } = 1666;

        public uint DPLL1_DPLL_Frac { get; set; } = 2;

        public uint DPLL1_DPLL_Mod { get; set; } = 3;

        public uint DPLL1_Loop_Bandwidth { get; set; } = 50000000;
    }
}
