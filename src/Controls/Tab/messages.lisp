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

(in-package :Lunette.Controls.Tab)

(define-constant TCM_FIRST #x1300)

(define-constant TCM_GETIMAGELIST        (+ TCM_FIRST  2))
(define-constant TCM_SETIMAGELIST        (+ TCM_FIRST  3))
(define-constant TCM_GETITEMCOUNT        (+ TCM_FIRST  4))
(define-constant TCM_GETITEMA            (+ TCM_FIRST  5))
(define-constant TCM_GETITEMW            (+ TCM_FIRST 60))
(define-constant TCM_GETITEM                 TCM_GETITEMW)
(define-constant TCM_SETITEMA            (+ TCM_FIRST  6))
(define-constant TCM_SETITEMW            (+ TCM_FIRST 61))
(define-constant TCM_SETITEM                 TCM_SETITEMW)
(define-constant TCM_INSERTITEMA         (+ TCM_FIRST  7))
(define-constant TCM_INSERTITEMW         (+ TCM_FIRST 62))
(define-constant TCM_INSERTITEM           TCM_INSERTITEMW)
(define-constant TCM_DELETEITEM          (+ TCM_FIRST  8))
(define-constant TCM_DELETEALLITEMS      (+ TCM_FIRST  9))
(define-constant TCM_GETITEMRECT         (+ TCM_FIRST 10))
(define-constant TCM_GETCURSEL           (+ TCM_FIRST 11))
(define-constant TCM_SETCURSEL           (+ TCM_FIRST 12))
(define-constant TCM_HITTEST             (+ TCM_FIRST 13))
(define-constant TCM_SETITEMEXTRA        (+ TCM_FIRST 14))
(define-constant TCM_ADJUSTRECT          (+ TCM_FIRST 40))
(define-constant TCM_SETITEMSIZE         (+ TCM_FIRST 41))
(define-constant TCM_REMOVEIMAGE         (+ TCM_FIRST 42))
(define-constant TCM_SETPADDING          (+ TCM_FIRST 43))
(define-constant TCM_GETROWCOUNT         (+ TCM_FIRST 44))
(define-constant TCM_GETTOOLTIPS         (+ TCM_FIRST 45))
(define-constant TCM_SETTOOLTIPS         (+ TCM_FIRST 46))
(define-constant TCM_GETCURFOCUS         (+ TCM_FIRST 47))
(define-constant TCM_SETCURFOCUS         (+ TCM_FIRST 48))
(define-constant TCM_SETMINTABWIDTH      (+ TCM_FIRST 49))
(define-constant TCM_DESELECTALL         (+ TCM_FIRST 50))
(define-constant TCM_HIGHLIGHTITEM       (+ TCM_FIRST 51))
(define-constant TCM_SETEXTENDEDSTYLE    (+ TCM_FIRST 52))
(define-constant TCM_GETEXTENDEDSTYLE    (+ TCM_FIRST 53))
(define-constant TCM_SETUNICODEFORMAT     CCM_SETUNICODEFORMAT)
(define-constant TCM_GETUNICODEFORMAT     CCM_GETUNICODEFORMAT)

(define-constant TCN_FIRST       (- 0 550))
(define-constant TCN_KEYDOWN     (mask-field (byte 32 0) (- TCN_FIRST 0)))
(define-constant TCN_SELCHANGE   (mask-field (byte 32 0) (- TCN_FIRST 1)))
(define-constant TCN_SELCHANGING (mask-field (byte 32 0) (- TCN_FIRST 2)))
(define-constant TCN_GETOBJECT   (mask-field (byte 32 0) (- TCN_FIRST 3)))
(define-constant TCN_FOCUSCHANGE (mask-field (byte 32 0) (- TCN_FIRST 4)))
