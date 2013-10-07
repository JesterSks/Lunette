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

(in-package :Lunette.Controls.StatusBar)

(define-constant SB_SETTEXTA         (+ WM_USER  1))
(define-constant SB_SETTEXTW         (+ WM_USER 11))
(define-constant SB_GETTEXTA         (+ WM_USER  2))
(define-constant SB_GETTEXTW         (+ WM_USER 13))
(define-constant SB_GETTEXTLENGTHA   (+ WM_USER  3))
(define-constant SB_GETTEXTLENGTHW   (+ WM_USER 12))

(define-constant SB_GETTEXT          SB_GETTEXTW      )
(define-constant SB_SETTEXT          SB_SETTEXTW      )
(define-constant SB_GETTEXTLENGTH    SB_GETTEXTLENGTHW)

(define-constant SB_SETPARTS         (+ WM_USER  4))
(define-constant SB_GETPARTS         (+ WM_USER  6))
(define-constant SB_GETBORDERS       (+ WM_USER  7))
(define-constant SB_SETMINHEIGHT     (+ WM_USER  8))
(define-constant SB_SIMPLE           (+ WM_USER  9))
(define-constant SB_GETRECT          (+ WM_USER 10))
(define-constant SB_ISSIMPLE         (+ WM_USER 14))
(define-constant SB_SETICON          (+ WM_USER 15))
(define-constant SB_SETTIPTEXTA      (+ WM_USER 16))
(define-constant SB_SETTIPTEXTW      (+ WM_USER 17))
(define-constant SB_GETTIPTEXTA      (+ WM_USER 18))
(define-constant SB_GETTIPTEXTW      (+ WM_USER 19))
(define-constant SB_SETTIPTEXT       SB_SETTIPTEXTW   )
(define-constant SB_GETTIPTEXT       SB_GETTIPTEXTW   )
(define-constant SB_GETICON          (+ WM_USER 20))
(define-constant SB_SETUNICODEFORMAT CCM_SETUNICODEFORMAT)
(define-constant SB_GETUNICODEFORMAT CCM_GETUNICODEFORMAT)
(define-constant SBT_OWNERDRAW       #x1000)
(define-constant SBT_NOBORDERS       #x0100)
(define-constant SBT_POPOUT          #x0200)
(define-constant SBT_RTLREADING      #x0400)
(define-constant SBT_NOTABPARSING    #x0800)
(define-constant SB_SETBKCOLOR       CCM_SETBKCOLOR)
