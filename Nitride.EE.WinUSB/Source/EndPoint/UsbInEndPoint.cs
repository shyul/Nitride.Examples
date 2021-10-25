using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nitride.EE.WinUSB
{
    public abstract class UsbInEndPoint : UsbEndPoint
    {
        public virtual bool ReceiveData(ref uint byteCount, byte[] buffer)
        {
            uint byteCountIn = byteCount;
            unsafe
            {
                fixed (byte* pBuffer = buffer)
                {
                    return NativeMethods.WinUsb_ReadPipe(Device.Handle.GetHandle(), PipeId, pBuffer, byteCountIn, out byteCount, IntPtr.Zero);
                }
            }
        }
    }
}
