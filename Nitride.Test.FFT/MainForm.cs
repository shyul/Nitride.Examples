using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Windows.Forms;
using Nitride.Chart;
using Nitride.EE;

namespace Nitride.Example
{
    public partial class MainForm : Form
    {
        public static NumericColumn Column_Channel1 { get; } = new("Channel 1", "FS");

        public static NumericColumn Column_Channel2 { get; } = new("Channel 2", "FS");

        public ChronoTable SampleTable { get; set; }

        public ChronoChart SampleChart { get; set; }

        FreqTable FreqTable { get; set; } 

        FreqChart FreqChart { get; set; }

        FFT FFT { get; }

        const int SampleLength = 65536 * 4;

        public static ComplexColumn Column_ChannelComplex { get; } = new("Complex Channel", "FS");

        public MainForm()
        {
            InitializeComponent();

            var samples = FFT.GetSineWave(SampleLength, 8191, 0.86);
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

            FFT = new(SampleLength);// 65536, WindowsType.BlackmanHarris);
            FreqTable = new FreqTable();

            FreqTable.Configure(0, SampleTable.SampleRate, SampleLength / 64);

            FFT.Transform(FreqTable, SampleTable, Column_ChannelComplex, 0);

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

                Console.WriteLine("sample.Count = " + sample.Count);

                SampleTable.Clear(sample.Count);
                SampleTable.SampleRate = 250e6;

                for (int i = 0; i < sample.Count; i++)// var (d1, d2) in sample)
                {
                    var (d1, d2) = sample[i];
                    SampleTable[i][Column_Channel1] = d1;
                    SampleTable[i][Column_Channel2] = d2;
                }

                SampleTable.DataIsUpdated();

                FreqChart.IndexCount = FreqChart.StopPt = FreqTable.Count / 2;

                FFT.Transform(FreqTable, SampleTable, Column_Channel1, 0);
            }
        }


        int PlayPt = 0;
        bool EnablePlay { get; set; } = true;

        //Task PlayWave { get; set; }

        void PlayWaveWorker() 
        {
            //int step = FFT.Length / 8;
            //if (step < 1) step = 1;

            while (EnablePlay) 
            {
                Console.WriteLine("PlayPt = " + PlayPt + " | SampleTable.Count = " + SampleTable.Count + " | FFT.Length = " + FFT.Length);

                FFT.Transform(FreqTable, SampleTable, Column_Channel1, PlayPt);

                PlayPt += 32768;

                if (PlayPt > SampleTable.Count - FFT.Length)
                    PlayPt = 0;

                //GC.Collect();
                //Thread.Sleep(50);
            }
        }

        private void BtnStartPlay_Click(object sender, EventArgs e)
        {
            PlayPt = 0;
            EnablePlay = true;
            Task.Run(() => PlayWaveWorker());
        }

        private void BtnStopPlay_Click(object sender, EventArgs e)
        {
            EnablePlay = false;
        }
    }
}
