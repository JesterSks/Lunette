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
