using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Nitride.Example
{
    public partial class MainForm : Form
    {
        TestTable TestTable { get; set; } = new();

        TestChart TestChart { get; set; }

        public MainForm()
        {
            TestChart = new("Test Chart", TestTable);

            Console.WriteLine("Test Console Output!!");
            InitializeComponent();

            TestChart.Location = new Point(0, 0);
            TestChart.Dock = DockStyle.Fill;


            Controls.Add(TestChart);

            Console.WriteLine("Test Console Debug Output!!");
        }

    }
}
