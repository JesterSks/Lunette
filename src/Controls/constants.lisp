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

(in-package :Lunette.Controls)

;;; Button Control Styles
(define-constant BS_PUSHBUTTON       #x00000000)
(define-constant BS_DEFPUSHBUTTON    #x00000001)
(define-constant BS_CHECKBOX         #x00000002)
(define-constant BS_AUTOCHECKBOX     #x00000003)
(define-constant BS_RADIOBUTTON      #x00000004)
(define-constant BS_3STATE           #x00000005)
(define-constant BS_AUTO3STATE       #x00000006)
(define-constant BS_GROUPBOX         #x00000007)
(define-constant BS_USERBUTTON       #x00000008)
(define-constant BS_AUTORADIOBUTTON  #x00000009)
(define-constant BS_PUSHBOX          #x0000000A)
(define-constant BS_OWNERDRAW        #x0000000B)
(define-constant BS_TYPEMASK         #x0000000F)
(define-constant BS_LEFTTEXT         #x00000020)
(define-constant BS_TEXT             #x00000000)
(define-constant BS_ICON             #x00000040)
(define-constant BS_BITMAP           #x00000080)
(define-constant BS_LEFT             #x00000100)
(define-constant BS_RIGHT            #x00000200)
(define-constant BS_CENTER           #x00000300)
(define-constant BS_TOP              #x00000400)
(define-constant BS_BOTTOM           #x00000800)
(define-constant BS_VCENTER          #x00000C00)
(define-constant BS_PUSHLIKE         #x00001000)
(define-constant BS_MULTILINE        #x00002000)
(define-constant BS_NOTIFY           #x00004000)
(define-constant BS_FLAT             #x00008000)
(define-constant BS_RIGHTBUTTON      BS_LEFTTEXT)

;;; Scroll Bar Commands
(define-constant SB_LINEUP        0)
(define-constant SB_LINELEFT      0)
(define-constant SB_LINEDOWN      1)
(define-constant SB_LINERIGHT     1)
(define-constant SB_PAGEUP        2)
(define-constant SB_PAGELEFT      2)
(define-constant SB_PAGEDOWN      3)
(define-constant SB_PAGERIGHT     3)
(define-constant SB_THUMBPOSITION 4)
(define-constant SB_THUMBTRACK    5)
(define-constant SB_TOP           6)
(define-constant SB_LEFT          6)
(define-constant SB_BOTTOM        7)
(define-constant SB_RIGHT         7)
(define-constant SB_ENDSCROLL     8)

;;; Scroll Bar Styles
(define-constant SBS_HORZ                    #x0000)
(define-constant SBS_VERT                    #x0001)
(define-constant SBS_TOPALIGN                #x0002)
(define-constant SBS_LEFTALIGN               #x0002)
(define-constant SBS_BOTTOMALIGN             #x0004)
(define-constant SBS_RIGHTALIGN              #x0004)
(define-constant SBS_SIZEBOXTOPLEFTALIGN     #x0002)
(define-constant SBS_SIZEBOXBOTTOMRIGHTALIGN #x0004)
(define-constant SBS_SIZEBOX                 #x0008)
(define-constant SBS_SIZEGRIP                #x0010)

;;; Static Control Constants
(define-constant SS_LEFT             #x00000000)
(define-constant SS_CENTER           #x00000001)
(define-constant SS_RIGHT            #x00000002)
(define-constant SS_ICON             #x00000003)
(define-constant SS_BLACKRECT        #x00000004)
(define-constant SS_GRAYRECT         #x00000005)
(define-constant SS_WHITERECT        #x00000006)
(define-constant SS_BLACKFRAME       #x00000007)
(define-constant SS_GRAYFRAME        #x00000008)
(define-constant SS_WHITEFRAME       #x00000009)
(define-constant SS_USERITEM         #x0000000A)
(define-constant SS_SIMPLE           #x0000000B)
(define-constant SS_LEFTNOWORDWRAP   #x0000000C)
(define-constant SS_OWNERDRAW        #x0000000D)
(define-constant SS_BITMAP           #x0000000E)
(define-constant SS_ENHMETAFILE      #x0000000F)
(define-constant SS_ETCHEDHORZ       #x00000010)
(define-constant SS_ETCHEDVERT       #x00000011)
(define-constant SS_ETCHEDFRAME      #x00000012)
(define-constant SS_TYPEMASK         #x0000001F)
(define-constant SS_REALSIZECONTROL  #x00000040)
(define-constant SS_NOPREFIX         #x00000080)
(define-constant SS_NOTIFY           #x00000100)
(define-constant SS_CENTERIMAGE      #x00000200)
(define-constant SS_RIGHTJUST        #x00000400)
(define-constant SS_REALSIZEIMAGE    #x00000800)
(define-constant SS_SUNKEN           #x00001000)
(define-constant SS_EDITCONTROL      #x00002000)
(define-constant SS_ENDELLIPSIS      #x00004000)
(define-constant SS_PATHELLIPSIS     #x00008000)
(define-constant SS_WORDELLIPSIS     #x0000C000)
(define-constant SS_ELLIPSISMASK     #x0000C000)

;;; Scroll Bar Constants
(define-constant SB_HORZ 0)
(define-constant SB_VERT 1)
(define-constant SB_CTL  2)
(define-constant SB_BOTH 3)

;;; Edit Control Styles
(define-constant ES_LEFT        #x0000)
(define-constant ES_CENTER      #x0001)
(define-constant ES_RIGHT       #x0002)
(define-constant ES_MULTILINE   #x0004)
(define-constant ES_UPPERCASE   #x0008)
(define-constant ES_LOWERCASE   #x0010)
(define-constant ES_PASSWORD    #x0020)
(define-constant ES_AUTOVSCROLL #x0040)
(define-constant ES_AUTOHSCROLL #x0080)
(define-constant ES_NOHIDESEL   #x0100)
(define-constant ES_OEMCONVERT  #x0400)
(define-constant ES_READONLY    #x0800)
(define-constant ES_WANTRETURN  #x1000)
(define-constant ES_NUMBER      #x2000)

;;; Edit Control Notification Codes
(define-constant EN_SETFOCUS     #x0100)
(define-constant EN_KILLFOCUS    #x0200)
(define-constant EN_CHANGE       #x0300)
(define-constant EN_UPDATE       #x0400)
(define-constant EN_ERRSPACE     #x0500)
(define-constant EN_MAXTEXT      #x0501)
(define-constant EN_HSCROLL      #x0601)
(define-constant EN_VSCROLL      #x0602)
(define-constant EN_ALIGN_LTR_EC #x0700)
(define-constant EN_ALIGN_RTL_EC #x0701)
