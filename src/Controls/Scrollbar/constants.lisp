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

;;; Scroll Bar Constants
(define-constant SB_HORZ 0)
(define-constant SB_VERT 1)
(define-constant SB_CTL  2)
(define-constant SB_BOTH 3)

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
