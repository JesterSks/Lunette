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

(defpackage :Lunette
  (:use #:common-lisp
        #:cffi
        #:alexandria)
  (:export #:LPVOID
           #:WNDPROC
           #:HGDIOBJ
           #:HINSTANCE
           #:HMODULE
           #:HICON
           #:HCURSOR
           #:HBRUSH
           #:HWND
           #:HMENU
           #:WPARAM
           #:LPARAM
           #:LRESULT
           #:WORD
           #:DWORD
           #:BOOL
           #:W32-ATOM
           #:LPCSTR
           #:LPCTSTR
           #:LPCWSTR


           #:IDI_APPLICATION
           #:IDI_HAND
           #:IDI_QUESTION
           #:IDI_EXCLAMATION
           #:IDI_ASTERISK
           #:IDI_WINLOGO
           #:IDI_SHIELD
           #:IDI_WARNING
           #:IDI_ERROR
           #:IDI_INFORMATION

           #:IDC_ARROW
           #:IDC_IBEAM
           #:IDC_WAIT
           #:IDC_CROSS
           #:IDC_UPARROW
           #:IDC_SIZE
           #:IDC_ICON
           #:IDC_SIZENWSE
           #:IDC_SIZENESW
           #:IDC_SIZEWE
           #:IDC_SIZENS
           #:IDC_SIZEALL
           #:IDC_NO
           #:IDC_HAND
           #:IDC_APPSTARTING
           #:IDC_HELP

           #:WHITE_BRUSH
           #:LTGRAY_BRUSH
           #:GRAY_BRUSH
           #:DKGRAY_BRUSH
           #:BLACK_BRUSH
           #:NULL_BRUSH
           #:HOLLOW_BRUSH
           #:WHITE_PEN
           #:BLACK_PEN
           #:NULL_PEN
           #:OEM_FIXED_FONT
           #:ANSI_FIXED_FONT
           #:ANSI_VAR_FONT
           #:SYSTEM_FONT
           #:DEVICE_DEFAULT_FONT
           #:DEFAULT_PALETTE
           #:SYSTEM_FIXED_FONT
           #:DEFAULT_GUI_FONT
           #:DC_BRUSH
           #:DC_PEN
           #:STOCK_LAST

           #:CS_VREDRAW
           #:CS_HREDRAW
           #:CS_DBLCLKS
           #:CS_OWNDC
           #:CS_CLASSDC
           #:CS_PARENTDC
           #:CS_NOCLOSE
           #:CS_SAVEBITS
           #:CS_BYTEALIGNCLIENT
           #:CS_BYTEALIGNWINDOW
           #:CS_GLOBALCLASS
           #:CS_IME
           #:CS_DROPSHADOW

           #:WS_OVERLAPPED
           #:WS_POPUP
           #:WS_CHILD
           #:WS_MINIMIZE
           #:WS_VISIBLE
           #:WS_DISABLED
           #:WS_CLIPSIBLINGS
           #:WS_CLIPCHILDREN
           #:WS_MAXIMIZE
           #:WS_CAPTION
           #:WS_BORDER
           #:WS_DLGFRAME
           #:WS_VSCROLL
           #:WS_HSCROLL
           #:WS_SYSMENU
           #:WS_THICKFRAME
           #:WS_GROUP
           #:WS_TABSTOP
           #:WS_MINIMIZEBOX
           #:WS_MAXIMIZEBOX
           #:WS_TILED
           #:WS_ICONIC
           #:WS_SIZEBOX
           #:WS_OVERLAPPEDWINDOW
           #:WS_TILEDWINDOW
           #:WS_POPUPWINDOW
           #:WS_CHILDWINDOW
           #:CW_USEDEFAULT
           #:SW_HIDE
           #:SW_SHOWNORMAL
           #:SW_NORMAL
           #:SW_SHOWMINIMIZED
           #:SW_SHOWMAXIMIZED
           #:SW_MAXIMIZE
           #:SW_SHOWNOACTIVATE
           #:SW_SHOW
           #:SW_MINIMIZE
           #:SW_SHOWMINNOACTIVE
           #:SW_SHOWNA
           #:SW_RESTORE
           #:SW_SHOWDEFAULT
           #:SW_FORCEMINIMIZE
           #:SW_MAX
           #:WM_NULL
           #:WM_CREATE
           #:WM_DESTROY
           #:WM_MOVE
           #:WM_SIZE
           #:WM_ACTIVATE
           #:WM_SETFOCUS
           #:WM_KILLFOCUS
           #:WM_ENABLE
           #:WM_SETREDRAW
           #:WM_SETTEXT
           #:WM_GETTEXT
           #:WM_GETTEXTLENGTH
           #:WM_PAINT
           #:WM_CLOSE
           #:WM_QUERYENDSESSION
           #:WM_QUIT
           #:WM_QUERYOPEN
           #:WM_ERASEBKGND
           #:WM_SYSCOLORCHANGE
           #:WM_ENDSESSION
           #:WM_SHOWWINDOW
           #:WM_WININICHANGE
           #:WM_SETTINGCHANGE
           #:WM_DEVMODECHANGE
           #:WM_ACTIVATEAPP
           #:WM_FONTCHANGE
           #:WM_TIMECHANGE
           #:WM_CANCELMODE
           #:WM_SETCURSOR
           #:WM_MOUSEACTIVATE
           #:WM_CHILDACTIVATE
           #:WM_QUEUESYNC
           #:WM_GETMINMAXINFO
           #:WM_PAINTICON
           #:WM_ICONERASEBKGND
           #:WM_NEXTDLGCTL
           #:WM_SPOOLERSTATUS
           #:WM_DRAWITEM
           #:WM_MEASUREITEM
           #:WM_DELETEITEM
           #:WM_VKEYTOITEM
           #:WM_CHARTOITEM
           #:WM_SETFONT
           #:WM_GETFONT
           #:WM_SETHOTKEY
           #:WM_GETHOTKEY
           #:WM_QUERYDRAGICON
           #:WM_COMPAREITEM
           #:WM_GETOBJECT
           #:WM_COMPACTING
           #:WM_COMMNOTIFY
           #:WM_WINDOWPOSCHANGING
           #:WM_WINDOWPOSCHANGED
           #:WM_POWER
           #:WM_COPYDATA
           #:WM_CANCELJOURNAL
           #:WM_NOTIFY
           #:WM_INPUTLANGCHANGEREQUEST
           #:WM_INPUTLANGCHANGE
           #:WM_TCARD
           #:WM_HELP
           #:WM_USERCHANGED
           #:WM_NOTIFYFORMAT
           #:WM_CONTEXTMENU
           #:WM_STYLECHANGING
           #:WM_STYLECHANGED
           #:WM_DISPLAYCHANGE
           #:WM_GETICON
           #:WM_SETICON
           #:WM_NCCREATE
           #:WM_NCDESTROY
           #:WM_NCCALCSIZE
           #:WM_NCHITTEST
           #:WM_NCPAINT
           #:WM_NCACTIVATE
           #:WM_GETDLGCODE
           #:WM_SYNCPAINT
           #:WM_NCMOUSEMOVE
           #:WM_NCLBUTTONDOWN
           #:WM_NCLBUTTONUP
           #:WM_NCLBUTTONDBLCLK
           #:WM_NCRBUTTONDOWN
           #:WM_NCRBUTTONUP
           #:WM_NCRBUTTONDBLCLK
           #:WM_NCMBUTTONDOWN
           #:WM_NCMBUTTONUP
           #:WM_NCMBUTTONDBLCLK
           #:WM_NCXBUTTONDOWN
           #:WM_NCXBUTTONUP
           #:WM_NCXBUTTONDBLCLK
           #:WM_INPUT_DEVICE_CHANGE
           #:WM_INPUT
           #:WM_KEYFIRST
           #:WM_KEYDOWN
           #:WM_KEYUP
           #:WM_CHAR
           #:WM_DEADCHAR
           #:WM_SYSKEYDOWN
           #:WM_SYSKEYUP
           #:WM_SYSCHAR
           #:WM_SYSDEADCHAR
           #:WM_UNICHAR
           #:WM_KEYLAST
           #:UNICODE_NOCHAR
           #:WM_IME_STARTCOMPOSITION
           #:WM_IME_ENDCOMPOSITION
           #:WM_IME_COMPOSITION
           #:WM_IME_KEYLAST
           #:WM_INITDIALOG
           #:WM_COMMAND
           #:WM_SYSCOMMAND
           #:WM_TIMER
           #:WM_HSCROLL
           #:WM_VSCROLL
           #:WM_INITMENU
           #:WM_INITMENUPOPUP
           #:WM_GESTURE
           #:WM_GESTURENOTIFY
           #:WM_MENUSELECT
           #:WM_MENUCHAR
           #:WM_ENTERIDLE
           #:WM_MENURBUTTONUP
           #:WM_MENUDRAG
           #:WM_MENUGETOBJECT
           #:WM_UNINITMENUPOPUP
           #:WM_MENUCOMMAND
           #:WM_CHANGEUISTATE
           #:WM_UPDATEUISTATE
           #:WM_QUERYUISTATE
           #:WM_CTLCOLORMSGBOX
           #:WM_CTLCOLOREDIT
           #:WM_CTLCOLORLISTBOX
           #:WM_CTLCOLORBTN
           #:WM_CTLCOLORDLG
           #:WM_CTLCOLORSCROLLBAR
           #:WM_CTLCOLORSTATIC
           #:MN_GETHMENU
           #:WM_MOUSEFIRST
           #:WM_MOUSEMOVE
           #:WM_LBUTTONDOWN
           #:WM_LBUTTONUP
           #:WM_LBUTTONDBLCLK
           #:WM_RBUTTONDOWN
           #:WM_RBUTTONUP
           #:WM_RBUTTONDBLCLK
           #:WM_MBUTTONDOWN
           #:WM_MBUTTONUP
           #:WM_MBUTTONDBLCLK
           #:WM_MOUSEWHEEL
           #:WM_XBUTTONDOWN
           #:WM_XBUTTONUP
           #:WM_XBUTTONDBLCLK
           #:WM_MOUSEHWHEEL
           #:WM_MOUSELAST
           #:WM_PARENTNOTIFY
           #:WM_ENTERMENULOOP
           #:WM_EXITMENULOOP
           #:WM_NEXTMENU
           #:WM_SIZING
           #:WM_CAPTURECHANGED
           #:WM_MOVING
           #:WM_POWERBROADCAST
           #:WM_DEVICECHANGE
           #:WM_MDICREATE
           #:WM_MDIDESTROY
           #:WM_MDIACTIVATE
           #:WM_MDIRESTORE
           #:WM_MDINEXT
           #:WM_MDIMAXIMIZE
           #:WM_MDITILE
           #:WM_MDICASCADE
           #:WM_MDIICONARRANGE
           #:WM_MDIGETACTIVE
           #:WM_MDISETMENU
           #:WM_ENTERSIZEMOVE
           #:WM_EXITSIZEMOVE
           #:WM_DROPFILES
           #:WM_MDIREFRESHMENU
           #:WM_TOUCH
           #:WM_IME_SETCONTEXT
           #:WM_IME_NOTIFY
           #:WM_IME_CONTROL
           #:WM_IME_COMPOSITIONFULL
           #:WM_IME_SELECT
           #:WM_IME_CHAR
           #:WM_IME_REQUEST
           #:WM_IME_KEYDOWN
           #:WM_IME_KEYUP
           #:WM_MOUSEHOVER
           #:WM_MOUSELEAVE
           #:WM_NCMOUSEHOVER
           #:WM_NCMOUSELEAVE
           #:WM_WTSSESSION_CHANGE
           #:WM_TABLET_FIRST
           #:WM_TABLET_LAST
           #:WM_CUT
           #:WM_COPY
           #:WM_PASTE
           #:WM_CLEAR
           #:WM_UNDO
           #:WM_RENDERFORMAT
           #:WM_RENDERALLFORMATS
           #:WM_DESTROYCLIPBOARD
           #:WM_DRAWCLIPBOARD
           #:WM_PAINTCLIPBOARD
           #:WM_VSCROLLCLIPBOARD
           #:WM_SIZECLIPBOARD
           #:WM_ASKCBFORMATNAME
           #:WM_CHANGECBCHAIN
           #:WM_HSCROLLCLIPBOARD
           #:WM_QUERYNEWPALETTE
           #:WM_PALETTEISCHANGING
           #:WM_PALETTECHANGED
           #:WM_HOTKEY
           #:WM_PRINT
           #:WM_PRINTCLIENT
           #:WM_APPCOMMAND
           #:WM_THEMECHANGED
           #:WM_CLIPBOARDUPDATE
           #:WM_DWMCOMPOSITIONCHANGED
           #:WM_DWMNCRENDERINGCHANGED
           #:WM_DWMCOLORIZATIONCOLORCHANGED
           #:WM_DWMWINDOWMAXIMIZEDCHANGE
           #:WM_DWMSENDICONICTHUMBNAIL
           #:WM_DWMSENDICONICLIVEPREVIEWBITMAP
           #:WM_GETTITLEBARINFOEX
           #:WM_HANDHELDFIRST
           #:WM_HANDHELDLAST
           #:WM_AFXFIRST
           #:WM_AFXLAST
           #:WM_PENWINFIRST
           #:WM_PENWINLAST
           #:WM_USER
           #:WM_APP

           #:POINT
           #:x
           #:y
           #:PPOINT
           #:LPPOINT

           #:WNDCLASS
           #:style
           #:lpfnWndProc
           #:cbClsExtra
           #:cbWndExtra
           #:hInstance
           #:hIcon
           #:hCursor
           #:hbrBackground
           #:lpszMenuName
           #:lpszClassName
           #:PWNDCLASS

           #:MSG
           #:hwnd
           #:message
           #:wParam
           #:lParam
           #:time
           #:pt
           #:PMSG
           #:LPMSG

           #:RegisterClass
           #:GetModuleHandle
           #:LoadIcon
           #:LoadCursor
           #:GetStockObject
           #:CreateWindowEx
           #:ShowWindow
           #:UpdateWindow
           #:GetMessage
           #:TranslateMessage
           #:DispatchMessage
           #:PostQuitMessage
           #:DefWindowProc

           #:register-class
           #:create-window-ex))
