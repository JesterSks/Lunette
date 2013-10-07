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

(defpackage :Lunette.Controls.Header
  (:use :common-lisp
        :Lunette.System)
  (:import-from :cffi
                #:defcstruct
                #:defctype)
  (:import-from :alexandria
                #:define-constant)
  (:import-from :Lunette.Graphics
                #:LPRECT)
  (:import-from :Lunette.Windows
                #:LPWINDOWPOS)
  (:import-from :Lunette.Controls
                #:CCM_SETUNICODEFORMAT
                #:CCM_GETUNICODEFORMAT)
  (:export #:WC_HEADER

           #:HDI_WIDTH
           #:HDI_HEIGHT
           #:HDI_TEXT
           #:HDI_FORMAT
           #:HDI_LPARAM
           #:HDI_BITMAP
           #:HDI_IMAGE
           #:HDI_DI_SETITEM
           #:HDI_ORDER
           #:HDI_FILTER
           #:HDI_STATE

           #:HDF_LEFT
           #:HDF_RIGHT
           #:HDF_CENTER
           #:HDF_JUSTIFYMASK
           #:HDF_RTLREADING
           #:HDF_BITMAP
           #:HDF_STRING
           #:HDF_OWNERDRAW
           #:HDF_IMAGE
           #:HDF_BITMAP_ON_RIGHT
           #:HDF_SORTUP
           #:HDF_SORTDOWN
           #:HDF_CHECKBOX
           #:HDF_CHECKED
           #:HDF_FIXEDWIDTH
           #:HDF_SPLITBUTTON

           #:HDS_HORZ
           #:HDS_BUTTONS
           #:HDS_HOTTRACK
           #:HDS_HIDDEN
           #:HDS_DRAGDROP
           #:HDS_FULLDRAG
           #:HDS_FILTERBAR
           #:HDS_FLAT
           #:HDS_CHECKBOXES
           #:HDS_NOSIZING
           #:HDS_OVERFLOW

           ;;Messages
           #:HDM_FIRST
           #:HDM_GETITEMCOUNT
           #:HDM_INSERTITEMA
           #:HDM_INSERTITEMW
           #:HDM_INSERTITEM
           #:HDM_DELETEITEM
           #:HDM_GETITEMA
           #:HDM_GETITEMW
           #:HDM_GETITEM
           #:HDM_SETITEMA
           #:HDM_SETITEMW
           #:HDM_SETITEM
           #:HDM_LAYOUT
           #:HDM_HITTEST
           #:HDM_GETITEMRECT
           #:HDM_SETIMAGELIST
           #:HDM_GETIMAGELIST
           #:HDM_ORDERTOINDEX
           #:HDM_CREATEDRAGIMAGE
           #:HDM_GETORDERARRAY
           #:HDM_SETORDERARRAY
           #:HDM_SETHOTDIVIDER
           #:HDM_SETBITMAPMARGIN
           #:HDM_GETBITMAPMARGIN
           #:HDM_SETUNICODEFORMAT
           #:HDM_GETUNICODEFORMAT
           #:HDM_SETFILTERCHANGETIMEOUT
           #:HDM_EDITFILTER
           #:HDM_CLEARFILTER
           #:HDM_GETITEMDROPDOWNRECT
           #:HDM_GETOVERFLOWRECT
           #:HDM_GETFOCUSEDITEM
           #:HDM_SETFOCUSEDITEM

           ;;Notifications
           #:HDN_ITEMCHANGINGA
           #:HDN_ITEMCHANGINGW
           #:HDN_ITEMCHANGEDA
           #:HDN_ITEMCHANGEDW
           #:HDN_ITEMCLICKA
           #:HDN_ITEMCLICKW
           #:HDN_ITEMDBLCLICKA
           #:HDN_ITEMDBLCLICKW
           #:HDN_DIVIDERDBLCLICKA
           #:HDN_DIVIDERDBLCLICKW
           #:HDN_BEGINTRACKA
           #:HDN_BEGINTRACKW
           #:HDN_ENDTRACKA
           #:HDN_ENDTRACKW
           #:HDN_TRACKA
           #:HDN_TRACKW
           #:HDN_GETDISPINFOA
           #:HDN_GETDISPINFOW
           #:HDN_BEGINDRAG
           #:HDN_ENDDRAG
           #:HDN_FILTERCHANGE
           #:HDN_FILTERBTNCLICK
           #:HDN_BEGINFILTEREDIT
           #:HDN_ENDFILTEREDIT
           #:HDN_ITEMSTATEICONCLICK
           #:HDN_ITEMKEYDOWN
           #:HDN_DROPDOWN
           #:HDN_OVERFLOWCLICK
           #:HDN_ITEMCHANGING
           #:HDN_ITEMCHANGED
           #:HDN_ITEMCLICK
           #:HDN_ITEMDBLCLICK
           #:HDN_DIVIDERDBLCLICK
           #:HDN_BEGINTRACK
           #:HDN_ENDTRACK
           #:HDN_TRACK
           #:HDN_GETDISPINFO

           ;;Structures

           #:HDITEM
           #:cxy
           #:fmt
           #:iOrder
           #:type
           #:pvFilter
           #:LPHDITEM

           #:HDLAYOUT
           #:prc
           #:pwpos
           #:LPHDLAYOUT

           #:NMHEADER
           #:iItem
           #:iButton
           #:pitem))
