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

(defpackage :Lunette.Controls.Calendar
  (:use :common-lisp
        :cffi
        :alexandria
        :Lunette.System
        :Lunette.Controls)
  (:export #:MONTHCAL_CLASS

           #:MCS_DAYSTATE
           #:MCS_MULTISELECT
           #:MCS_WEEKNUMBERS
           #:MCS_NOTODAYCIRCLE
           #:MCS_NOTODAY
           #:MCS_NOTODAY
           #:MCS_NOTRAILINGDATES
           #:MCS_SHORTDAYSOFWEEK
           #:MCS_NOSELCHANGEONNAV

           #:MCM_FIRST

           #:MCM_GETCURSEL
           #:MCM_SETCURSEL
           #:MCM_GETMAXSELCOUNT
           #:MCM_SETMAXSELCOUNT
           #:MCM_GETSELRANGE
           #:MCM_SETSELRANGE
           #:MCM_GETMONTHRANGE
           #:MCM_SETDAYSTATE
           #:MCM_GETMINREQRECT
           #:MCM_SETCOLOR
           #:MCM_GETCOLOR
           #:MCM_SETTODAY
           #:MCM_GETTODAY
           #:MCM_HITTEST
           #:MCM_SETFIRSTDAYOFWEEK
           #:MCM_GETFIRSTDAYOFWEEK
           #:MCM_GETRANGE
           #:MCM_SETRANGE
           #:MCM_GETMONTHDELTA
           #:MCM_SETMONTHDELTA
           #:MCM_GETMAXTODAYWIDTH
           #:MCM_SETUNICODEFORMAT
           #:MCM_GETUNICODEFORMAT
           #:MCM_GETCURRENTVIEW
           #:MCM_GETCALENDARCOUNT
           #:MCM_GETCALENDARGRIDINFO
           #:MCM_GETCALID
           #:MCM_SETCALID
           #:MCM_SIZERECTTOMIN
           #:MCM_SETCALENDARBORDER
           #:MCM_GETCALENDARBORDER
           #:MCM_SETCURRENTVIEW

           #:MCN_FIRST
           #:MCN_LAST
           #:MCN_SELCHANGE
           #:MCN_SELECT
           #:MCN_VIEWCHANGE))
