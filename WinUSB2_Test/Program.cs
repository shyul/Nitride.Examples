﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Windows.Forms;
using Nitride;
using Nitride.WindowsNativeMethods;

namespace WindowsFormsApp1
{
    static class Program
    {
        /// <summary>
        /// The main entry point for the application.
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

        public static readonly int SHOW_FORM = User32.RegisterWindowMessage("SHOW_NITRIDE_FORM");
    }

    internal sealed partial class ChartForm : Mosaic
    {
        #region Ctor
        public ChartForm() : base()//Program.SHOW_FORM)
        {
            SuspendLayout();

            //HelpLink = "https://github.com/shyul/Pacmio/wiki";
            //Icon = Pacmio.Properties.Resources.Pacman;
            //IsRibbonShrink = true;
            Text = "Spectrum";
            Width = 1500;
            Height = 1200;
            ResumeLayout(false); // false
            PerformLayout();
        }

        #endregion
    }
}
