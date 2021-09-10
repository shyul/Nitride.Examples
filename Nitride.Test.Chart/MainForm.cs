using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Nitride.EE;

namespace Nitride.Example
{
    public partial class MainForm : Form
    {
        FreqTable FreqTable { get; set; } = new(1e6, 2e6, 50);

        TestChart TestChart { get; set; }

        public MainForm()
        {
            for (int i = 0; i < FreqTable.Count; i++)
            {
                FreqTable[i][TestChart.Column_Amplitude] = i * 3D - 50D;

            }

            FreqTable.Status = TableStatus.Ready;

            InitializeComponent();


            TestChart = new("Test Chart", FreqTable) 
            {
                IndexCount = FreqTable.Count,
                ReadyToShow  = true,
                StopPt = FreqTable.Count
            };

            TestChart.Location = new Point(0, 0);
            TestChart.Dock = DockStyle.Fill;


            Controls.Add(TestChart);

            Console.WriteLine(FreqTable[3][TestChart.Column_Amplitude]);
            Console.WriteLine(TestChart.IndexCount);
        }

    }
}
