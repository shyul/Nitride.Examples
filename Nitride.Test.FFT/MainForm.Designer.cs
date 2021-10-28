
namespace Nitride.Example
{
    partial class MainForm
    {
        /// <summary>
        ///  Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        ///  Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        ///  Required method for Designer support - do not modify
        ///  the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.BtnReadWaveform = new System.Windows.Forms.Button();
            this.BtnStartPlay = new System.Windows.Forms.Button();
            this.BtnStopPlay = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // BtnReadWaveform
            // 
            this.BtnReadWaveform.Location = new System.Drawing.Point(66, 81);
            this.BtnReadWaveform.Name = "BtnReadWaveform";
            this.BtnReadWaveform.Size = new System.Drawing.Size(125, 23);
            this.BtnReadWaveform.TabIndex = 0;
            this.BtnReadWaveform.Text = "Read Waveform";
            this.BtnReadWaveform.UseVisualStyleBackColor = true;
            this.BtnReadWaveform.Click += new System.EventHandler(this.BtnReadWaveform_Click);
            // 
            // BtnStartPlay
            // 
            this.BtnStartPlay.Location = new System.Drawing.Point(66, 146);
            this.BtnStartPlay.Name = "BtnStartPlay";
            this.BtnStartPlay.Size = new System.Drawing.Size(164, 23);
            this.BtnStartPlay.TabIndex = 2;
            this.BtnStartPlay.Text = "Start Play";
            this.BtnStartPlay.UseVisualStyleBackColor = true;
            this.BtnStartPlay.Click += new System.EventHandler(this.BtnStartPlay_Click);
            // 
            // BtnStopPlay
            // 
            this.BtnStopPlay.Location = new System.Drawing.Point(253, 146);
            this.BtnStopPlay.Name = "BtnStopPlay";
            this.BtnStopPlay.Size = new System.Drawing.Size(164, 23);
            this.BtnStopPlay.TabIndex = 3;
            this.BtnStopPlay.Text = "Stop Play";
            this.BtnStopPlay.UseVisualStyleBackColor = true;
            this.BtnStopPlay.Click += new System.EventHandler(this.BtnStopPlay_Click);
            // 
            // MainForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 15F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.BtnStopPlay);
            this.Controls.Add(this.BtnStartPlay);
            this.Controls.Add(this.BtnReadWaveform);
            this.Name = "MainForm";
            this.Text = "Form1";
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Button BtnReadWaveform;
        private System.Windows.Forms.Button BtnStartPlay;
        private System.Windows.Forms.Button BtnStopPlay;
    }
}

