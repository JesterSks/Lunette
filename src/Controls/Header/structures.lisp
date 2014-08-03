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

(defcstruct _HD_ITEM
  (mask       :UINT)
  (cxy        :INT)
  (pszText    LPWSTR)
  (hbm        HBITMAP)
  (cchTextMax :INT)
  (fmt        :INT)
  (lParam     LPARAM)
  (iImage     :INT)
  (iOrder     :INT)
  (type       :UINT)
  (pvFilter   :pointer)
  (state      :UINT))

(defctype HDITEM (:struct _HD_ITEM))
(defctype LPHDITEM (:pointer HDITEM))

(defcstruct _HD_LAYOUT
  (prc   LPRECT)
  (pwpos LPWINDOWPOS))

(defctype HDLAYOUT (:struct _HD_LAYOUT))
(defctype LPHDLAYOUT (:pointer HDLAYOUT))

(defcstruct tagNMHEADER
  (hdr NMHDR)
  (iItem :INT)
  (iButton :INT)
  (pitem LPHDITEM))

(defctype NMHEADER (:struct tagNMHEADER))
(defctype LPNMHEADER (:pointer NMHEADER))
