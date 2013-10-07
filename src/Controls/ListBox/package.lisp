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

(defpackage :Lunette.Controls.ListBox
  (:use :common-lisp
        :alexandria
        :Lunette.Controls)
  (:import-from :Lunette.Windows
                #:WS_VSCROLL
                #:WS_BORDER)
  (:export #:LB_OKAY
           #:LB_ERR
           #:LB_ERRSPACE

           #:LBS_NOTIFY
           #:LBS_SORT
           #:LBS_NOREDRAW
           #:LBS_MULTIPLESEL
           #:LBS_OWNERDRAWFIXED
           #:LBS_OWNERDRAWVARIABLE
           #:LBS_HASSTRINGS
           #:LBS_USETABSTOPS
           #:LBS_NOINTEGRALHEIGHT
           #:LBS_MULTICOLUMN
           #:LBS_WANTKEYBOARDINPUT
           #:LBS_EXTENDEDSEL
           #:LBS_DISABLENOSCROLL
           #:LBS_NODATA
           #:LBS_NOSEL
           #:LBS_COMBOBOX
           #:LBS_STANDARD

           #:DDL_READWRITE
           #:DDL_READONLY
           #:DDL_HIDDEN
           #:DDL_SYSTEM
           #:DDL_DIRECTORY
           #:DDL_ARCHIVE

           #:DDL_POSTMSGS
           #:DDL_DRIVES
           #:DDL_EXCLUSIVE

           #:LB_ADDSTRING
           #:LB_INSERTSTRING
           #:LB_DELETESTRING
           #:LB_SELITEMRANGEEX
           #:LB_RESETCONTENT
           #:LB_SETSEL
           #:LB_SETCURSEL
           #:LB_GETSEL
           #:LB_GETCURSEL
           #:LB_GETTEXT
           #:LB_GETTEXTLEN
           #:LB_GETCOUNT
           #:LB_SELECTSTRING
           #:LB_DIR
           #:LB_GETTOPINDEX
           #:LB_FINDSTRING
           #:LB_GETSELCOUNT
           #:LB_GETSELITEMS
           #:LB_SETTABSTOPS
           #:LB_GETHORIZONTALEXTENT
           #:LB_SETHORIZONTALEXTENT
           #:LB_SETCOLUMNWIDTH
           #:LB_ADDFILE
           #:LB_SETTOPINDEX
           #:LB_GETITEMRECT
           #:LB_GETITEMDATA
           #:LB_SETITEMDATA
           #:LB_SELITEMRANGE
           #:LB_SETANCHORINDEX
           #:LB_GETANCHORINDEX
           #:LB_SETCARETINDEX
           #:LB_GETCARETINDEX
           #:LB_SETITEMHEIGHT
           #:LB_GETITEMHEIGHT
           #:LB_FINDSTRINGEXACT
           #:LB_SETLOCALE
           #:LB_GETLOCALE
           #:LB_SETCOUNT
           #:LB_INITSTORAGE
           #:LB_ITEMFROMPOINT
           #:LB_MULTIPLEADDSTRING
           #:LB_GETLISTBOXINFO
           #:LB_MSGMAX

           #:LBN_ERRSPACE
           #:LBN_SELCHANGE
           #:LBN_DBLCLK
           #:LBN_SELCANCEL
           #:LBN_SETFOCUS
           #:LBN_KILLFOCUS))
