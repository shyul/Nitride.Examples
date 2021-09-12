using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Windows.Forms;
using Nitride.WindowsNativeMethods;

namespace Nitride.Example
{
    static class Program
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
            ChartForm.Show();
            Application.Run(new MainForm());
        }

        public static ChartForm ChartForm { get; } = new();

        public static readonly int SHOW_FSQ = User32.RegisterWindowMessage("SHOW_FSQ");
    }
}
