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
