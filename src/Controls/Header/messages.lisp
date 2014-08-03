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

(define-constant HDM_FIRST                            #x1200)
(define-constant HDM_GETITEMCOUNT           (+ HDM_FIRST  0))
(define-constant HDM_INSERTITEMA            (+ HDM_FIRST  1))
(define-constant HDM_INSERTITEMW            (+ HDM_FIRST 10))
(define-constant HDM_INSERTITEM              HDM_INSERTITEMW)
(define-constant HDM_DELETEITEM             (+ HDM_FIRST  2))
(define-constant HDM_GETITEMA               (+ HDM_FIRST  3))
(define-constant HDM_GETITEMW               (+ HDM_FIRST 11))
(define-constant HDM_GETITEM                    HDM_GETITEMW)
(define-constant HDM_SETITEMA               (+ HDM_FIRST  4))
(define-constant HDM_SETITEMW               (+ HDM_FIRST 12))
(define-constant HDM_SETITEM                    HDM_SETITEMW)
(define-constant HDM_LAYOUT                 (+ HDM_FIRST  5))
(define-constant HDM_HITTEST                (+ HDM_FIRST  6))
(define-constant HDM_GETITEMRECT            (+ HDM_FIRST  7))
(define-constant HDM_SETIMAGELIST           (+ HDM_FIRST  8))
(define-constant HDM_GETIMAGELIST           (+ HDM_FIRST  9))
(define-constant HDM_ORDERTOINDEX           (+ HDM_FIRST 15))
(define-constant HDM_CREATEDRAGIMAGE        (+ HDM_FIRST 16))
(define-constant HDM_GETORDERARRAY          (+ HDM_FIRST 17))
(define-constant HDM_SETORDERARRAY          (+ HDM_FIRST 18))
(define-constant HDM_SETHOTDIVIDER          (+ HDM_FIRST 19))
(define-constant HDM_SETBITMAPMARGIN        (+ HDM_FIRST 20))
(define-constant HDM_GETBITMAPMARGIN        (+ HDM_FIRST 21))
(define-constant HDM_SETUNICODEFORMAT       CCM_SETUNICODEFORMAT)
(define-constant HDM_GETUNICODEFORMAT       CCM_GETUNICODEFORMAT)
(define-constant HDM_SETFILTERCHANGETIMEOUT (+ HDM_FIRST 22))
(define-constant HDM_EDITFILTER             (+ HDM_FIRST 23))
(define-constant HDM_CLEARFILTER            (+ HDM_FIRST 24))
(define-constant HDM_GETITEMDROPDOWNRECT    (+ HDM_FIRST 25))
(define-constant HDM_GETOVERFLOWRECT        (+ HDM_FIRST 26))
(define-constant HDM_GETFOCUSEDITEM         (+ HDM_FIRST 27))
(define-constant HDM_SETFOCUSEDITEM         (+ HDM_FIRST 28))

(define-constant HDN_FIRST (- 0 300))

(define-constant HDN_ITEMCHANGINGA      (mask-field (byte 32 0) (- HDN_FIRST  0)))
(define-constant HDN_ITEMCHANGINGW      (mask-field (byte 32 0) (- HDN_FIRST 20)))
(define-constant HDN_ITEMCHANGEDA       (mask-field (byte 32 0) (- HDN_FIRST  1)))
(define-constant HDN_ITEMCHANGEDW       (mask-field (byte 32 0) (- HDN_FIRST 21)))
(define-constant HDN_ITEMCLICKA         (mask-field (byte 32 0) (- HDN_FIRST  2)))
(define-constant HDN_ITEMCLICKW         (mask-field (byte 32 0) (- HDN_FIRST 22)))
(define-constant HDN_ITEMDBLCLICKA      (mask-field (byte 32 0) (- HDN_FIRST  3)))
(define-constant HDN_ITEMDBLCLICKW      (mask-field (byte 32 0) (- HDN_FIRST 23)))
(define-constant HDN_DIVIDERDBLCLICKA   (mask-field (byte 32 0) (- HDN_FIRST  5)))
(define-constant HDN_DIVIDERDBLCLICKW   (mask-field (byte 32 0) (- HDN_FIRST 25)))
(define-constant HDN_BEGINTRACKA        (mask-field (byte 32 0) (- HDN_FIRST  6)))
(define-constant HDN_BEGINTRACKW        (mask-field (byte 32 0) (- HDN_FIRST 26)))
(define-constant HDN_ENDTRACKA          (mask-field (byte 32 0) (- HDN_FIRST  7)))
(define-constant HDN_ENDTRACKW          (mask-field (byte 32 0) (- HDN_FIRST 27)))
(define-constant HDN_TRACKA             (mask-field (byte 32 0) (- HDN_FIRST  8)))
(define-constant HDN_TRACKW             (mask-field (byte 32 0) (- HDN_FIRST 28)))
(define-constant HDN_GETDISPINFOA       (mask-field (byte 32 0) (- HDN_FIRST  9)))
(define-constant HDN_GETDISPINFOW       (mask-field (byte 32 0) (- HDN_FIRST 29)))
(define-constant HDN_BEGINDRAG          (mask-field (byte 32 0) (- HDN_FIRST 10)))
(define-constant HDN_ENDDRAG            (mask-field (byte 32 0) (- HDN_FIRST 11)))
(define-constant HDN_FILTERCHANGE       (mask-field (byte 32 0) (- HDN_FIRST 12)))
(define-constant HDN_FILTERBTNCLICK     (mask-field (byte 32 0) (- HDN_FIRST 13)))
(define-constant HDN_BEGINFILTEREDIT    (mask-field (byte 32 0) (- HDN_FIRST 14)))
(define-constant HDN_ENDFILTEREDIT      (mask-field (byte 32 0) (- HDN_FIRST 15)))
(define-constant HDN_ITEMSTATEICONCLICK (mask-field (byte 32 0) (- HDN_FIRST 16)))
(define-constant HDN_ITEMKEYDOWN        (mask-field (byte 32 0) (- HDN_FIRST 17)))
(define-constant HDN_DROPDOWN           (mask-field (byte 32 0) (- HDN_FIRST 18)))
(define-constant HDN_OVERFLOWCLICK      (mask-field (byte 32 0) (- HDN_FIRST 19)))
(define-constant HDN_ITEMCHANGING                               HDN_ITEMCHANGINGW)
(define-constant HDN_ITEMCHANGED                                 HDN_ITEMCHANGEDW)
(define-constant HDN_ITEMCLICK                                     HDN_ITEMCLICKW)
(define-constant HDN_ITEMDBLCLICK                               HDN_ITEMDBLCLICKW)
(define-constant HDN_DIVIDERDBLCLICK                         HDN_DIVIDERDBLCLICKW)
(define-constant HDN_BEGINTRACK                                   HDN_BEGINTRACKW)
(define-constant HDN_ENDTRACK                                       HDN_ENDTRACKW)
(define-constant HDN_TRACK                                             HDN_TRACKW)
(define-constant HDN_GETDISPINFO                                 HDN_GETDISPINFOW)
