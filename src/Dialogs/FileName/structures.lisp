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

(in-package :Lunette.Dialogs.FileName)

(defcstruct tagOFN
  (lStructSize       DWORD)
  (hwndOwner         HWND)
  (hInstance         HINSTANCE)
  (lpstrFilter       LPCTSTR)
  (lpstrCustomFilter LPTSTR)
  (nMaxCustFilter    DWORD)
  (nFilterIndex      DWORD)
  (lpstrFile         LPTSTR)
  (nMaxFile          DWORD)
  (lpstrFileTitle    LPTSTR)
  (nMaxFileTitle     DWORD)
  (lpstrInitialDir   LPCTSTR)
  (lpstrTitle        LPCTSTR)
  (Flags             DWORD)
  (nFileOffset       WORD)
  (nFileExtension    WORD)
  (lpstrDefExt       LPCTSTR)
  (lCustData         LPARAM)
  (lpfnHook          LPOFNHOOKPROC)
  (lpTemplateName    LPCTSTR)
  (pvRexerved        :pointer)
  (dwReserved        DWORD)
  (FlagsEx           DWORD))

(defctype OPENFILENAME (:struct tagOFN))
(defctype LPOPENFILENAME (:pointer OPENFILENAME))
