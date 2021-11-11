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
    }
}
