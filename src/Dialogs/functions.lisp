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

(in-package :Lunette.Dialogs)

(defcfun "GetDlgItem" HWND
  (hDlg HWND)
  (nIDDlgItem :INT))

(defcfun "SetDlgItemInt" BOOL
  (hDlg       HWND)
  (nIDDlgItem :INT)
  (uValue     :UINT)
  (bSigned    BOOL))

(defcfun "GetDlgItemInt" :UINT
  (hDlg         HWND)
  (nIDDlgItem   :INT)
  (lpTranslated :pointer) ;out boolean value
  (bSigned      BOOL))

(defcfun ("GetDlgItemTextW" GetDlgItemText) :UINT
  (hDlg HWND)
  (nIDDlgItem :INT)
  (lpString LPTSTR)
  (nMaxCount :INT))

(defcfun ("SetDlgItemTextW" SetDlgItemText) BOOL
  (hDlg HWND)
  (nIDDlgItem :INT)
  (lpString LPTSTR))

(defcfun "GetDialogBaseUnits" :LONG)

(defcfun "EndDialog" BOOL
  (hDlg HWND)
  (nResult INT_PTR))

(defcfun "MapDialogRect" BOOL
  (hDlg HWND)
  (lpRect LPRECT))

(defcfun ("DialogBoxParamW" DialogBoxParam) INT_PTR
  (hInstance HINSTANCE)
  (lpTemplateName LPCSTR)
  (hWndParent HWND)
  (lpDialogFunc DLGPROC)
  (dwInitParam LPARAM))

(defcfun ("CreateDialogParamW" CreateDialogParam) HWND
  (hInstance HINSTANCE)
  (lpTemplateName LPCSTR)
  (hWndParent HWND)
  (lpDialogFunc DLGPROC)
  (dwInitParam LPARAM))

(defcfun ("SendDlgItemMessageW" SendDlgItemMessage) LRESULT
  (hDlg       HWND)
  (nIDDlgItem :INT)
  (Msg        :UINT)
  (wParam     WPARAM)
  (lParam     LPARAM))

(defcfun ("IsDialogMessageW" IsDialogMessage) BOOL
  (hDlg HWND)
  (lpMsg LPMSG))
