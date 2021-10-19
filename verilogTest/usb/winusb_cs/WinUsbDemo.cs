using System;
using System.Windows.Forms;

namespace WinUsbDemo
{
    ///<summary>
    /// Runs the application.
    ///</summary> 
    ///
    public class WinUsbDemo  
    {
		
        //internal static FrmMain FrmMy; 
		
        /// <summary>
        ///  Displays the application's main form.
        /// </summary> 

		 [STAThread]
        public static void Main() 
        { 
            var frmMain1 = new FrmMain(); 
            Application.Run(frmMain1); 
        }  
    } 
} 
