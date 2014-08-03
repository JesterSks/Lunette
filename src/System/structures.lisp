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

(defcstruct tagPOINT
  (x :long)
  (y :long))

(defctype POINT   (:struct tagPOINT))
(defctype PPOINT  (:pointer POINT))
(defctype LPPOINT (:pointer POINT))

(defcstruct tagSIZE
  (cx :long)
  (cy :long))

(defctype SIZE   (:struct tagSize))
(defctype PSIZE  (:pointer SIZE))
(defctype LPSIZE (:pointer SIZE))

(defcstruct tagNMHDR
  (hWndFrom HWND)
  (idFrom   UINT_PTR)
  (code     :UINT))

(defctype NMHDR   (:struct tagNMHDR))
(defctype LPNMHDR (:pointer NMHDR))

(defcstruct _NMTTDISPINFO
  (hdr      NMHDR)
  (lpszText LPSTR)
  (szText   WCHAR :count 80)
  (hinst    HINSTANCE)
  (uFlags   :UINT)
  (lParam   LPARAM))

(defctype NMTTDISPINFO   (:struct _NMTTDISPINFO))
(defctype LPNMTTDISPINFO (:pointer NMTTDISPINFO))

(defcstruct _SYSTEMTIME
  (wYear          WORD)
  (wMonth         WORD)
  (wDayOfWeek     WORD)
  (wDay           WORD)
  (wHour          WORD)
  (wMinute        WORD)
  (wSecond        WORD)
  (wMilliseconds  WORD))

(defctype SYSTEMTIME   (:struct  _SYSTEMTIME))
(defctype PSYSTEMTIME  (:pointer SYSTEMTIME))
(defctype LPSYSTEMTIME (:pointer SYSTEMTIME))
