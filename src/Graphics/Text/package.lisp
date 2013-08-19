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

(defpackage :Lunette.Graphics.Text
  (:use #:common-lisp
        #:Lunette.System)
  (:import-from :cffi
                #:defcfun
                #:defcstruct
                #:defctype
                #:null-pointer
                #:with-foreign-string)
  (:import-from :alexandria
                #:define-constant)
  (:export #:FW_DONTCARE
           #:FW_THIN
           #:FW_EXTRALIGHT
           #:FW_LIGHT
           #:FW_NORMAL
           #:FW_MEDIUM
           #:FW_SEMIBOLD
           #:FW_BOLD
           #:FW_EXTRABOLD
           #:FW_HEAVY

           #:FW_ULTRALIGHT
           #:FW_REGULAR
           #:FW_DEMIBOLD
           #:FW_ULTRABOLD
           #:FW_BLACK

           #:ANSI_CHARSET
           #:DEFAULT_CHARSET
           #:SYMBOL_CHARSET
           #:SHIFTJIS_CHARSET
           #:HANGEUL_CHARSET
           #:HANGUL_CHARSET
           #:GB2312_CHARSET
           #:CHINESEBIG5_CHARSET
           #:OEM_CHARSET
           #:JOHAB_CHARSET
           #:HEBREW_CHARSET
           #:ARABIC_CHARSET
           #:GREEK_CHARSET
           #:TURKISH_CHARSET
           #:VIETNAMESE_CHARSET
           #:THAI_CHARSET
           #:EASTEUROPE_CHARSET
           #:RUSSIAN_CHARSET
           #:MAC_CHARSET
           #:BALTIC_CHARSET

           #:DEFAULT_PITCH
           #:FIXED_PITCH
           #:VARIABLE_PITCH

           #:OUT_DEFAULT_PRECIS
           #:OUT_STRING_PRECIS
           #:OUT_CHARACTER_PRECIS
           #:OUT_STROKE_PRECIS
           #:OUT_TT_PRECIS
           #:OUT_DEVICE_PRECIS
           #:OUT_RASTER_PRECIS
           #:OUT_TT_ONLY_PRECIS
           #:OUT_OUTLINE_PRECIS
           #:OUT_SCREEN_OUTLINE_PRECIS
           #:OUT_PS_ONLY_PRECIS

           #:CLIP_DEFAULT_PRECIS
           #:CLIP_CHARACTER_PRECIS
           #:CLIP_STROKE_PRECIS
           #:CLIP_MASK
           #:CLIP_LH_ANGLES
           #:CLIP_TT_ALWAYS
           #:CLIP_DFA_DISABLE
           #:CLIP_EMBEDDED

           #:DEFAULT_QUALITY
           #:DRAFT_QUALITY
           #:PROOF_QUALITY
           #:NONANTIALIASED_QUALITY
           #:ANTIALIASED_QUALITY
           #:CLEARTYPE_QUALITY
           #:CLEARTYPE_NATURAL_QUALITY

           #:FF_DONTCARE
           #:FF_ROMAN
           #:FF_SWISS
           #:FF_MODERN
           #:FF_SCRIPT
           #:FF_DECORATIVE

           #:tmHeight
           #:tmAscent
           #:tmDescent
           #:tmInternalLeading
           #:tmExternalLeading
           #:tmAveCharWidth
           #:tmMaxCharWidth
           #:tmWeight
           #:tmOverhang
           #:tmDigitizedAspectX
           #:tmDigitizedAspectY
           #:tmFirstChar
           #:tmLastChar
           #:tmDefaultChar
           #:tmBreakChar
           #:tmItalic
           #:tmUnderlined
           #:tmStruckOut
           #:tmPitchAndFamily
           #:tmCharSet
           #:TEXTMETRIC
           #:PTEXTMETRIC
           #:NPTEXTMETRIC
           #:LPTEXTMETRIC


           #:TextOut
           #:text-out
           #:GetTextMetrics
           #:CreateFont
           #:CreateCaret
           #:SetCaretPos
           #:ShowCaret
           #:HideCaret
           #:DestroyCaret))
