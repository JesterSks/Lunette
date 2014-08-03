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

(define-constant MCM_FIRST           #x1000)

(define-constant MCM_GETCURSEL           (+ MCM_FIRST  1))
(define-constant MCM_SETCURSEL           (+ MCM_FIRST  2))
(define-constant MCM_GETMAXSELCOUNT      (+ MCM_FIRST  3))
(define-constant MCM_SETMAXSELCOUNT      (+ MCM_FIRST  4))
(define-constant MCM_GETSELRANGE         (+ MCM_FIRST  5))
(define-constant MCM_SETSELRANGE         (+ MCM_FIRST  6))
(define-constant MCM_GETMONTHRANGE       (+ MCM_FIRST  7))
(define-constant MCM_SETDAYSTATE         (+ MCM_FIRST  8))
(define-constant MCM_GETMINREQRECT       (+ MCM_FIRST  9))
(define-constant MCM_SETCOLOR            (+ MCM_FIRST 10))
(define-constant MCM_GETCOLOR            (+ MCM_FIRST 11))
(define-constant MCM_SETTODAY            (+ MCM_FIRST 12))
(define-constant MCM_GETTODAY            (+ MCM_FIRST 13))
(define-constant MCM_HITTEST             (+ MCM_FIRST 14))
(define-constant MCM_SETFIRSTDAYOFWEEK   (+ MCM_FIRST 15))
(define-constant MCM_GETFIRSTDAYOFWEEK   (+ MCM_FIRST 16))
(define-constant MCM_GETRANGE            (+ MCM_FIRST 17))
(define-constant MCM_SETRANGE            (+ MCM_FIRST 18))
(define-constant MCM_GETMONTHDELTA       (+ MCM_FIRST 19))
(define-constant MCM_SETMONTHDELTA       (+ MCM_FIRST 20))
(define-constant MCM_GETMAXTODAYWIDTH    (+ MCM_FIRST 21))
(define-constant MCM_SETUNICODEFORMAT    CCM_SETUNICODEFORMAT)
(define-constant MCM_GETUNICODEFORMAT    CCM_GETUNICODEFORMAT)
(define-constant MCM_GETCURRENTVIEW      (+ MCM_FIRST 22))
(define-constant MCM_GETCALENDARCOUNT    (+ MCM_FIRST 23))
(define-constant MCM_GETCALENDARGRIDINFO (+ MCM_FIRST 24))
(define-constant MCM_GETCALID            (+ MCM_FIRST 27))
(define-constant MCM_SETCALID            (+ MCM_FIRST 28))
(define-constant MCM_SIZERECTTOMIN       (+ MCM_FIRST 29))
(define-constant MCM_SETCALENDARBORDER   (+ MCM_FIRST 30))
(define-constant MCM_GETCALENDARBORDER   (+ MCM_FIRST 31))
(define-constant MCM_SETCURRENTVIEW      (+ MCM_FIRST 32))

(define-constant MCN_FIRST      (- 746))
(define-constant MCN_LAST       (- 752))
(define-constant MCN_SELCHANGE  (mask-field (byte 32 0) (- MCN_FIRST 3)))
(define-constant MCN_SELECT     MCN_FIRST)
(define-constant MCN_VIEWCHANGE (mask-field (byte 32 0) (- MCN_FIRST 4)))
