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

(in-package :Lunette.Graphics)

;;; Built-in GDI Objects
(define-constant WHITE_BRUSH          0)
(define-constant LTGRAY_BRUSH         1)
(define-constant GRAY_BRUSH           2)
(define-constant DKGRAY_BRUSH         3)
(define-constant BLACK_BRUSH          4)
(define-constant NULL_BRUSH           5)
(define-constant HOLLOW_BRUSH         NULL_BRUSH)
(define-constant WHITE_PEN            6)
(define-constant BLACK_PEN            7)
(define-constant NULL_PEN             8)
(define-constant OEM_FIXED_FONT      10)
(define-constant ANSI_FIXED_FONT     11)
(define-constant ANSI_VAR_FONT       12)
(define-constant SYSTEM_FONT         13)
(define-constant DEVICE_DEFAULT_FONT 14)
(define-constant DEFAULT_PALETTE     15)
(define-constant SYSTEM_FIXED_FONT   16)
(define-constant DEFAULT_GUI_FONT    17)
(define-constant DC_BRUSH            18)
(define-constant DC_PEN              19)
(define-constant STOCK_LAST          19)

;;; Brush hash styles
(define-constant HS_HORIZONTAL  0) ; -----
(define-constant HS_VERTICAL    1) ; |||||
(define-constant HS_FDIAGONAL   2) ; \\\\\
(define-constant HS_BDIAGONAL   3) ; /////
(define-constant HS_CROSS       4) ; +++++
(define-constant HS_DIAGCROSS   5) ; xxxxx
(define-constant HS_API_MAX    12)

;;; Pen styles
(define-constant PS_SOLID                0)
(define-constant PS_DASH                 1) ; -------
(define-constant PS_DOT                  2) ; .......
(define-constant PS_DASHDOT              3) ; _._._._
(define-constant PS_DASHDOTDOT           4) ; _.._.._
(define-constant PS_NULL                 5)
(define-constant PS_INSIDEFRAME          6)
(define-constant PS_USERSTYLE            7)
(define-constant PS_ALTERNATE            8)
(define-constant PS_STYLE_MASK  #x0000000F)

;;; Binary raster operations
(define-constant R2_BLACK        1)  ; 0
(define-constant R2_NOTMERGEPEN  2)  ; DPon
(define-constant R2_MASKNOTPEN   3)  ; DPna
(define-constant R2_NOTCOPYPEN   4)  ; PN
(define-constant R2_MASKPENNOT   5)  ; PDna
(define-constant R2_NOT          6)  ; Dn
(define-constant R2_XORPEN       7)  ; DPx
(define-constant R2_NOTMASKPEN   8)  ; DPan
(define-constant R2_MASKPEN      9)  ; DPa
(define-constant R2_NOTXORPEN   10)  ; DPxn
(define-constant R2_NOP         11)  ; D
(define-constant R2_MERGENOTPEN 12)  ; DPno
(define-constant R2_COPYPEN     13)  ; P
(define-constant R2_MERGEPENNOT 14)  ; PDno
(define-constant R2_MERGEPEN    15)  ; DPo
(define-constant R2_WHITE       16)  ; 1
(define-constant R2_LAST        16)

;;; Background modes
(define-constant TRANSPARENT 1)
(define-constant OPAQUE      2)
(define-constant BKMODE_LAST 2)

;;; Poly fill modes
(define-constant ALTERNATE     1)
(define-constant WINDING       2)
(define-constant POLYFILL_LAST 2)

;;; PolyDraw constants
(define-constant PT_CLOSEFIGURE #x01)
(define-constant PT_LINETO      #x02)
(define-constant PT_BEZIERTO    #x04)
(define-constant PT_MOVETO      #x06)

;;; Mapping Modes
(define-constant MM_TEXT        1)
(define-constant MM_LOMETRIC    2)
(define-constant MM_HIMETRIC    3)
(define-constant MM_LOENGLISH   4)
(define-constant MM_HIENGLISH   5)
(define-constant MM_TWIPS       6)
(define-constant MM_ISOTROPIC   7)
(define-constant MM_ANISOTROPIC 8)

(define-constant MM_MIN            MM_TEXT)
(define-constant MM_MAX            MM_ANISOTROPIC)
(define-constant MM_MAX_FIXEDSCALE MM_TWIPS)

;;; Color Types
(define-constant CTLCOLOR_MSGBOX    0)
(define-constant CTLCOLOR_EDIT      1)
(define-constant CTLCOLOR_LISTBOX   2)
(define-constant CTLCOLOR_BTN       3)
(define-constant CTLCOLOR_DLG       4)
(define-constant CTLCOLOR_SCROLLBAR 5)
(define-constant CTLCOLOR_STATIC    6)
(define-constant CTLCOLOR_MAX       7)

(define-constant COLOR_SCROLLBAR           0)
(define-constant COLOR_BACKGROUND          1)
(define-constant COLOR_ACTIVECAPTION       2)
(define-constant COLOR_INACTIVECAPTION     3)
(define-constant COLOR_MENU                4)
(define-constant COLOR_WINDOW              5)
(define-constant COLOR_WINDOWFRAME         6)
(define-constant COLOR_MENUTEXT            7)
(define-constant COLOR_WINDOWTEXT          8)
(define-constant COLOR_CAPTIONTEXT         9)
(define-constant COLOR_ACTIVEBORDER        10)
(define-constant COLOR_INACTIVEBORDER      11)
(define-constant COLOR_APPWORKSPACE        12)
(define-constant COLOR_HIGHLIGHT           13)
(define-constant COLOR_HIGHLIGHTTEXT       14)
(define-constant COLOR_BTNFACE             15)
(define-constant COLOR_BTNSHADOW           16)
(define-constant COLOR_GRAYTEXT            17)
(define-constant COLOR_BTNTEXT             18)
(define-constant COLOR_INACTIVECAPTIONTEXT 19)
(define-constant COLOR_BTNHIGHLIGHT        20)

(define-constant COLOR_3DDKSHADOW          21)
(define-constant COLOR_3DLIGHT             22)
(define-constant COLOR_INFOTEXT            23)
(define-constant COLOR_INFOBK              24)

(define-constant COLOR_HOTLIGHT                26)
(define-constant COLOR_GRADIENTACTIVECAPTION   27)
(define-constant COLOR_GRADIENTINACTIVECAPTION 28)
(define-constant COLOR_MENUHILIGHT             29)
(define-constant COLOR_MENUBAR                 30)

(define-constant COLOR_DESKTOP           COLOR_BACKGROUND)
(define-constant COLOR_3DFACE            COLOR_BTNFACE)
(define-constant COLOR_3DSHADOW          COLOR_BTNSHADOW)
(define-constant COLOR_3DHIGHLIGHT       COLOR_BTNHIGHLIGHT)
(define-constant COLOR_3DHILIGHT         COLOR_BTNHIGHLIGHT)
(define-constant COLOR_BTNHILIGHT        COLOR_BTNHIGHLIGHT)

;;; Owner draw state
(define-constant ODS_SELECTED     #x0001)
(define-constant ODS_GRAYED       #x0002)
(define-constant ODS_DISABLED     #x0004)
(define-constant ODS_CHECKED      #x0008)
(define-constant ODS_FOCUS        #x0010)
(define-constant ODS_DEFAULT      #x0020)
(define-constant ODS_COMBOBOXEDIT #x1000)
(define-constant ODS_HOTLIGHT     #x0040)
(define-constant ODS_INACTIVE     #x0080)
(define-constant ODS_NOACCEL      #x0100)
(define-constant ODS_NOFOCUSRECT  #x0200)
