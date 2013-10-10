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

(in-package :Lunette.Graphics.Text)

(defcstruct tagTEXTMETRIC
  (tmHeight           :long)
  (tmAscent           :long)
  (tmDescent          :long)
  (tmInternalLeading  :long)
  (tmExternalLeading  :long)
  (tmAveCharWidth     :long)
  (tmMaxCharWidth     :long)
  (tmWeight           :long)
  (tmOverhang         :long)
  (tmDigitizedAspectX :long)
  (tmDigitizedAspectY :long)
  (tmFirstChar        WCHAR)
  (tmLastChar         WCHAR)
  (tmDefaultChar      WCHAR)
  (tmBreakChar        WCHAR)
  (tmItalic           BYTE)
  (tmUnderlined       BYTE)
  (tmStruckOut        BYTE)
  (tmPitchAndFamily   BYTE)
  (tmCharSet          BYTE))

(defctype TEXTMETRIC  (:struct tagTEXTMETRIC))
(defctype PTEXTMETRIC (:pointer TEXTMETRIC))
(defctype NPTEXTMETRIC PTEXTMETRIC)
(defctype LPTEXTMETRIC PTEXTMETRIC)

(defcstruct tagLOGFONT
  (lfHeight                 :LONG)
  (lfWidth                  :LONG)
  (lfEscapement             :LONG)
  (lfOrientation            :LONG)
  (lfWeight                 :LONG)
  (lfItalic                 BYTE)
  (lfUnderline              BYTE)
  (lfStrikeOut              BYTE)
  (lfCharSet                BYTE)
  (lfOutPrecision           BYTE)
  (lfClipPrecision          BYTE)
  (lfQuality                BYTE)
  (lfPitchAndFamily         BYTE)
  ;;SHOULD be (lfFaceName WCHAR :count LF_FACESIZE)
  ;;but the defstruct macro doesn't expand constants correctly
  (lfFaceName               WCHAR :count 32))

(defctype LOGFONT (:struct tagLOGFONT))
(defctype LPLOGFONT (:pointer LOGFONT))

(defcstruct tagENUMLOGFONTEX
  (elfLogFont  LOGFONT)
  ;;SHOULD be
  ;;(elfFullName WCHAR :count LF_FULLFACESIZE)
  ;;(elfStyle    WCHAR :count LF_FACESIZE)
  ;;(elfScript   WCHAR :count LF_FACESIZE)
  ;;but the defstruct macro doesn't expand constants correctly
  (elfFullName WCHAR :count 64)
  (elfStyle    WCHAR :count 32)
  (elfScript   WCHAR :count 32))

(defctype ENUMLOGFONTEX (:struct tagENUMLOGFONTEX))
(defctype LPENUMLOGFONTEX (:pointer ENUMLOGFONTEX))

(defcstruct tagDESIGNVECTOR
  (dvReserved DWORD)
  (dvNumAxes  DWORD)
  ;;SHOULD be (dvValues :LONG :count mm_max_numaxes)
  ;;but CFFI doesn't handle constants in the structure definition.
  (dvValues   :LONG :count 16))

(defctype DESIGNVECTOR   (:struct tagDESIGNVECTOR))
(defctype PDESIGNVECTOR  (:pointer DESIGNVECTOR))
(defctype LPDESIGNVECTOR (:pointer DESIGNVECTOR))

(defcstruct tagENUMLOGFONTEXDV
  (elfEnumLogFontEx ENUMLOGFONTEX)
  (elfDesignVector DESIGNVECTOR))

(defctype ENUMLOGFONTEXDV (:struct tagENUMLOGFONTEXDV))
(defctype LPENUMLOGFONTEXDV (:pointer ENUMLOGFONTEXDV))

(defcstruct tagNEWTEXTMETRIC
  (tmHeight           :LONG)
  (tmAscent           :LONG)
  (tmDescent          :LONG)
  (tmInternalLeading  :LONG)
  (tmExternalLeading  :LONG)
  (tmAveCharWidth     :LONG)
  (tmMaxCharWidth     :LONG)
  (tmWeight           :LONG)
  (tmOverhang         :LONG)
  (tmDigitizedAspectX :LONG)
  (tmDigitizedAspectY :LONG)
  (tmFirstChar        WCHAR)
  (tmLastChar         WCHAR)
  (tmDefaultChar      WCHAR)
  (tmBreakChar        WCHAR)
  (tmItalic            BYTE)
  (tmUnderlined        BYTE)
  (tmStruckOut         BYTE)
  (tmPitchAndFamily    BYTE)
  (tmCharSet           BYTE)
  (ntmFlags           DWORD)
  (ntmSizeEM          :UINT)
  (ntmCellHeight      :UINT)
  (ntmAvgWidth        :UINT))

(defctype NEWTEXTMETRIC (:struct tagNEWTEXTMETRIC))
(defctype LPNEWTEXTMETRIC (:pointer NEWTEXTMETRIC))

(defcstruct tagFONTSIGNATURE
  (fsUsb DWORD :count 4)
  (fsCsb DWORD :count 2))

(defctype FONTSIGNATURE  (:struct tagFONTSIGNATURE))
(defctype PFONTSIGNATURE (:pointer FONTSIGNATURE))

(defcstruct tagNEWTEXTMETRICEX
  (ntmTm      NEWTEXTMETRIC)
  (ntmFontSig FONTSIGNATURE))

(defctype NEWTEXTMETRICEX (:struct tagNEWTEXTMETRICEX))
