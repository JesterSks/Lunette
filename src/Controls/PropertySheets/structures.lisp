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

(in-package :Lunette.Controls.PropertySheets)

(defcunion DUMMYUNION1
  (pszTemplate LPCWSTR)
  (pResource LPCDLGTEMPLATE))

(defcunion DUMMYUNION2
  (hIcon HICON)
  (pszIcon LPCWSTR))

(defcstruct _PROPSHEETPAGE
  (dwSize DWORD)
  (dwFlags           DWORD)
  (hInstance         HINSTANCE)
  (dlgrsrc           DUMMYUNION1)
  (iconrsrc          DUMMYUNION2)
  (pszTitle          LPCWSTR)
  (pfnDlgProc        DLGPROC)
  (lParam            LPARAM)
  (pfnCallback       LPFNPSPCALLBACK)
  (pcRefparent       :UINT)
  (pszHeaderTitle    LPCWSTR)
  (pszHeaderSubTitle LPCWSTR))

(defctype PROPSHEETPAGE (:struct _PROPSHEETPAGE))
(defctype LPPROPSHEETPAGE (:pointer PROPSHEETPAGE))
(defctype LPCPROPSHEETPAGE (:pointer PROPSHEETPAGE))

(defcunion DUMMYUNION3
  (nStartPage :UINT)
  (pStartPage LPCWSTR))

(defcunion DUMMYUNION4
  (ppsp LPCPROPSHEETPAGE)
  (phpage HPROPSHEETPAGE))

(defcunion DUMMYUNION5
  (hbmWatermark HBITMAP)
  (pszbmWatermark LPCWSTR))

(defcunion DUMMYUNION6
  (hbmHeader HBITMAP)
  (pszbmHeader LPCWSTR))

(defcstruct _PROPSHEETHEADER
  (dwSize DWORD)
  (dwFlags      DWORD)
  (hwndParent   HWND)
  (hInstance    HINSTANCE)
  (iconrsrc     DUMMYUNION2)
  (pszCaption   LPCWSTR)
  (nPages       :UINT)
  (startPage    DUMMYUNION3)
  (sheetpage    DUMMYUNION4)
  (pfnCallback  PFNPROPSHEETCALLBACK)
  (rsrcbmp      DUMMYUNION5)
  (hplWatermark HPALETTE)
  (headerbmp    DUMMYUNION6))

(defctype PROPSHEETHEADER (:struct _PROPSHEETHEADER))
(defctype LPPROPSHEETHEADER (:pointer PROPSHEETHEADER))
(defctype LPCPROPSHEETHEADER (:pointer PROPSHEETHEADER))

(defcstruct _PSHNOTIFY
  (hdr NMHDR)
  (lParam LPARAM))

(defctype PSHNOTIFY (:struct _PSHNOTIFY))
(defctype LPPSHNOTIFY (:pointer _PSHNOTIFY))
