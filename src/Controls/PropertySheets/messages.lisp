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

(in-package :Lunette.Controls.PropertySheets)

(define-constant PSN_FIRST (- 0 200))
(define-constant PSN_LAST  (- 0 299))

(define-constant PSN_SETACTIVE            (mask-field (byte 32 0) (- PSN_FIRST  0)))
(define-constant PSN_KILLACTIVE           (mask-field (byte 32 0) (- PSN_FIRST  1)))
(define-constant PSN_APPLY                (mask-field (byte 32 0) (- PSN_FIRST  2)))
(define-constant PSN_RESET                (mask-field (byte 32 0) (- PSN_FIRST  3)))
(define-constant PSN_HELP                 (mask-field (byte 32 0) (- PSN_FIRST  5)))
(define-constant PSN_WIZBACK              (mask-field (byte 32 0) (- PSN_FIRST  6)))
(define-constant PSN_WIZNEXT              (mask-field (byte 32 0) (- PSN_FIRST  7)))
(define-constant PSN_WIZFINISH            (mask-field (byte 32 0) (- PSN_FIRST  8)))
(define-constant PSN_QUERYCANCEL          (mask-field (byte 32 0) (- PSN_FIRST  9)))
(define-constant PSN_GETOBJECT            (mask-field (byte 32 0) (- PSN_FIRST 10)))
(define-constant PSN_TRANSLATEACCELERATOR (mask-field (byte 32 0) (- PSN_FIRST 12)))
(define-constant PSN_QUERYINITIALFOCUS    (mask-field (byte 32 0) (- PSN_FIRST 13)))

(define-constant PSM_SETCURSEL                  (+ WM_USER 101))
(define-constant PSM_REMOVEPAGE                 (+ WM_USER 102))
(define-constant PSM_ADDPAGE                    (+ WM_USER 103))
(define-constant PSM_CHANGED                    (+ WM_USER 104))
(define-constant PSM_RESTARTWINDOWS             (+ WM_USER 105))
(define-constant PSM_REBOOTSYSTEM               (+ WM_USER 106))
(define-constant PSM_CANCELTOCLOSE              (+ WM_USER 107))
(define-constant PSM_QUERYSIBLINGS              (+ WM_USER 108))
(define-constant PSM_UNCHANGED                  (+ WM_USER 109))
(define-constant PSM_APPLY                      (+ WM_USER 110))
(define-constant PSM_SETTITLEA                  (+ WM_USER 111))
(define-constant PSM_SETTITLEW                  (+ WM_USER 120))
(define-constant PSM_SETTITLE                     PSM_SETTITLEW)
(define-constant PSM_SETWIZBUTTONS              (+ WM_USER 112))
(define-constant PSM_PRESSBUTTON                (+ WM_USER 113))
(define-constant PSM_SETCURSELID                (+ WM_USER 114))
(define-constant PSM_SETFINISHTEXTA             (+ WM_USER 115))
(define-constant PSM_SETFINISHTEXTW             (+ WM_USER 121))
(define-constant PSM_SETFINISHTEXT           PSM_SETFINISHTEXTW)
(define-constant PSM_GETTABCONTROL              (+ WM_USER 116))
(define-constant PSM_ISDIALOGMESSAGE            (+ WM_USER 117))
(define-constant PSM_GETCURRENTPAGEHWND         (+ WM_USER 118))
(define-constant PSM_INSERTPAGE                 (+ WM_USER 119))
(define-constant PSM_SETHEADERTITLEA            (+ WM_USER 125))
(define-constant PSM_SETHEADERTITLEW            (+ WM_USER 126))
(define-constant PSM_SETHEADERTITLE         PSM_SETHEADERTITLEW)
(define-constant PSM_SETHEADERSUBTITLEA         (+ WM_USER 127))
(define-constant PSM_SETHEADERSUBTITLEW         (+ WM_USER 128))
(define-constant PSM_SETHEADERSUBTITLE   PSM_SETHEADERSUBTITLEW)
(define-constant PSM_HWNDTOINDEX                (+ WM_USER 129))
(define-constant PSM_INDEXTOHWND                (+ WM_USER 130))
(define-constant PSM_PAGETOINDEX                (+ WM_USER 131))
(define-constant PSM_INDEXTOPAGE                (+ WM_USER 132))
(define-constant PSM_IDTOINDEX                  (+ WM_USER 133))
(define-constant PSM_INDEXTOID                  (+ WM_USER 134))
(define-constant PSM_GETRESULT                  (+ WM_USER 135))
(define-constant PSM_RECALCPAGESIZES            (+ WM_USER 136))
(define-constant PSM_SETNEXTTEXTW               (+ WM_USER 137))
(define-constant PSM_SETNEXTTEXT               PSM_SETNEXTTEXTW)
(define-constant PSM_SHOWWIZBUTTONS             (+ WM_USER 138))
(define-constant PSM_ENABLEWIZBUTTONS           (+ WM_USER 139))
(define-constant PSM_SETBUTTONTEXTW             (+ WM_USER 140))
(define-constant PSM_SETBUTTONTEXT           PSM_SETBUTTONTEXTW)
