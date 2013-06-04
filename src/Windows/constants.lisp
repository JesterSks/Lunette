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

(in-package :Lunette.Windows)

;;; Window Class Constants
(define-constant CS_VREDRAW         #x0001)
(define-constant CS_HREDRAW         #x0002)
(define-constant CS_DBLCLKS         #x0008)
(define-constant CS_OWNDC           #x0020)
(define-constant CS_CLASSDC         #x0040)
(define-constant CS_PARENTDC        #x0080)
(define-constant CS_NOCLOSE         #x0200)
(define-constant CS_SAVEBITS        #x0800)
(define-constant CS_BYTEALIGNCLIENT #x1000)
(define-constant CS_BYTEALIGNWINDOW #x2000)
(define-constant CS_GLOBALCLASS     #x4000)
(define-constant CS_IME             #x00010000)
(define-constant CS_DROPSHADOW      #x00020000)

;;; Window Style Constants
(define-constant WS_OVERLAPPED   #x00000000)
(define-constant WS_POPUP        #x80000000)
(define-constant WS_CHILD        #x40000000)
(define-constant WS_MINIMIZE     #x20000000)
(define-constant WS_VISIBLE      #x10000000)
(define-constant WS_DISABLED     #x08000000)
(define-constant WS_CLIPSIBLINGS #x04000000)
(define-constant WS_CLIPCHILDREN #x02000000)
(define-constant WS_MAXIMIZE     #x01000000)
(define-constant WS_CAPTION      #x00C00000)
(define-constant WS_BORDER       #x00800000)
(define-constant WS_DLGFRAME     #x00400000)
(define-constant WS_VSCROLL      #x00200000)
(define-constant WS_HSCROLL      #x00100000)
(define-constant WS_SYSMENU      #x00080000)
(define-constant WS_THICKFRAME   #x00040000)
(define-constant WS_GROUP        #x00020000)
(define-constant WS_TABSTOP      #x00010000)

(define-constant WS_MINIMIZEBOX #x00020000)
(define-constant WS_MAXIMIZEBOX #x00010000)

(define-constant WS_TILED       WS_OVERLAPPED)
(define-constant WS_ICONIC      WS_MINIMIZE)
(define-constant WS_SIZEBOX     WS_THICKFRAME)

(define-constant WS_OVERLAPPEDWINDOW (logior WS_OVERLAPPED
                                             WS_CAPTION
                                             WS_SYSMENU
                                             WS_THICKFRAME
                                             WS_MINIMIZEBOX
                                             WS_MAXIMIZEBOX))
(define-constant WS_TILEDWINDOW      WS_OVERLAPPEDWINDOW)

(define-constant WS_POPUPWINDOW (logior WS_POPUP
                                        WS_BORDER
                                        WS_SYSMENU))
(define-constant WS_CHILDWINDOW WS_CHILD)

;;;  The CW_USEDEFAULT is 0x80000000 which in signed terms is -2147483648.
;;;  Since CFFI treats the hex value #x80000000 as a positive value instead of a signed 32 bit value
;;;  which causes an error I'm using the signed number.
(define-constant CW_USEDEFAULT -2147483648)

;;; ShowWindow Command Constants
(define-constant SW_HIDE             0)
(define-constant SW_SHOWNORMAL       1)
(define-constant SW_NORMAL           1)
(define-constant SW_SHOWMINIMIZED    2)
(define-constant SW_SHOWMAXIMIZED    3)
(define-constant SW_MAXIMIZE         3)
(define-constant SW_SHOWNOACTIVATE   4)
(define-constant SW_SHOW             5)
(define-constant SW_MINIMIZE         6)
(define-constant SW_SHOWMINNOACTIVE  7)
(define-constant SW_SHOWNA           8)
(define-constant SW_RESTORE          9)
(define-constant SW_SHOWDEFAULT      10)
(define-constant SW_FORCEMINIMIZE    11)
(define-constant SW_MAX              11)
