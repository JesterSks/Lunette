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
