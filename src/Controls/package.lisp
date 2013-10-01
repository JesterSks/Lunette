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

(defpackage :Lunette.Controls
  (:use #:common-lisp
        #:Lunette.System)
  (:import-from :cffi
                #:defcfun)
  (:import-from :alexandria
                #:define-constant)
  (:import-from :Lunette.Graphics
                #:RECT)
  (:import-from :Lunette.Windows
                #:WS_VSCROLL
                #:WS_BORDER)
  (:export #:BS_PUSHBUTTON
           #:BS_DEFPUSHBUTTON
           #:BS_CHECKBOX
           #:BS_AUTOCHECKBOX
           #:BS_RADIOBUTTON
           #:BS_3STATE
           #:BS_AUTO3STATE
           #:BS_GROUPBOX
           #:BS_USERBUTTON
           #:BS_AUTORADIOBUTTON
           #:BS_PUSHBOX
           #:BS_OWNERDRAW
           #:BS_TYPEMASK
           #:BS_LEFTTEXT
           #:BS_TEXT
           #:BS_ICON
           #:BS_BITMAP
           #:BS_LEFT
           #:BS_RIGHT
           #:BS_CENTER
           #:BS_TOP
           #:BS_BOTTOM
           #:BS_VCENTER
           #:BS_PUSHLIKE
           #:BS_MULTILINE
           #:BS_NOTIFY
           #:BS_FLAT
           #:BS_RIGHTBUTTON

           #:SB_LINEUP
           #:SB_LINELEFT
           #:SB_LINEDOWN
           #:SB_LINERIGHT
           #:SB_PAGEUP
           #:SB_PAGELEFT
           #:SB_PAGEDOWN
           #:SB_PAGERIGHT
           #:SB_THUMBPOSITION
           #:SB_THUMBTRACK
           #:SB_TOP
           #:SB_LEFT
           #:SB_BOTTOM
           #:SB_RIGHT
           #:SB_ENDSCROLL

           #:SBS_HORZ
           #:SBS_VERT
           #:SBS_TOPALIGN
           #:SBS_LEFTALIGN
           #:SBS_BOTTOMALIGN
           #:SBS_RIGHTALIGN
           #:SBS_SIZEBOXTOPLEFTALIGN
           #:SBS_SIZEBOXBOTTOMRIGHTALIGN
           #:SBS_SIZEBOX
           #:SBS_SIZEGRIP

           #:SS_LEFT
           #:SS_CENTER
           #:SS_RIGHT
           #:SS_ICON
           #:SS_BLACKRECT
           #:SS_GRAYRECT
           #:SS_WHITERECT
           #:SS_BLACKFRAME
           #:SS_GRAYFRAME
           #:SS_WHITEFRAME
           #:SS_USERITEM
           #:SS_SIMPLE
           #:SS_LEFTNOWORDWRAP
           #:SS_OWNERDRAW
           #:SS_BITMAP
           #:SS_ENHMETAFILE
           #:SS_ETCHEDHORZ
           #:SS_ETCHEDVERT
           #:SS_ETCHEDFRAME
           #:SS_TYPEMASK
           #:SS_REALSIZECONTROL
           #:SS_NOPREFIX
           #:SS_NOTIFY
           #:SS_CENTERIMAGE
           #:SS_RIGHTJUST
           #:SS_REALSIZEIMAGE
           #:SS_SUNKEN
           #:SS_EDITCONTROL
           #:SS_ENDELLIPSIS
           #:SS_PATHELLIPSIS
           #:SS_WORDELLIPSIS
           #:SS_ELLIPSISMASK

           #:SB_HORZ
           #:SB_VERT
           #:SB_CTL
           #:SB_BOTH

           #:ES_LEFT
           #:ES_CENTER
           #:ES_RIGHT
           #:ES_MULTILINE
           #:ES_UPPERCASE
           #:ES_LOWERCASE
           #:ES_PASSWORD
           #:ES_AUTOVSCROLL
           #:ES_AUTOHSCROLL
           #:ES_NOHIDESEL
           #:ES_OEMCONVERT
           #:ES_READONLY
           #:ES_WANTRETURN
           #:ES_NUMBER

           #:EN_SETFOCUS
           #:EN_KILLFOCUS
           #:EN_CHANGE
           #:EN_UPDATE
           #:EN_ERRSPACE
           #:EN_MAXTEXT
           #:EN_HSCROLL
           #:EN_VSCROLL
           #:EN_ALIGN_LTR_EC
           #:EN_ALIGN_RTL_EC

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
           #:LBN_KILLFOCUS

           #:DDL_READWRITE
           #:DDL_READONLY
           #:DDL_HIDDEN
           #:DDL_SYSTEM
           #:DDL_DIRECTORY
           #:DDL_ARCHIVE

           #:DDL_POSTMSGS
           #:DDL_DRIVES
           #:DDL_EXCLUSIVE


           #:ScrollWindowEx
           #:SetScrollRange
           #:SetScrollPos))
