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

(in-package :Lunette.Controls.Scrollbar)

(defcfun "GetScrollInfo" BOOL
  (hwnd HWND)
  (fnBar :INT)
  (lpsi LPSCROLLINFO))

(defcfun "SetScrollInfo" :INT
  (hwnd HWND)
  (fnBar :INT)
  (lpsi LPCSCROLLINFO)
  (fRedraw BOOL))

(defcfun "SetScrollRange" BOOL
  (hWnd HWND)
  (nBar :INT)
  (nMinPos :INT)
  (nMaxPos :INT)
  (bRedraw BOOL))

(defcfun "SetScrollPos" :INT
  (hWnd HWND)
  (nBar :INT)
  (nPos :INT)
  (bRedraw BOOL))
