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

(export '(TOOLBARCLASSNAME

          TBSTYLE_TOOLTIPS
          TBSTYLE_WRAPABLE
          TBSTYLE_ALTDRAG
          TBSTYLE_FLAT
          TBSTYLE_LIST
          TBSTYLE_CUSTOMERASE
          TBSTYLE_REGISTERDROP
          TBSTYLE_TRANSPARENT

          TBSTATE_CHECKED
          TBSTATE_PRESSED
          TBSTATE_ENABLED
          TBSTATE_HIDDEN
          TBSTATE_INDETERMINATE
          TBSTATE_WRAP
          TBSTATE_ELLIPSES
          TBSTATE_MARKED

          BTNS_BUTTON
          BTNS_SEP
          BTNS_CHECK
          BTNS_GROUP
          BTNS_CHECKGROUP
          BTNS_DROPDOWN
          BTNS_AUTOSIZE
          BTNS_NOPREFIX
          BTNS_SHOWTEXT
          BTNS_WHOLEDROPDOWN

          ;;Messages
          TB_ENABLEBUTTON
          TB_CHECKBUTTON
          TB_PRESSBUTTON
          TB_HIDEBUTTON
          TB_INDETERMINATE
          TB_MARKBUTTON
          TB_ISBUTTONENABLED
          TB_ISBUTTONCHECKED
          TB_ISBUTTONPRESSED
          TB_ISBUTTONHIDDEN
          TB_ISBUTTONINDETERMINATE
          TB_ISBUTTONHIGHLIGHTED
          TB_SETSTATE
          TB_GETSTATE
          TB_ADDBITMAP
          TB_ADDBUTTONSA
          TB_INSERTBUTTONA
          TB_ADDBUTTONS
          TB_INSERTBUTTON
          TB_DELETEBUTTON
          TB_GETBUTTON
          TB_BUTTONCOUNT
          TB_COMMANDTOINDEX
          TB_SAVERESTOREA
          TB_SAVERESTOREW
          TB_CUSTOMIZE
          TB_ADDSTRINGA
          TB_ADDSTRINGW
          TB_GETITEMRECT
          TB_BUTTONSTRUCTSIZE
          TB_SETBUTTONSIZE
          TB_SETBITMAPSIZE
          TB_AUTOSIZE
          TB_GETTOOLTIPS
          TB_SETTOOLTIPS
          TB_SETPARENT
          TB_SETROWS
          TB_GETROWS
          TB_SETCMDID
          TB_CHANGEBITMAP
          TB_GETBITMAP
          TB_GETBUTTONTEXTA
          TB_GETBUTTONTEXTW
          TB_REPLACEBITMAP
          TB_SETINDENT
          TB_SETIMAGELIST
          TB_GETIMAGELIST
          TB_LOADIMAGES
          TB_GETRECT
          TB_SETHOTIMAGELIST
          TB_GETHOTIMAGELIST
          TB_SETDISABLEDIMAGELIST
          TB_GETDISABLEDIMAGELIST
          TB_SETSTYLE
          TB_GETSTYLE
          TB_GETBUTTONSIZE
          TB_SETBUTTONWIDTH
          TB_SETMAXTEXTROWS
          TB_GETTEXTROWS
          TB_GETBUTTONTEXT
          TB_SAVERESTORE
          TB_ADDSTRING
          TB_GETOBJECT
          TB_GETHOTITEM
          TB_SETHOTITEM
          TB_SETANCHORHIGHLIGHT
          TB_GETANCHORHIGHLIGHT
          TB_MAPACCELERATORA
          TB_GETINSERTMARK
          TB_SETINSERTMARK
          TB_INSERTMARKHITTEST
          TB_MOVEBUTTON
          TB_GETMAXSIZE
          TB_SETEXTENDEDSTYLE
          TB_GETEXTENDEDSTYLE
          TB_GETPADDING
          TB_SETPADDING
          TB_SETINSERTMARKCOLOR
          TB_GETINSERTMARKCOLOR
          TB_MAPACCELERATORW
          TB_MAPACCELERATOR
          TB_GETBUTTONINFOW
          TB_SETBUTTONINFOW
          TB_GETBUTTONINFOA
          TB_SETBUTTONINFOA
          TB_GETBUTTONINFO
          TB_SETBUTTONINFO
          TB_INSERTBUTTONW
          TB_ADDBUTTONSW
          TB_HITTEST
          TB_INSERTBUTTON
          TB_ADDBUTTONS
          TB_SETDRAWTEXTFLAGS
          TB_GETSTRINGW
          TB_GETSTRINGA
          TB_GETSTRING
          TB_SETHOTITEM2
          TB_SETLISTGAP
          TB_GETIMAGELISTCOUNT
          TB_GETIDEALSIZE
          TB_GETMETRICS
          TB_SETMETRICS
          TB_GETITEMDROPDOWNRECT
          TB_SETPRESSEDIMAGELIST
          TB_GETPRESSEDIMAGELIST

          ;;Structures
          TBBUTTON
          iBitmap
          idCommand
          fsState
          fsStyle
          bReserved
          dwData
          iString
          LPTBBUTTON
          LPCTBBUTTON

          TBADDBITMAP
          hInstTB
          nID
          LPTBADDBITMAP))
