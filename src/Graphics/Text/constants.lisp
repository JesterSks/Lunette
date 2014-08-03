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

;;; Font Weights
(define-constant FW_DONTCARE   0)
(define-constant FW_THIN       100)
(define-constant FW_EXTRALIGHT 200)
(define-constant FW_LIGHT      300)
(define-constant FW_NORMAL     400)
(define-constant FW_MEDIUM     500)
(define-constant FW_SEMIBOLD   600)
(define-constant FW_BOLD       700)
(define-constant FW_EXTRABOLD  800)
(define-constant FW_HEAVY      900)

(define-constant FW_ULTRALIGHT FW_EXTRALIGHT)
(define-constant FW_REGULAR    FW_NORMAL)
(define-constant FW_DEMIBOLD   FW_SEMIBOLD)
(define-constant FW_ULTRABOLD  FW_EXTRABOLD)
(define-constant FW_BLACK      FW_HEAVY)

;;; Built in Charsets
(define-constant ANSI_CHARSET        0)
(define-constant DEFAULT_CHARSET     1)
(define-constant SYMBOL_CHARSET      2)
(define-constant SHIFTJIS_CHARSET    128)
(define-constant HANGEUL_CHARSET     129)
(define-constant HANGUL_CHARSET      129)
(define-constant GB2312_CHARSET      134)
(define-constant CHINESEBIG5_CHARSET 136)
(define-constant OEM_CHARSET         255)
(define-constant JOHAB_CHARSET       130)
(define-constant HEBREW_CHARSET      177)
(define-constant ARABIC_CHARSET      178)
(define-constant GREEK_CHARSET       161)
(define-constant TURKISH_CHARSET     162)
(define-constant VIETNAMESE_CHARSET  163)
(define-constant THAI_CHARSET        222)
(define-constant EASTEUROPE_CHARSET  238)
(define-constant RUSSIAN_CHARSET     204)
(define-constant MAC_CHARSET         77)
(define-constant BALTIC_CHARSET      186)

(define-constant DEFAULT_PITCH  0)
(define-constant FIXED_PITCH    1)
(define-constant VARIABLE_PITCH 2)

(define-constant OUT_DEFAULT_PRECIS        0)
(define-constant OUT_STRING_PRECIS         1)
(define-constant OUT_CHARACTER_PRECIS      2)
(define-constant OUT_STROKE_PRECIS         3)
(define-constant OUT_TT_PRECIS             4)
(define-constant OUT_DEVICE_PRECIS         5)
(define-constant OUT_RASTER_PRECIS         6)
(define-constant OUT_TT_ONLY_PRECIS        7)
(define-constant OUT_OUTLINE_PRECIS        8)
(define-constant OUT_SCREEN_OUTLINE_PRECIS 9)
(define-constant OUT_PS_ONLY_PRECIS        10)

(define-constant CLIP_DEFAULT_PRECIS   0)
(define-constant CLIP_CHARACTER_PRECIS 1)
(define-constant CLIP_STROKE_PRECIS    2)
(define-constant CLIP_MASK             #xf)
(define-constant CLIP_LH_ANGLES        (ash 1 4))
(define-constant CLIP_TT_ALWAYS        (ash 2 4))
(define-constant CLIP_DFA_DISABLE      (ash 4 4))
(define-constant CLIP_EMBEDDED         (ash 8 4))

(define-constant DEFAULT_QUALITY           0)
(define-constant DRAFT_QUALITY             1)
(define-constant PROOF_QUALITY             2)
(define-constant NONANTIALIASED_QUALITY    3)
(define-constant ANTIALIASED_QUALITY       4)
(define-constant CLEARTYPE_QUALITY         5)
(define-constant CLEARTYPE_NATURAL_QUALITY 6)

;;; Font Families
(define-constant FF_DONTCARE   (ash 0 4)) ; Don't care or don't know.
(define-constant FF_ROMAN      (ash 1 4)) ; Variable stroke width, serifed.
                                          ; Times Roman, Century Schoolbook, etc.
(define-constant FF_SWISS      (ash 2 4)) ; Variable stroke width, sans-serifed.
                                          ; Helvetica, Swiss, etc.
(define-constant FF_MODERN     (ash 3 4)) ; Constant stroke width, serifed or sans-serifed.
                                          ; Pica, Elite, Courier, etc.
(define-constant FF_SCRIPT     (ash 4 4)) ; Cursive, etc.
(define-constant FF_DECORATIVE (ash 5 4)) ; Old English, etc.

;;; DrawText() Format Flags
(define-constant DT_TOP             #x00000000)
(define-constant DT_LEFT            #x00000000)
(define-constant DT_CENTER          #x00000001)
(define-constant DT_RIGHT           #x00000002)
(define-constant DT_VCENTER         #x00000004)
(define-constant DT_BOTTOM          #x00000008)
(define-constant DT_WORDBREAK       #x00000010)
(define-constant DT_SINGLELINE      #x00000020)
(define-constant DT_EXPANDTABS      #x00000040)
(define-constant DT_TABSTOP         #x00000080)
(define-constant DT_NOCLIP          #x00000100)
(define-constant DT_EXTERNALLEADING #x00000200)
(define-constant DT_CALCRECT        #x00000400)
(define-constant DT_NOPREFIX        #x00000800)
(define-constant DT_INTERNAL        #x00001000)

(define-constant DT_EDITCONTROL          #x00002000)
(define-constant DT_PATH_ELLIPSIS        #x00004000)
(define-constant DT_END_ELLIPSIS         #x00008000)
(define-constant DT_MODIFYSTRING         #x00010000)
(define-constant DT_RTLREADING           #x00020000)
(define-constant DT_WORD_ELLIPSIS        #x00040000)
(define-constant DT_NOFULLWIDTHCHARBREAK #x00080000)
(define-constant DT_HIDEPREFIX           #x00100000)
(define-constant DT_PREFIXONLY           #x00200000)
