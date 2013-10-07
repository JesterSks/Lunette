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

(in-package :Lunette.Controls.Trackbar)

(define-constant TRACKBAR_CLASS "msctls_trackbar32" :test #'string=)

(define-constant TBS_AUTOTICKS           #x0001)
(define-constant TBS_VERT                #x0002)
(define-constant TBS_HORZ                #x0000)
(define-constant TBS_TOP                 #x0004)
(define-constant TBS_BOTTOM              #x0000)
(define-constant TBS_LEFT                #x0004)
(define-constant TBS_RIGHT               #x0000)
(define-constant TBS_BOTH                #x0008)
(define-constant TBS_NOTICKS             #x0010)
(define-constant TBS_ENABLESELRANGE      #x0020)
(define-constant TBS_FIXEDLENGTH         #x0040)
(define-constant TBS_NOTHUMB             #x0080)
(define-constant TBS_TOOLTIPS            #x0100)
(define-constant TBS_REVERSED            #x0200)
(define-constant TBS_DOWNISLEFT          #x0400)
(define-constant TBS_NOTIFYBEFOREMOVE    #x0800)
(define-constant TBS_TRANSPARENTBKGND    #x1000)

(define-constant TBM_GETPOS                     WM_USER)
(define-constant TBM_GETRANGEMIN          (+ WM_USER 1))
(define-constant TBM_GETRANGEMAX          (+ WM_USER 2))
(define-constant TBM_GETTIC               (+ WM_USER 3))
(define-constant TBM_SETTIC               (+ WM_USER 4))
(define-constant TBM_SETPOS               (+ WM_USER 5))
(define-constant TBM_SETRANGE             (+ WM_USER 6))
(define-constant TBM_SETRANGEMIN          (+ WM_USER 7))
(define-constant TBM_SETRANGEMAX          (+ WM_USER 8))
(define-constant TBM_CLEARTICS            (+ WM_USER 9))
(define-constant TBM_SETSEL              (+ WM_USER 10))
(define-constant TBM_SETSELSTART         (+ WM_USER 11))
(define-constant TBM_SETSELEND           (+ WM_USER 12))
(define-constant TBM_GETPTICS            (+ WM_USER 14))
(define-constant TBM_GETTICPOS           (+ WM_USER 15))
(define-constant TBM_GETNUMTICS          (+ WM_USER 16))
(define-constant TBM_GETSELSTART         (+ WM_USER 17))
(define-constant TBM_GETSELEND           (+ WM_USER 18))
(define-constant TBM_CLEARSEL            (+ WM_USER 19))
(define-constant TBM_SETTICFREQ          (+ WM_USER 20))
(define-constant TBM_SETPAGESIZE         (+ WM_USER 21))
(define-constant TBM_GETPAGESIZE         (+ WM_USER 22))
(define-constant TBM_SETLINESIZE         (+ WM_USER 23))
(define-constant TBM_GETLINESIZE         (+ WM_USER 24))
(define-constant TBM_GETTHUMBRECT        (+ WM_USER 25))
(define-constant TBM_GETCHANNELRECT      (+ WM_USER 26))
(define-constant TBM_SETTHUMBLENGTH      (+ WM_USER 27))
(define-constant TBM_GETTHUMBLENGTH      (+ WM_USER 28))
(define-constant TBM_SETTOOLTIPS         (+ WM_USER 29))
(define-constant TBM_GETTOOLTIPS         (+ WM_USER 30))
(define-constant TBM_SETTIPSIDE          (+ WM_USER 31))
(define-constant TBM_SETBUDDY            (+ WM_USER 32))
(define-constant TBM_GETBUDDY            (+ WM_USER 33))
(define-constant TBM_SETPOSNOTIFY        (+ WM_USER 34))
(define-constant TBM_SETUNICODEFORMAT    CCM_SETUNICODEFORMAT)
(define-constant TBM_GETUNICODEFORMAT    CCM_GETUNICODEFORMAT)
