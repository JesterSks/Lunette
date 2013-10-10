#|
   Copyright 2013 Robert Burghart

   Licensed under the Apache License, Version 2.0 (the "License");
   you may not use this file except in compliance with the License.
   You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

   Unless required by applicable law or agreed to in writing, software
   distributed under the License is distributed on an "AS IS" BASIS,
   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
   See the License for the specific language governing permissions and
   limitations under the License.
|#

(defpackage :Lunette.System
  (:use #:common-lisp)
  (:import-from :cffi
                #:defcfun
                #:defctype
                #:defcstruct)
  (:import-from :alexandria
                #:define-constant)
  (:export #:PVOID
           #:LPVOID
           #:LPCVOID
           #:HANDLE

           #:HGDIOBJ
           #:HLOCAL
           #:HDC
           #:HICON
           #:HCURSOR
           #:HBRUSH
           #:HPEN
           #:HWND
           #:HMENU
           #:HFONT
           #:HBITMAP
           #:HPROPSHEETPAGE
           #:HPALETTE
           #:HTREEITEM
           #:HRSRC
           #:HGLOBAL
           #:HACCEL
           #:HIMAGELIST

           #:WNDPROC

           #:HINSTANCE
           #:HMODULE

           #:WPARAM
           #:LPARAM
           #:LRESULT

           #:BYTE
           #:WORD
           #:DWORD
           #:BOOL
           #:WCHAR

           #:INT_PTR
           #:DLGPROC
           #:LPOFNHOOKPROC
           #:UINT_PTR
           #:LPFNPSPCALLBACK
           #:PFNPROPSHEETCALLBACK
           #:DWORD_PTR
           #:TIMERPROC
           #:ENUMRESTYPEPROC
           #:ENUMRESNAMEPROC
           #:LONG_PTR
           #:FONTENUMPROC
           #:LPINT

           #:LPDWORD

           #:W32-ATOM

           #:TCHAR
           #:LPTCH

           #:LPTSTR
           #:LPCSTR
           #:LPCTSTR
           #:LPCWSTR
           #:LPWSTR
           #:LPSTR

           #:COLORREF
           #:LPCOLORREF

           #:va_list

           #:ULONG_PTR

           #:SM_CXSCREEN
           #:SM_CYSCREEN
           #:SM_CXVSCROLL
           #:SM_CYHSCROLL
           #:SM_CYCAPTION
           #:SM_CXBORDER
           #:SM_CYBORDER
           #:SM_CXDLGFRAME
           #:SM_CYDLGFRAME
           #:SM_CYVTHUMB
           #:SM_CXHTHUMB
           #:SM_CXICON
           #:SM_CYICON
           #:SM_CXCURSOR
           #:SM_CYCURSOR
           #:SM_CYMENU
           #:SM_CXFULLSCREEN
           #:SM_CYFULLSCREEN
           #:SM_CYKANJIWINDOW
           #:SM_MOUSEPRESENT
           #:SM_CYVSCROLL
           #:SM_CXHSCROLL
           #:SM_DEBUG
           #:SM_SWAPBUTTON
           #:SM_RESERVED1
           #:SM_RESERVED2
           #:SM_RESERVED3
           #:SM_RESERVED4
           #:SM_CXMIN
           #:SM_CYMIN
           #:SM_CXSIZE
           #:SM_CYSIZE
           #:SM_CXFRAME
           #:SM_CYFRAME
           #:SM_CXMINTRACK
           #:SM_CYMINTRACK
           #:SM_CXDOUBLECLK
           #:SM_CYDOUBLECLK
           #:SM_CXICONSPACING
           #:SM_CYICONSPACING
           #:SM_MENUDROPALIGNMENT
           #:SM_PENWINDOWS
           #:SM_DBCSENABLED
           #:SM_CMOUSEBUTTONS
           #:SM_CXFIXEDFRAME
           #:SM_CYFIXEDFRAME
           #:SM_CXSIZEFRAME
           #:SM_CYSIZEFRAME
           #:SM_SECURE
           #:SM_CXEDGE
           #:SM_CYEDGE
           #:SM_CXMINSPACING
           #:SM_CYMINSPACING
           #:SM_CXSMICON
           #:SM_CYSMICON
           #:SM_CYSMCAPTION
           #:SM_CXSMSIZE
           #:SM_CYSMSIZE
           #:SM_CXMENUSIZE
           #:SM_CYMENUSIZE
           #:SM_ARRANGE
           #:SM_CXMINIMIZED
           #:SM_CYMINIMIZED
           #:SM_CXMAXTRACK
           #:SM_CYMAXTRACK
           #:SM_CXMAXIMIZED
           #:SM_CYMAXIMIZED
           #:SM_NETWORK
           #:SM_CLEANBOOT
           #:SM_CXDRAG
           #:SM_CYDRAG
           #:SM_SHOWSOUNDS
           #:SM_CXMENUCHECK
           #:SM_CYMENUCHECK
           #:SM_SLOWMACHINE
           #:SM_MIDEASTENABLED
           #:SM_MOUSEWHEELPRESENT
           #:SM_XVIRTUALSCREEN
           #:SM_YVIRTUALSCREEN
           #:SM_CXVIRTUALSCREEN
           #:SM_CYVIRTUALSCREEN
           #:SM_CMONITORS
           #:SM_SAMEDISPLAYFORMAT
           #:SM_IMMENABLED
           #:SM_CXFOCUSBORDER
           #:SM_CYFOCUSBORDER
           #:SM_TABLETPC
           #:SM_MEDIACENTER
           #:SM_STARTER
           #:SM_SERVERR2
           #:SM_MOUSEHORIZONTALWHEELPRESENT
           #:SM_CXPADDEDBORDER
           #:SM_DIGITIZER
           #:SM_MAXIMUMTOUCHES
           #:SM_CMETRICS
           #:SM_REMOTESESSION
           #:SM_SHUTTINGDOWN
           #:SM_REMOTECONTROL
           #:SM_CARETBLINKINGENABLED

           #:POINT
           #:x
           #:y
           #:PPOINT
           #:LPPOINT

           #:SIZE
           #:cx
           #:cy
           #:PSIZE
           #:LPSIZE

           #:NMHDR
           #:hWndFrom
           #:idFrom
           #:code
           #:LPNMHDR

           #:NMTTDISPINFO
           #:hdr
           #:lpszText
           #:szText
;;;           #:hinst
           #:uFlags
;;;           #:lParam
           #:LPNMTTDISPINFO

           #:SYSTEMTIME
           #:wYear
           #:wMonth
           #:wDayOfWeek
           #:wDay
           #:wHour
           #:wMinute
           #:wSecond
           #:wMilliseconds
           #:PSYSTEMTIME
           #:LPSYSTEMTIME

           #:GetSystemMetrics
           #:GetModuleHandle
           #:GetEnvironmentStrings
           #:FreeEnvironmentStrings
           #:GetEnvironmentVariable
           #:CloseHandle
           #:WriteConsole
           #:GetDoubleClickTime
           #:SetDoubleClickTime
           #:SetTimer
           #:KillTimer
           #:GetStdHandle

           #:loword
           #:hiword
           #:makelong))
