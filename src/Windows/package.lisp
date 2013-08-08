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

(defpackage :Lunette.Windows
  (:use #:common-lisp
        #:Lunette.System)
  (:import-from :cffi
                #:defcfun
                #:defcstruct
                #:defctype
                #:with-foreign-strings
                #:with-foreign-object
                #:null-pointer
                #:null-pointer-p
                #:foreign-slot-value)
  (:import-from :alexandria
                #:define-constant)
  (:import-from :Lunette.Errors
                #:get-last-error
                #:ERROR_CLASS_ALREADY_EXISTS)
  (:import-from :Lunette.Resources
                #:IDI_APPLICATION
                #:IDC_ARROW

                #:LoadIcon
                #:LoadCursor)
  (:import-from :Lunette.Graphics
                #:WHITE_BRUSH

                #:RECT
                #:LPRECT

                #:GetStockObject)
  (:export #:CS_VREDRAW
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

           #:RegisterClass
           #:CreateWindowEx
           #:ShowWindow
           #:UpdateWindow
           #:DefWindowProc
           #:GetClientRect

           #:register-class
           #:create-window-ex))
