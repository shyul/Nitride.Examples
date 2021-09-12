using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Nitride.Example
{
    internal sealed partial class ChartForm : MosaicForm
    {
        #region Ctor
        public ChartForm() : base(Program.SHOW_FSQ)
        {
            SuspendLayout();

            HelpLink = "https://github.com/shyul/Pacmio/wiki";
            //Icon = Pacmio.Properties.Resources.Pacman;
            IsRibbonShrink = true;
            Text = "Spectrum";
            Width = 1500;
            Height = 1200;
            ResumeLayout(false); // false
            PerformLayout();
        }

        #endregion
    }
}
