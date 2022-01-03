using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Nitride;
using Nitride.EE;

namespace Nitride.Example
{
    public partial class MainForm : Form
    {
        FPGA FPGA { get; set; } = new FPGA();

        public MainForm()
        {

            InitializeComponent();



        }

        FreqTable FreqTable { get; set; }

        S_Parameter SParam { get; set; }

        private void BtnLoadSnPFile_Click(object sender, EventArgs e)
        {
            using OpenFileDialog openFileDialog = new()
            {
                InitialDirectory = Environment.GetFolderPath(Environment.SpecialFolder.UserProfile),
                Filter = "Touchstone File (*.s*p)|*.s*p",
                RestoreDirectory = true
            };

            if (openFileDialog.ShowDialog() == DialogResult.OK)
            {
                if (FreqTable is null || SParam is null)
                {
                    var (ft, pr) = Parameter.LoadSnP(openFileDialog.FileName);

                    FreqTable = ft;
                    SParam = pr as S_Parameter;

                    if (SParam is null) throw new Exception("SParam is still null!!");
                }
                else
                {
                   Parameter.LoadSnP(FreqTable, SParam, openFileDialog.FileName);
                }
            }
        }

        private void BtnSaveSnPFile_Click(object sender, EventArgs e)
        {
            if (SParam is S_Parameter sp)
            {
                using SaveFileDialog fileDialog = new()
                {
                    InitialDirectory = Environment.GetFolderPath(Environment.SpecialFolder.UserProfile),
                    //Filter = "*",//"Single Port File (*.s1p)|*.s1p",
                    RestoreDirectory = true
                };

                if (fileDialog.ShowDialog() == DialogResult.OK)
                {
                    sp.ExportSnP(FreqTable, fileDialog.FileName);
                }
            }
        }

        private void BtnConvertMAX2_Click(object sender, EventArgs e)
        {
            using OpenFileDialog openFileDialog = new()
            {
                InitialDirectory = Environment.GetFolderPath(Environment.SpecialFolder.UserProfile),
                Filter = "MAX II Pinout Text File (*.txt)|*.txt",
                RestoreDirectory = true
            };

            if (openFileDialog.ShowDialog() == DialogResult.OK)
            {
                Altera.ReadPinoutFileMAX2(openFileDialog.FileName);
            }
        }

        private void BtnConvertQuartusPinFile_Click(object sender, EventArgs e)
        {
            using OpenFileDialog openFileDialog = new()
            {
                InitialDirectory = Environment.GetFolderPath(Environment.SpecialFolder.UserProfile),
                Filter = "Quartus Pin File (*.pin)|*.pin",
                RestoreDirectory = true
            };

            if (openFileDialog.ShowDialog() == DialogResult.OK)
            {
                FPGA.ReadQuartusPinFile(openFileDialog.FileName);
            }
        }





        private void BtnImportXilinxPackageFile_Click(object sender, EventArgs e)
        {
            OpenFile.Filter = "Xilinx Package File (*.txt) | *.txt";

            if (OpenFile.ShowDialog() == DialogResult.OK)
            {
                FPGA = new FPGA();
                FPGA.ImportXilinxPackageFile(OpenFile.FileName);
            }
        }

        private void BtnImportAlteraPackageFile_Click(object sender, EventArgs e)
        {
            OpenFile.Filter = "DIYed Alera Package File (*.csv) | *.csv";

            if (OpenFile.ShowDialog() == DialogResult.OK)
            {
                FPGA = new FPGA();
                FPGA.ImportAlteraPackageFile(OpenFile.FileName);
            }
        }

        private void BtnExportCSVFile_Click(object sender, EventArgs e)
        {
            SaveFile.Filter = "CSV File (*.csv) | *.csv";

            if (SaveFile.ShowDialog() == DialogResult.OK && FPGA is not null)
            {
                FPGA.ExportPins(SaveFile.FileName);
            }
        }

        private void BtnImportAltiumPinMapReport_Click(object sender, EventArgs e)
        {
            OpenFile.Filter = "Altium Pin Map File (*.csv) | *.csv";

            if (OpenFile.ShowDialog() == DialogResult.OK && FPGA is not null)
            {
                FPGA.ImportAltiumPinMapReport(OpenFile.FileName);
            }
        }

        private void BtnExportXilinxXDCFile_Click(object sender, EventArgs e)
        {
            SaveFile.Filter = "Xilinx Constraint File (*.xdc) | *.xdc";

            if (SaveFile.ShowDialog() == DialogResult.OK && FPGA is not null)
            {
                FPGA.ExportXdcConstraint(SaveFile.FileName);
            }
        }

        private void MainForm_Load(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            SaveFile.Filter = "Quartus Spec File (*.qsf) | *.qsf";

            if (SaveFile.ShowDialog() == DialogResult.OK && FPGA is not null)
            {
                FPGA.ExportQuartusSpecFileAssignment(SaveFile.FileName);
            }
        }

        private void BtnExportNets_Click(object sender, EventArgs e)
        {
            SaveFile.Filter = "System Verilog (*.sv) | *.sv";

            if (SaveFile.ShowDialog() == DialogResult.OK && FPGA is not null)
            {
                FPGA.ExportAllSignals(SaveFile.FileName);
            }
        }

        private void BtnImportQuartusPinFile_Click(object sender, EventArgs e)
        {
            OpenFile.Filter = "Quartus Pin File (*.pin) | *.pin";

            if (OpenFile.ShowDialog() == DialogResult.OK && FPGA is not null)
            {
                FPGA.ImportQuartusPinFile(OpenFile.FileName);
            }
        }

        private void BtnImportVivadoIOPlacedReport_Click(object sender, EventArgs e)
        {
            OpenFile.Filter = "Report File (*.rpt) | *.rpt";

            if (OpenFile.ShowDialog() == DialogResult.OK && FPGA is not null && OpenFile.FileName.Contains("_io_placed"))
            {
                FPGA.ImportVivadoIOPlacedReport(OpenFile.FileName);
            }
        }

        private void BtnImportVivadoIOPorts_Click(object sender, EventArgs e)
        {
            OpenFile.Filter = "Vivado I/O Ports File (*.csv) | *.csv";

            if (OpenFile.ShowDialog() == DialogResult.OK && FPGA is not null)
            {
                FPGA.ImportVivadoIOPorts(OpenFile.FileName);
            }
        }
    }
}
