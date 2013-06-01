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

(in-package :Lunette)

(defcstruct _RECT
  (left   :long)
  (top    :long)
  (right  :long)
  (bottom :long))

(defctype RECT   (:struct _RECT))
(defctype PRECT  (:pointer RECT))
(defctype LPRECT (:pointer RECT))

(defcstruct tagPOINT
  (x :long)
  (y :long))

(defctype POINT   (:struct tagPOINT))
(defctype PPOINT  (:pointer POINT))
(defctype LPPOINT (:pointer POINT))

(defcstruct tagWNDCLASS
  (style         :UINT)
  (lpfnWndProc   WNDPROC)
  (cbClsExtra    :INT)
  (cbWndExtra    :INT)
  (hInstance     HINSTANCE)
  (hIcon         HICON)
  (hCursor       HCURSOR)
  (hbrBackground HBRUSH)
  (lpszMenuName  LPCWSTR)
  (lpszClassName LPCWSTR))

(defctype WNDCLASS  (:struct tagWNDCLASS))
(defctype PWNDCLASS (:pointer WNDCLASS))

(defcstruct tagMSG
  (hwnd    HWND)
  (message :UINT)
  (wParam  WPARAM)
  (lParam  LPARAM)
  (time    DWORD)
  (pt      POINT))

(defctype MSG   (:struct tagMSG))
(defctype PMSG  (:pointer MSG))
(defctype LPMSG (:pointer MSG))

(defcstruct tagPAINTSTRUCT
  (hdc         HDC)
  (fErase      BOOL)
  (rcPaint     RECT)
  (fRestore    BOOL)
  (fIncUpdate  BOOL)
  (rgbReserved :int8 :count 32))

(defctype PAINTSTRUCT (:struct tagPAINTSTRUCT))
(defctype LPPAINTSTRUCT (:pointer PAINTSTRUCT))
