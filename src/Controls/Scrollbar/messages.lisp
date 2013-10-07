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

(in-package :Lunette.Controls.Scrollbar)

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

;;; Scroll bar messages
(define-constant SBM_SETPOS           #x00E0)
(define-constant SBM_GETPOS           #x00E1)
(define-constant SBM_SETRANGE         #x00E2)
(define-constant SBM_SETRANGEREDRAW   #x00E6)
(define-constant SBM_GETRANGE         #x00E3)
(define-constant SBM_ENABLE_ARROWS    #x00E4)
(define-constant SBM_SETSCROLLINFO    #x00E9)
(define-constant SBM_GETSCROLLINFO    #x00EA)
(define-constant SBM_GETSCROLLBARINFO #x00EB)
