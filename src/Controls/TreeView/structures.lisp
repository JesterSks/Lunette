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

(in-package :Lunette.Controls.TreeView)

(defcstruct tagTVITEMEX
  (mask            :UINT)
  (hItem           HTREEITEM)
  (state           :UINT)
  (stateMask       :UINT)
  (pszText         LPWSTR)
  (cchTextMax      :INT)
  (iImage          :INT)
  (iSelectedImage  :INT)
  (cChildren       :INT)
  (:lParam         LPARAM)
  (iIntegral       :INT)
  (uStateEx        :UINT)
  (hwnd            HWND)
  (iExpandedImage  :INT)
  (iReserved       :INT))

(defctype TVITEMEX (:struct tagTVITEMEX))
(defctype LPTVITEMEX (:pointer TVITEMEX))

(defcstruct tagTVITEM
  (mask              :UINT)
  (hItem             HTREEITEM)
  (state             :UINT)
  (stateMask         :UINT)
  (pszText           LPWSTR)
  (cchTextMax        :INT)
  (iImage            :INT)
  (iSelectedImage    :INT)
  (cChildren         :INT)
  (:lParam           LPARAM))

(defctype TVITEM (:struct tagTVITEM))
(defctype LPTVITEM (:pointer TVITEM))

(defcunion _utvitem
  (itemex TVITEMEX)
  (item   TVITEM))

(defctype utvitem (:union _utvitem))
(defctype lputvitem (:pointer utvitem))

(defcstruct _TVINSERTSTRUCT
  (hParent      HTREEITEM)
  (hInsertAfter HTREEITEM)
  (item         utvitem))

(defctype TVINSERTSTRUCT (:struct _TVINSERTSTRUCT))
(defctype LPTVINSERTSTRUCT (:pointer TVINSERTSTRUCT))

(defcstruct tagNMTREEVIEW
  (hdr     NMHDR)
  (action  :UINT)
  (itemOld TVITEM)
  (itemNew TVITEM)
  (ptDrag  POINT))

(defctype NMTREEVIEW (:struct tagNMTREEVIEW))
(defctype LPNMTREEVIEW (:pointer NMTREEVIEW))
