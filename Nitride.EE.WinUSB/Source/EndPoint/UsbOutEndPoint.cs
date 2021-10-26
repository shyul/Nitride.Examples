using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.InteropServices;
using System.Text;
using System.Threading.Tasks;

namespace Nitride.EE.WinUSB
{
    public abstract class UsbOutEndPoint : UsbEndPoint
    {
        public virtual bool SendData(byte[] buffer, int offset, ref int length)
        {
            uint bytesWritten;
            bool success;
            unsafe
            {
                fixed (byte* pBuffer = buffer)
                {
                    success = WinUsb_WritePipe(Device.Handle, PipeId, pBuffer + offset, (uint)length,
                            out bytesWritten, IntPtr.Zero);
                }
            }

            length = (int)bytesWritten;
            return success && (bytesWritten == length);
        }

        [DllImport("winusb.dll", SetLastError = true)]
        private static unsafe extern bool WinUsb_WritePipe(IntPtr InterfaceHandle, byte PipeID, byte* pBuffer, uint BufferLength, out uint LengthTransferred, IntPtr Overlapped);

        [DllImport("winusb.dll", SetLastError = true)]
        private static unsafe extern bool WinUsb_WritePipe(IntPtr InterfaceHandle, byte PipeID, byte* pBuffer, uint BufferLength, out uint LengthTransferred, NativeOverlapped* pOverlapped);
    }
}
