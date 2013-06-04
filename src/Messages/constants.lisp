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

(in-package :Lunette.Messages)

;;; Window Message Constants
(define-constant WM_NULL                           #x0000)
(define-constant WM_CREATE                         #x0001)
(define-constant WM_DESTROY                        #x0002)
(define-constant WM_MOVE                           #x0003)
(define-constant WM_SIZE                           #x0005)
(define-constant WM_ACTIVATE                       #x0006)
(define-constant WM_SETFOCUS                       #x0007)
(define-constant WM_KILLFOCUS                      #x0008)
(define-constant WM_ENABLE                         #x000A)
(define-constant WM_SETREDRAW                      #x000B)
(define-constant WM_SETTEXT                        #x000C)
(define-constant WM_GETTEXT                        #x000D)
(define-constant WM_GETTEXTLENGTH                  #x000E)
(define-constant WM_PAINT                          #x000F)
(define-constant WM_CLOSE                          #x0010)
(define-constant WM_QUERYENDSESSION                #x0011)
(define-constant WM_QUIT                           #x0012)
(define-constant WM_QUERYOPEN                      #x0013)
(define-constant WM_ERASEBKGND                     #x0014)
(define-constant WM_SYSCOLORCHANGE                 #x0015)
(define-constant WM_ENDSESSION                     #x0016)
(define-constant WM_SHOWWINDOW                     #x0018)
(define-constant WM_WININICHANGE                   #x001A)
(define-constant WM_SETTINGCHANGE                  WM_WININICHANGE)
(define-constant WM_DEVMODECHANGE                  #x001B)
(define-constant WM_ACTIVATEAPP                    #x001C)
(define-constant WM_FONTCHANGE                     #x001D)
(define-constant WM_TIMECHANGE                     #x001E)
(define-constant WM_CANCELMODE                     #x001F)
(define-constant WM_SETCURSOR                      #x0020)
(define-constant WM_MOUSEACTIVATE                  #x0021)
(define-constant WM_CHILDACTIVATE                  #x0022)
(define-constant WM_QUEUESYNC                      #x0023)
(define-constant WM_GETMINMAXINFO                  #x0024)
(define-constant WM_PAINTICON                      #x0026)
(define-constant WM_ICONERASEBKGND                 #x0027)
(define-constant WM_NEXTDLGCTL                     #x0028)
(define-constant WM_SPOOLERSTATUS                  #x002A)
(define-constant WM_DRAWITEM                       #x002B)
(define-constant WM_MEASUREITEM                    #x002C)
(define-constant WM_DELETEITEM                     #x002D)
(define-constant WM_VKEYTOITEM                     #x002E)
(define-constant WM_CHARTOITEM                     #x002F)
(define-constant WM_SETFONT                        #x0030)
(define-constant WM_GETFONT                        #x0031)
(define-constant WM_SETHOTKEY                      #x0032)
(define-constant WM_GETHOTKEY                      #x0033)
(define-constant WM_QUERYDRAGICON                  #x0037)
(define-constant WM_COMPAREITEM                    #x0039)
(define-constant WM_GETOBJECT                      #x003D)
(define-constant WM_COMPACTING                     #x0041)
(define-constant WM_COMMNOTIFY                     #x0044)
(define-constant WM_WINDOWPOSCHANGING              #x0046)
(define-constant WM_WINDOWPOSCHANGED               #x0047)
(define-constant WM_POWER                          #x0048)
(define-constant WM_COPYDATA                       #x004A)
(define-constant WM_CANCELJOURNAL                  #x004B)
(define-constant WM_NOTIFY                         #x004E)
(define-constant WM_INPUTLANGCHANGEREQUEST         #x0050)
(define-constant WM_INPUTLANGCHANGE                #x0051)
(define-constant WM_TCARD                          #x0052)
(define-constant WM_HELP                           #x0053)
(define-constant WM_USERCHANGED                    #x0054)
(define-constant WM_NOTIFYFORMAT                   #x0055)
(define-constant WM_CONTEXTMENU                    #x007B)
(define-constant WM_STYLECHANGING                  #x007C)
(define-constant WM_STYLECHANGED                   #x007D)
(define-constant WM_DISPLAYCHANGE                  #x007E)
(define-constant WM_GETICON                        #x007F)
(define-constant WM_SETICON                        #x0080)
(define-constant WM_NCCREATE                       #x0081)
(define-constant WM_NCDESTROY                      #x0082)
(define-constant WM_NCCALCSIZE                     #x0083)
(define-constant WM_NCHITTEST                      #x0084)
(define-constant WM_NCPAINT                        #x0085)
(define-constant WM_NCACTIVATE                     #x0086)
(define-constant WM_GETDLGCODE                     #x0087)
(define-constant WM_SYNCPAINT                      #x0088)
(define-constant WM_NCMOUSEMOVE                    #x00A0)
(define-constant WM_NCLBUTTONDOWN                  #x00A1)
(define-constant WM_NCLBUTTONUP                    #x00A2)
(define-constant WM_NCLBUTTONDBLCLK                #x00A3)
(define-constant WM_NCRBUTTONDOWN                  #x00A4)
(define-constant WM_NCRBUTTONUP                    #x00A5)
(define-constant WM_NCRBUTTONDBLCLK                #x00A6)
(define-constant WM_NCMBUTTONDOWN                  #x00A7)
(define-constant WM_NCMBUTTONUP                    #x00A8)
(define-constant WM_NCMBUTTONDBLCLK                #x00A9)
(define-constant WM_NCXBUTTONDOWN                  #x00AB)
(define-constant WM_NCXBUTTONUP                    #x00AC)
(define-constant WM_NCXBUTTONDBLCLK                #x00AD)
(define-constant WM_INPUT_DEVICE_CHANGE            #x00FE)
(define-constant WM_INPUT                          #x00FF)
(define-constant WM_KEYFIRST                       #x0100)
(define-constant WM_KEYDOWN                        #x0100)
(define-constant WM_KEYUP                          #x0101)
(define-constant WM_CHAR                           #x0102)
(define-constant WM_DEADCHAR                       #x0103)
(define-constant WM_SYSKEYDOWN                     #x0104)
(define-constant WM_SYSKEYUP                       #x0105)
(define-constant WM_SYSCHAR                        #x0106)
(define-constant WM_SYSDEADCHAR                    #x0107)
(define-constant WM_UNICHAR                        #x0109)
(define-constant WM_KEYLAST                        #x0109)
(define-constant UNICODE_NOCHAR                    #xFFFF)
(define-constant WM_IME_STARTCOMPOSITION           #x010D)
(define-constant WM_IME_ENDCOMPOSITION             #x010E)
(define-constant WM_IME_COMPOSITION                #x010F)
(define-constant WM_IME_KEYLAST                    #x010F)
(define-constant WM_INITDIALOG                     #x0110)
(define-constant WM_COMMAND                        #x0111)
(define-constant WM_SYSCOMMAND                     #x0112)
(define-constant WM_TIMER                          #x0113)
(define-constant WM_HSCROLL                        #x0114)
(define-constant WM_VSCROLL                        #x0115)
(define-constant WM_INITMENU                       #x0116)
(define-constant WM_INITMENUPOPUP                  #x0117)
(define-constant WM_GESTURE                        #x0119)
(define-constant WM_GESTURENOTIFY                  #x011A)
(define-constant WM_MENUSELECT                     #x011F)
(define-constant WM_MENUCHAR                       #x0120)
(define-constant WM_ENTERIDLE                      #x0121)
(define-constant WM_MENURBUTTONUP                  #x0122)
(define-constant WM_MENUDRAG                       #x0123)
(define-constant WM_MENUGETOBJECT                  #x0124)
(define-constant WM_UNINITMENUPOPUP                #x0125)
(define-constant WM_MENUCOMMAND                    #x0126)
(define-constant WM_CHANGEUISTATE                  #x0127)
(define-constant WM_UPDATEUISTATE                  #x0128)
(define-constant WM_QUERYUISTATE                   #x0129)
(define-constant WM_CTLCOLORMSGBOX                 #x0132)
(define-constant WM_CTLCOLOREDIT                   #x0133)
(define-constant WM_CTLCOLORLISTBOX                #x0134)
(define-constant WM_CTLCOLORBTN                    #x0135)
(define-constant WM_CTLCOLORDLG                    #x0136)
(define-constant WM_CTLCOLORSCROLLBAR              #x0137)
(define-constant WM_CTLCOLORSTATIC                 #x0138)
(define-constant MN_GETHMENU                       #x01E1)
(define-constant WM_MOUSEFIRST                     #x0200)
(define-constant WM_MOUSEMOVE                      #x0200)
(define-constant WM_LBUTTONDOWN                    #x0201)
(define-constant WM_LBUTTONUP                      #x0202)
(define-constant WM_LBUTTONDBLCLK                  #x0203)
(define-constant WM_RBUTTONDOWN                    #x0204)
(define-constant WM_RBUTTONUP                      #x0205)
(define-constant WM_RBUTTONDBLCLK                  #x0206)
(define-constant WM_MBUTTONDOWN                    #x0207)
(define-constant WM_MBUTTONUP                      #x0208)
(define-constant WM_MBUTTONDBLCLK                  #x0209)
(define-constant WM_MOUSEWHEEL                     #x020A)
(define-constant WM_XBUTTONDOWN                    #x020B)
(define-constant WM_XBUTTONUP                      #x020C)
(define-constant WM_XBUTTONDBLCLK                  #x020D)
(define-constant WM_MOUSEHWHEEL                    #x020E)
(define-constant WM_MOUSELAST                      #x020E)
(define-constant WM_PARENTNOTIFY                   #x0210)
(define-constant WM_ENTERMENULOOP                  #x0211)
(define-constant WM_EXITMENULOOP                   #x0212)
(define-constant WM_NEXTMENU                       #x0213)
(define-constant WM_SIZING                         #x0214)
(define-constant WM_CAPTURECHANGED                 #x0215)
(define-constant WM_MOVING                         #x0216)
(define-constant WM_POWERBROADCAST                 #x0218)
(define-constant WM_DEVICECHANGE                   #x0219)
(define-constant WM_MDICREATE                      #x0220)
(define-constant WM_MDIDESTROY                     #x0221)
(define-constant WM_MDIACTIVATE                    #x0222)
(define-constant WM_MDIRESTORE                     #x0223)
(define-constant WM_MDINEXT                        #x0224)
(define-constant WM_MDIMAXIMIZE                    #x0225)
(define-constant WM_MDITILE                        #x0226)
(define-constant WM_MDICASCADE                     #x0227)
(define-constant WM_MDIICONARRANGE                 #x0228)
(define-constant WM_MDIGETACTIVE                   #x0229)
(define-constant WM_MDISETMENU                     #x0230)
(define-constant WM_ENTERSIZEMOVE                  #x0231)
(define-constant WM_EXITSIZEMOVE                   #x0232)
(define-constant WM_DROPFILES                      #x0233)
(define-constant WM_MDIREFRESHMENU                 #x0234)
(define-constant WM_TOUCH                          #x0240)
(define-constant WM_IME_SETCONTEXT                 #x0281)
(define-constant WM_IME_NOTIFY                     #x0282)
(define-constant WM_IME_CONTROL                    #x0283)
(define-constant WM_IME_COMPOSITIONFULL            #x0284)
(define-constant WM_IME_SELECT                     #x0285)
(define-constant WM_IME_CHAR                       #x0286)
(define-constant WM_IME_REQUEST                    #x0288)
(define-constant WM_IME_KEYDOWN                    #x0290)
(define-constant WM_IME_KEYUP                      #x0291)
(define-constant WM_MOUSEHOVER                     #x02A1)
(define-constant WM_MOUSELEAVE                     #x02A3)
(define-constant WM_NCMOUSEHOVER                   #x02A0)
(define-constant WM_NCMOUSELEAVE                   #x02A2)
(define-constant WM_WTSSESSION_CHANGE              #x02B1)
(define-constant WM_TABLET_FIRST                   #x02c0)
(define-constant WM_TABLET_LAST                    #x02df)
(define-constant WM_CUT                            #x0300)
(define-constant WM_COPY                           #x0301)
(define-constant WM_PASTE                          #x0302)
(define-constant WM_CLEAR                          #x0303)
(define-constant WM_UNDO                           #x0304)
(define-constant WM_RENDERFORMAT                   #x0305)
(define-constant WM_RENDERALLFORMATS               #x0306)
(define-constant WM_DESTROYCLIPBOARD               #x0307)
(define-constant WM_DRAWCLIPBOARD                  #x0308)
(define-constant WM_PAINTCLIPBOARD                 #x0309)
(define-constant WM_VSCROLLCLIPBOARD               #x030A)
(define-constant WM_SIZECLIPBOARD                  #x030B)
(define-constant WM_ASKCBFORMATNAME                #x030C)
(define-constant WM_CHANGECBCHAIN                  #x030D)
(define-constant WM_HSCROLLCLIPBOARD               #x030E)
(define-constant WM_QUERYNEWPALETTE                #x030F)
(define-constant WM_PALETTEISCHANGING              #x0310)
(define-constant WM_PALETTECHANGED                 #x0311)
(define-constant WM_HOTKEY                         #x0312)
(define-constant WM_PRINT                          #x0317)
(define-constant WM_PRINTCLIENT                    #x0318)
(define-constant WM_APPCOMMAND                     #x0319)
(define-constant WM_THEMECHANGED                   #x031A)
(define-constant WM_CLIPBOARDUPDATE                #x031D)
(define-constant WM_DWMCOMPOSITIONCHANGED          #x031E)
(define-constant WM_DWMNCRENDERINGCHANGED          #x031F)
(define-constant WM_DWMCOLORIZATIONCOLORCHANGED    #x0320)
(define-constant WM_DWMWINDOWMAXIMIZEDCHANGE       #x0321)
(define-constant WM_DWMSENDICONICTHUMBNAIL         #x0323)
(define-constant WM_DWMSENDICONICLIVEPREVIEWBITMAP #x0326)
(define-constant WM_GETTITLEBARINFOEX              #x033F)
(define-constant WM_HANDHELDFIRST                  #x0358)
(define-constant WM_HANDHELDLAST                   #x035F)
(define-constant WM_AFXFIRST                       #x0360)
(define-constant WM_AFXLAST                        #x037F)
(define-constant WM_PENWINFIRST                    #x0380)
(define-constant WM_PENWINLAST                     #x038F)
(define-constant WM_USER                           #x0400)
(define-constant WM_APP                            #x8000)