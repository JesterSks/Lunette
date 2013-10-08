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

(defpackage :Lunette.Controls.Tab
  (:use :common-lisp
        :Lunette.System)
  (:import-from :cffi
                #:defcunion
                #:defcstruct
                #:defctype
                #:defcfun)
  (:import-from :alexandria
                #:define-constant)
  (:import-from :Lunette.Controls
                #:CCM_SETUNICODEFORMAT
                #:CCM_GETUNICODEFORMAT)
  (:export #:WC_TABCONTROL

           #:TCIF_TEXT
           #:TCIF_IMAGE
           #:TCIF_RTLREADING
           #:TCIF_PARAM
           #:TCIF_STATE

           #:TCM_FIRST
           #:TCM_GETIMAGELIST
           #:TCM_SETIMAGELIST
           #:TCM_GETITEMCOUNT
           #:TCM_GETITEMA
           #:TCM_GETITEMW
           #:TCM_GETITEM
           #:TCM_SETITEMA
           #:TCM_SETITEMW
           #:TCM_SETITEM
           #:TCM_INSERTITEMA
           #:TCM_INSERTITEMW
           #:TCM_INSERTITEM
           #:TCM_DELETEITEM
           #:TCM_DELETEALLITEMS
           #:TCM_GETITEMRECT
           #:TCM_GETCURSEL
           #:TCM_SETCURSEL
           #:TCM_HITTEST
           #:TCM_SETITEMEXTRA
           #:TCM_ADJUSTRECT
           #:TCM_SETITEMSIZE
           #:TCM_REMOVEIMAGE
           #:TCM_SETPADDING
           #:TCM_GETROWCOUNT
           #:TCM_GETTOOLTIPS
           #:TCM_SETTOOLTIPS
           #:TCM_GETCURFOCUS
           #:TCM_SETCURFOCUS
           #:TCM_SETMINTABWIDTH
           #:TCM_DESELECTALL
           #:TCM_HIGHLIGHTITEM
           #:TCM_SETEXTENDEDSTYLE
           #:TCM_GETEXTENDEDSTYLE
           #:TCM_SETUNICODEFORMAT
           #:TCM_GETUNICODEFORMAT

           #:TCN_FIRST
           #:TCN_KEYDOWN
           #:TCN_SELCHANGE
           #:TCN_SELCHANGING
           #:TCN_GETOBJECT
           #:TCN_FOCUSCHANGE

           ;;Structures
           #:TCITEM
           #:mask
           #:dwState
           #:dwStateMask
           #:pszText
           #:cchTextMax
           #:iImage
           #:LPCITEM))
