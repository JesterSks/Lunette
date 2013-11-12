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

(defpackage :Lunette.Graphics
  (:use #:common-lisp
        #:Lunette.System)
  (:import-from :cffi
                #:defcfun
                #:defcstruct
                #:defctype
                #:with-foreign-object
                #:with-foreign-string)
  (:import-from :alexandria
                #:define-constant)
  (:export #:WHITE_BRUSH
           #:LTGRAY_BRUSH
           #:GRAY_BRUSH
           #:DKGRAY_BRUSH
           #:BLACK_BRUSH
           #:NULL_BRUSH
           #:HOLLOW_BRUSH
           #:WHITE_PEN
           #:BLACK_PEN
           #:NULL_PEN
           #:OEM_FIXED_FONT
           #:ANSI_FIXED_FONT
           #:ANSI_VAR_FONT
           #:SYSTEM_FONT
           #:DEVICE_DEFAULT_FONT
           #:DEFAULT_PALETTE
           #:SYSTEM_FIXED_FONT
           #:DEFAULT_GUI_FONT
           #:DC_BRUSH
           #:DC_PEN
           #:STOCK_LAST

           #:HS_HORIZONTAL
           #:HS_VERTICAL
           #:HS_FDIAGONAL
           #:HS_BDIAGONAL
           #:HS_CROSS
           #:HS_DIAGCROSS
           #:HS_API_MAX

           #:PS_SOLID
           #:PS_DASH
           #:PS_DOT
           #:PS_DASHDOT
           #:PS_DASHDOTDOT
           #:PS_NULL
           #:PS_INSIDEFRAME
           #:PS_USERSTYLE
           #:PS_ALTERNATE
           #:PS_STYLE_MASK

           #:R2_BLACK
           #:R2_NOTMERGEPEN
           #:R2_MASKNOTPEN
           #:R2_NOTCOPYPEN
           #:R2_MASKPENNOT
           #:R2_NOT
           #:R2_XORPEN
           #:R2_NOTMASKPEN
           #:R2_MASKPEN
           #:R2_NOTXORPEN
           #:R2_NOP
           #:R2_MERGENOTPEN
           #:R2_COPYPEN
           #:R2_MERGEPENNOT
           #:R2_MERGEPEN
           #:R2_WHITE
           #:R2_LAST

           #:TRANSPARENT
           #:OPAQUE
           #:BKMODE_LAST

           #:ALTERNATE
           #:WINDING
           #:POLYFILL_LAST

           #:PT_CLOSEFIGURE
           #:PT_LINETO
           #:PT_BEZIERTO
           #:PT_MOVETO

           #:MM_TEXT
           #:MM_LOMETRIC
           #:MM_HIMETRIC
           #:MM_LOENGLISH
           #:MM_HIENGLISH
           #:MM_TWIPS
           #:MM_ISOTROPIC
           #:MM_ANISOTROPIC

           #:MM_MIN
           #:MM_MAX
           #:MM_MAX_FIXEDSCALE

           #:CTLCOLOR_MSGBOX
           #:CTLCOLOR_EDIT
           #:CTLCOLOR_LISTBOX
           #:CTLCOLOR_BTN
           #:CTLCOLOR_DLG
           #:CTLCOLOR_SCROLLBAR
           #:CTLCOLOR_STATIC
           #:CTLCOLOR_MAX

           #:COLOR_SCROLLBAR
           #:COLOR_BACKGROUND
           #:COLOR_ACTIVECAPTION
           #:COLOR_INACTIVECAPTION
           #:COLOR_MENU
           #:COLOR_WINDOW
           #:COLOR_WINDOWFRAME
           #:COLOR_MENUTEXT
           #:COLOR_WINDOWTEXT
           #:COLOR_CAPTIONTEXT
           #:COLOR_ACTIVEBORDER
           #:COLOR_INACTIVEBORDER
           #:COLOR_APPWORKSPACE
           #:COLOR_HIGHLIGHT
           #:COLOR_HIGHLIGHTTEXT
           #:COLOR_BTNFACE
           #:COLOR_BTNSHADOW
           #:COLOR_GRAYTEXT
           #:COLOR_BTNTEXT
           #:COLOR_INACTIVECAPTIONTEXT
           #:COLOR_BTNHIGHLIGHT

           #:COLOR_3DDKSHADOW
           #:COLOR_3DLIGHT
           #:COLOR_INFOTEXT
           #:COLOR_INFOBK

           #:COLOR_HOTLIGHT
           #:COLOR_GRADIENTACTIVECAPTION
           #:COLOR_GRADIENTINACTIVECAPTION
           #:COLOR_MENUHILIGHT
           #:COLOR_MENUBAR

           #:COLOR_DESKTOP
           #:COLOR_3DFACE
           #:COLOR_3DSHADOW
           #:COLOR_3DHIGHLIGHT
           #:COLOR_3DHILIGHT
           #:COLOR_BTNHILIGHT

           #:ODS_SELECTED
           #:ODS_GRAYED
           #:ODS_DISABLED
           #:ODS_CHECKED
           #:ODS_FOCUS
           #:ODS_DEFAULT
           #:ODS_COMBOBOXEDIT
           #:ODS_HOTLIGHT
           #:ODS_INACTIVE
           #:ODS_NOACCEL
           #:ODS_NOFOCUSRECT

           #:RECT
           #:left
           #:top
           #:right
           #:bottom
           #:PRECT
           #:LPRECT

           #:PAINTSTRUCT
           #:hdc
           #:fErase
           #:rcPaint
           #:fRestore
           #:fIncUpdate
           #:rgbReserved
           #:LPPAINTSTRUCT

           #:XFORM
           #:eM11
           #:eM12
           #:eM21
           #:eM22
           #:eDx
           #:eDy
           #:LPXFORM

           #:GetStockObject
           #:BeginPaint
           #:EndPaint
           #:with-ps
           #:CreateSolidBrush
           #:CreateHatchBrush
           #:CreatePen
           #:SelectObject
           #:DeleteObject
           #:RGB
           #:GetPixel
           #:SetPixel
           #:MoveToEx
           #:GetCurrentPositionEx
           #:LineTo
           #:Polyline
           #:PolylineTo
           #:PolyPolyline
           #:Arc
           #:AngleArc
           #:ArcTo
           #:PolyBezier
           #:PolyBezierTo
           #:PolyDraw
           #:Rectangle
           #:Ellipse
           #:RoundRect
           #:Pie
           #:Chord
           #:Polygon
           #:PolyPolygon
           #:SetBkColor
           #:SetBkMode
           #:SetPolyFillMode
           #:SetViewportOrgEx
           #:SetWindowOrgEx
           #:SetMapMode
           #:GetDC
           #:ReleaseDC
           #:with-dc
           #:InvalidateRect
           #:GetSysColor
           #:DrawFocusRect
           #:FrameRect
           #:FillRect
           #:InvertRect
           #:SetRect
           #:CreateCompatibleDC
           #:BitBlt
           #:CreateCompatibleBitmap
           #:PatBlt
           #:SetWorldTransform
           #:SetGraphicsMode
           #:SetWindowExtEx
           #:ImageList_Create
           #:DrawIcon))
