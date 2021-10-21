using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Nitride.Chart;
using Nitride.EE;

namespace Nitride.Example
{
    public partial class MainForm : Form
    {
        FreqTable FreqTable { get; set; } 

        FreqChart FreqChart { get; set; }

        public MainForm()
        {
            InitializeComponent();

            /*
            TestChart = new("Test Chart", FreqTable)
            {
                IndexCount = FreqTable.Count,
                ReadyToShow = true,
                StopPt = FreqTable.Count
            };

            TestChart.Location = new Point(0, 0);
            TestChart.Dock = DockStyle.Fill;


            Controls.Add(TestChart);


            Program.ChartForm.AddForm(TestChart);

            Console.WriteLine(FreqTable[3][TestChart.Column_Amplitude]);
            Console.WriteLine(TestChart.IndexCount);*/
        }

        public static NumericColumn Column_Channel1 { get; } = new("Channel 1", "FS");
        public static NumericColumn Column_Channel2 { get; } = new("Channel 2", "FS");

        public ChronoTable SampleTable { get; set; }

        public ChronoChart SampleChart { get; set; }

        private void BtnReadWaveform_Click(object sender, EventArgs e)
        {
            using OpenFileDialog openFileDialog = new()
            {
                InitialDirectory = Environment.GetFolderPath(Environment.SpecialFolder.UserProfile),
                Filter = "CSV File (*.csv)|*.csv",
                RestoreDirectory = true
            };

            if (openFileDialog.ShowDialog() == DialogResult.OK)
            {
                using var fs = new FileStream(openFileDialog.FileName, FileMode.Open, FileAccess.Read, FileShare.ReadWrite);
                using StreamReader sr = new(fs);
                List<(double, double)> sample = new();

                
                while (!sr.EndOfStream)
                {
                    string[] fields = sr.ReadLine().Trim().Split(',');
                    if (fields.Length == 2) 
                    {
                        sample.Add((fields[0].ToDouble(), fields[1].ToDouble()));
                    }
                }

                ChronoTable ct = new(sample.Count) { SampleRate = 250e6 };

                

                for (int i = 0; i < sample.Count; i++)// var (d1, d2) in sample)
                {
                    var (d1, d2) = sample[i];
                    ct[i][Column_Channel1] = d1;
                    ct[i][Column_Channel2] = d2;
                }

                SampleTable = ct;

                SampleChart = new ChronoChart("Sample Chart", SampleTable)
                {
                    IndexCount = 1000,
                    ReadyToShow = true,
                    StopPt = 1000
                };

                //SampleChart.MainArea.AxisRight.

                SampleChart.MainArea.AddSeries(new LineSeries(Column_Channel1)
                {
                    Order = 0,
                    Importance = Importance.Minor,
                    Name = "Channel 1",
                    LegendName = "Channel 1",
                    Color = Color.SlateBlue,
                    IsAntialiasing = true,
                    Tension = 0,
                    HasTailTag = false
                });

                SampleChart.MainArea.AddSeries(new LineSeries(Column_Channel2)
                {
                    Order = 0,
                    Importance = Importance.Minor,
                    Name = "Channel 2",
                    LegendName = "Channel 2",
                    Color = Color.DarkGreen,
                    IsAntialiasing = true,
                    Tension = 0,
                    HasTailTag = false
                });

                SampleChart.Location = new Point(0, 0);
                SampleChart.Dock = DockStyle.Fill;
                Program.ChartForm.AddForm(SampleChart);

                
                FFT fft = new(262144/2);// 65536, WindowsType.BlackmanHarris);

                FreqTable = fft.Transform2(SampleTable, Column_Channel2, 0);

                FreqChart = new("Freq Chart", FreqTable)
                {
                    IndexCount = FreqTable.Count,
                    ReadyToShow = true,
                    StopPt = FreqTable.Count
                };

                FreqChart.MainArea.AddSeries(new LineSeries(FFT.Column_ResultDb)
                {
                    Order = 0,
                    Importance = Importance.Major,
                    Name = "FFT Spectrum",
                    LegendName = "FFT Spectrum",
                    Color = Color.Gray,
                    IsAntialiasing = true,
                    Tension = 0,
                    HasTailTag = false
                });

                FreqChart.Location = new Point(0, 0);
                FreqChart.Dock = DockStyle.Fill;
                Program.ChartForm.AddForm(FreqChart);
            }
        }

        public static ComplexColumn Column_ChannelComplex { get; } = new("Complex Channel", "FS");

        private void BtnDemo_Click(object sender, EventArgs e)
        {
            var samples = FFT.GetSineWave(262144, 8191, 0.86);
            /*
            foreach(var c in samples) 
            {
                Console.WriteLine(c.ToString());
            }*/

            ChronoTable ct = new(samples.Length) { SampleRate = 100e6 };

            for (int i = 0; i < samples.Length; i++)
            {
                ct[i][Column_Channel1] = samples[i].Real;
                ct[i][Column_Channel2] = samples[i].Imaginary;
                ct[i][Column_ChannelComplex] = samples[i];
            }

            SampleTable = ct;

            SampleChart = new ChronoChart("Sample Chart", SampleTable)
            {
                IndexCount = 500,
                ReadyToShow = true,
                StopPt = 1500
            };

            //SampleChart.MainArea.AxisRight.

            SampleChart.MainArea.AddSeries(new LineSeries(Column_Channel1)
            {
                Order = 0,
                Importance = Importance.Minor,
                Name = "Channel 1",
                LegendName = "Channel 1",
                Color = Color.SlateBlue,
                IsAntialiasing = true,
                Tension = 0,
                HasTailTag = false
            });

            SampleChart.MainArea.AddSeries(new LineSeries(Column_Channel2)
            {
                Order = 0,
                Importance = Importance.Minor,
                Name = "Channel 2",
                LegendName = "Channel 2",
                Color = Color.DarkGreen,
                IsAntialiasing = true,
                Tension = 0,
                HasTailTag = false
            });

            SampleChart.Location = new Point(0, 0);
            SampleChart.Dock = DockStyle.Fill;
            Program.ChartForm.AddForm(SampleChart);

            FFT fft = new(samples.Length);// 65536, WindowsType.BlackmanHarris);

            FreqTable = fft.Transform(SampleTable, Column_ChannelComplex, 0);

            double peak = FreqTable.Rows.Select(n => n[FFT.Column_ResultDb]).Max();

            Console.WriteLine("Peak = " + peak);

            FreqChart = new("Freq Chart", FreqTable)
            {
                IndexCount = FreqTable.Count,
                ReadyToShow = true,
                StopPt = FreqTable.Count
            };

            FreqChart.MainArea.AddSeries(new LineSeries(FFT.Column_ResultDb)
            {
                Order = 0,
                Importance = Importance.Major,
                Name = "FFT Spectrum",
                LegendName = "FFT Spectrum",
                Color = Color.Gray,
                IsAntialiasing = true,
                Tension = 0,
                HasTailTag = false
            });

            FreqChart.Location = new Point(0, 0);
            FreqChart.Dock = DockStyle.Fill;
            Program.ChartForm.AddForm(FreqChart);
        }
    }
}
