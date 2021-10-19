/// <summary>
	/// Project: WinUsb_cs
	/// 
	/// ***********************************************************************
	/// Software License Agreement
	///
	/// Licensor grants any person obtaining a copy of this software ("You") 
	/// a worldwide, royalty-free, non-exclusive license, for the duration of 
	/// the copyright, free of charge, to store and execute the Software in a 
	/// computer system and to incorporate the Software or any portion of it 
	/// in computer programs You write.   
	/// 
	/// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
	/// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
	/// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
	/// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
	/// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
	/// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
	/// THE SOFTWARE.
	/// ***********************************************************************
	/// 
	/// Author
	/// Jan Axelson          
	/// 
	/// This software was created using Visual Studio 2012 Professional Edition with .NET Framework 4.0.
	/// 
	/// Purpose: 
	/// Demonstrates USB communications using Microsoft's WinUSB driver.
	/// 
	/// Requirements:
	/// Windows 8.1 or later and an attached USB device that uses the WinUSB driver.
	/// 
	/// Description:
	/// Finds an attached device whose device firmware or host INF file contains a specific device interface GUID.
	/// Enables sending and receiving data via bulk, interrupt, control, and isochronous transfers.
	/// 
	/// Uses WMI to detect when a device is attached or removed.
	/// 
	/// For bulk transfers, the application uses a Delegate and the BeginInvoke 
	/// and EndInvoke methods to read and write data asynchronously so the application's main thread 
	/// doesn't have to wait for the device to return data. A callback routine uses 
	/// marshaling to send data to the form, whose code runs in a different thread.
	/// 
	/// Interrupt and control transfers read and write data synchronously, blocking the thread
	/// until the operation completes or a timeout. (Normally, the wait for completion is minimal.)
	/// 
	/// Isochronous transfers require Windows 8.1 or later.
	///  
	/// This software and companion device firmware are available from janaxelson.com
	/// 
	/// Report any problems to jan@janaxelson.com or post to my Ports forum at janaxelson.com/forum 
	/// This application has been tested under Windows 8 (64 bit).
	/// 
	/// 1/11/16
	/// V3.1
	/// Removed lock statements (unneeded).
	/// Other minor fixes.
	/// 
	/// 2/17/15
	/// V3.0
	/// Adds support for isochronous transfers - REQUIRES Windows 8.1 or later.
	/// Selects an alternate interface for isochronous transfers (because the default interface should use no isochronous bandwidth).
	/// To enable detecting Windows 8.1, in app.manifest, in the <application> section, added this line:
	/// <supportedOS Id="{1f676c76-80e1-4239-95bb-83d0f6d0da78}"/>
	/// 
	/// 5/9/14
	/// V2.2
	/// Added lock statements. 
	/// Changed _winUsbHandle from an IntPtr to a SafeWinUsbHandle.
	/// Minor improvements to error handling.
	/// 
	/// 10/15/13
	/// V2.1
	/// For detecting device arrival and removal, replaced the Win32 RegisterDeviceNotification code with .NET WMI functions.
	/// Added try...catch blocks.
	/// Other minor edits for clarity.
	/// 
	/// 5/3/13
	///	V2.0
	///	To illustrate asynchronous operations, bulk read and write are asynchronous.
	///	
	///	To illustrate synchronous operations, interrupt read and write and control transfers are synchronous. 
	///	
	/// For compatibility, replaced ToInt32 with ToInt64 here:
	/// IntPtr pDevicePathName = new IntPtr(detailDataBuffer.ToInt64() + 4);
	/// and here:
	/// if ((deviceNotificationHandle.ToInt64() == IntPtr.Zero.ToInt64()))
	/// 
	/// Uncommented QueryDeviceSpeed because Microsoft corrected the documentation for it.
	/// 
	/// Renamed some routines and variables.
	/// 
	/// Moved myDevInfo and other variables from WinUsbDevice.cs to frmMain.cs. 
	/// 
	/// For compatibility if the charset isn't English, added System.Globalization.CultureInfo.InvariantCulture here:
	/// if ((String.Compare(DeviceNameString, mydevicePathName, true, System.Globalization.CultureInfo.InvariantCulture) == 0))
	/// 
	/// Moved API declarations to classes named NativeMethods as recommended by Microsoft.
	/// 
	/// Minor changes to API declarations as advised by Visual Studio's Code Analysis.
	/// 
	/// Naming changes and other minor coding improvements as recommended by the Resharper tool.
	/// </summary>