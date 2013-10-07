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

(defpackage :Lunette.Controls.TreeView
  (:use :common-lisp
        :Lunette.System)
  (:import-from :cffi
                #:make-pointer
                #:defcstruct
                #:defctype)
  (:import-from :alexandria
                #:define-constant)
  (:import-from :Lunette.Controls
                #:CCM_SETUNICODEFORMAT
                #:CCM_GETUNICODEFORMAT)
  (:export #:WC_TREEVIEW

           #:TVS_HASBUTTONS
           #:TVS_HASLINES
           #:TVS_LINESATROOT
           #:TVS_EDITLABELS
           #:TVS_DISABLEDRAGDROP
           #:TVS_SHOWSELALWAYS
           #:TVS_RTLREADING
           #:TVS_NOTOOLTIPS
           #:TVS_CHECKBOXES
           #:TVS_TRACKSELECT
           #:TVS_SINGLEEXPAND
           #:TVS_INFOTIP
           #:TVS_FULLROWSELECT
           #:TVS_NOSCROLL
           #:TVS_NONEVENHEIGHT
           #:TVS_NOHSCROLL
           #:TVS_EX_MULTISELECT
           #:TVS_EX_DOUBLEBUFFER
           #:TVS_EX_NOINDENTSTATE
           #:TVS_EX_RICHTOOLTIP
           #:TVS_EX_AUTOHSCROLL
           #:TVS_EX_FADEINOUTEXPANDOS
           #:TVS_EX_PARTIALCHECKBOXES
           #:TVS_EX_EXCLUSIONCHECKBOXES
           #:TVS_EX_DIMMEDCHECKBOXES
           #:TVS_EX_DRAWIMAGEASYNC

           #:TVI_ROOT
           #:TVI_FIRST
           #:TVI_LAST
           #:TVI_SORT

           #:TVIF_TEXT
           #:TVIF_IMAGE
           #:TVIF_PARAM
           #:TVIF_STATE
           #:TVIF_HANDLE
           #:TVIF_SELECTEDIMAGE
           #:TVIF_CHILDREN
           #:TVIF_INTEGRAL
           #:TVIF_STATEEX
           #:TVIF_EXPANDEDIMAGE

           #:TVIS_SELECTED
           #:TVIS_CUT
           #:TVIS_DROPHILITED
           #:TVIS_BOLD
           #:TVIS_EXPANDED
           #:TVIS_EXPANDEDONCE
           #:TVIS_EXPANDPARTIAL
           #:TVIS_OVERLAYMASK
           #:TVIS_STATEIMAGEMASK
           #:TVIS_USERMASK

           #:TV_FIRST
           #:TVM_INSERTITEMA
           #:TVM_INSERTITEMW
           #:TVM_INSERTITEM
           #:TVM_DELETEITEM
           #:TVM_EXPAND
           #:TVM_GETITEMRECT
           #:TVM_GETCOUNT
           #:TVM_GETINDENT
           #:TVM_SETINDENT
           #:TVM_GETIMAGELIST
           #:TVM_SETIMAGELIST
           #:TVM_GETNEXTITEM
           #:TVM_SELECTITEM
           #:TVM_GETITEMA
           #:TVM_GETITEMW
           #:TVM_GETITEM
           #:TVM_SETITEMA
           #:TVM_SETITEMW
           #:TVM_SETITEM
           #:TVM_EDITLABELA
           #:TVM_EDITLABELW
           #:TVM_EDITLABEL
           #:TVM_GETEDITCONTROL
           #:TVM_GETVISIBLECOUNT
           #:TVM_HITTEST
           #:TVM_CREATEDRAGIMAGE
           #:TVM_SORTCHILDREN
           #:TVM_ENSUREVISIBLE
           #:TVM_SORTCHILDRENCB
           #:TVM_ENDEDITLABELNOW
           #:TVM_GETISEARCHSTRINGA
           #:TVM_GETISEARCHSTRINGW
           #:TVM_GETISEARCHSTRING
           #:TVM_SETTOOLTIPS
           #:TVM_GETTOOLTIPS
           #:TVM_SETINSERTMARK
           #:TVM_SETUNICODEFORMAT
           #:TVM_GETUNICODEFORMAT
           #:TVM_SETITEMHEIGHT
           #:TVM_GETITEMHEIGHT
           #:TVM_SETBKCOLOR
           #:TVM_SETTEXTCOLOR
           #:TVM_GETBKCOLOR
           #:TVM_GETTEXTCOLOR
           #:TVM_SETSCROLLTIME
           #:TVM_GETSCROLLTIME
           #:TVM_SETINSERTMARKCOLOR
           #:TVM_GETINSERTMARKCOLOR
           #:TVM_GETITEMSTATE
           #:TVM_SETLINECOLOR
           #:TVM_GETLINECOLOR
           #:TVM_MAPACCIDTOHTREEITEM
           #:TVM_MAPHTREEITEMTOACCID
           #:TVM_SETEXTENDEDSTYLE
           #:TVM_GETEXTENDEDSTYLE
           #:TVM_SETAUTOSCROLLINFO
           #:TVM_GETSELECTEDCOUNT
           #:TVM_SHOWINFOTIP
           #:TVM_GETITEMPARTRECT

           #:TVN_FIRST

           #:TVN_SELCHANGINGA
           #:TVN_SELCHANGINGW
           #:TVN_SELCHANGING
           #:TVN_SELCHANGEDA
           #:TVN_SELCHANGEDW
           #:TVN_SELCHANGED
           #:TVN_GETDISPINFOA
           #:TVN_GETDISPINFOW
           #:TVN_GETDISPINFO
           #:TVN_SETDISPINFOA
           #:TVN_SETDISPINFOW
           #:TVN_SETDISPINFO
           #:TVN_ITEMEXPANDINGA
           #:TVN_ITEMEXPANDINGW
           #:TVN_ITEMEXPANDING
           #:TVN_ITEMEXPANDEDA
           #:TVN_ITEMEXPANDEDW
           #:TVN_ITEMEXPANDED
           #:TVN_BEGINDRAGA
           #:TVN_BEGINDRAGW
           #:TVN_BEGINDRAG
           #:TVN_BEGINRDRAGA
           #:TVN_BEGINRDRAGW
           #:TVN_BEGINRDRAG
           #:TVN_DELETEITEMA
           #:TVN_DELETEITEMW
           #:TVN_DELETEITEM
           #:TVN_BEGINLABELEDITA
           #:TVN_BEGINLABELEDITW
           #:TVN_BEGINLABELEDIT
           #:TVN_ENDLABELEDITA
           #:TVN_ENDLABELEDITW
           #:TVN_ENDLABELEDIT
           #:TVN_KEYDOWN
           #:TVN_GETINFOTIPA
           #:TVN_GETINFOTIPW
           #:TVN_GETINFOTIP
           #:TVN_SINGLEEXPAND
           #:TVN_ITEMCHANGINGA
           #:TVN_ITEMCHANGINGW
           #:TVN_ITEMCHANGING
           #:TVN_ITEMCHANGEDA
           #:TVN_ITEMCHANGEDW
           #:TVN_ITEMCHANGED
           #:TVN_ASYNCDRAW

           #:TVE_COLLAPSE
           #:TVE_EXPAND
           #:TVE_TOGGLE
           #:TVE_EXPANDPARTIAL
           #:TVE_COLLAPSERESET

           #:TVITEMEX
           #:hItem
           #:state
           #:stateMask
           #:iSelectedImage
           #:cChildren
           #:iIntegral
           #:uStateEx
           #:hwnd
           #:iExpandedImage
           #:iReserved
;           #:LPTVITEMEX

           #:TVITEM
           #:LPTVITEM

           #:utvitem
           #:itemex
           #:item
           #:lputvitem

           #:TVINSERTSTRUCT
           #:hParent
           #:hInsertAfter
           #:LPTVINSERTSTRUCT

           #:NMTREEVIEW
           #:action
           #:itemOld
           #:itemNew
           #:ptDrag
           #:LPNMTREEVIEW))
