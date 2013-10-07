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

(in-package :Lunette.Controls.Toolbar)

(defcstruct _TBBUTTON
  (iBitmap   :INT)
  (idCommand :INT)
  (fsState   BYTE)
  (fsStyle   BYTE)
  #+CFFI-FEATURES:x86-64
  (bReserved BYTE :count 6)
  #+CFFI-FEATURES:x86
  (bReserved BYTE :count 2)
  (dwData DWORD_PTR)
  (iString INT_PTR))

(defctype TBBUTTON (:struct _TBBUTTON))
(defctype LPTBBUTTON (:pointer TBBUTTON))
(defctype LPCTBBUTTON (:pointer TBBUTTON))

(defcstruct _TBADDBITMAP
  (hInstTB HINSTANCE)
  (nID     UINT_PTR))

(defctype TBADDBITMAP (:struct _TBADDBITMAP))
(defctype LPTBADDBITMAP (:pointer TBADDBITMAP))
