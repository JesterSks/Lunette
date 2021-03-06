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

(in-package :Lunette.Controls.Toolbar)

;;; COMCTRL32
(define-constant TB_ENABLEBUTTON          (+ WM_USER  1))
(define-constant TB_CHECKBUTTON           (+ WM_USER  2))
(define-constant TB_PRESSBUTTON           (+ WM_USER  3))
(define-constant TB_HIDEBUTTON            (+ WM_USER  4))
(define-constant TB_INDETERMINATE         (+ WM_USER  5))
(define-constant TB_MARKBUTTON            (+ WM_USER  6))
(define-constant TB_ISBUTTONENABLED       (+ WM_USER  9))
(define-constant TB_ISBUTTONCHECKED       (+ WM_USER 10))
(define-constant TB_ISBUTTONPRESSED       (+ WM_USER 11))
(define-constant TB_ISBUTTONHIDDEN        (+ WM_USER 12))
(define-constant TB_ISBUTTONINDETERMINATE (+ WM_USER 13))
(define-constant TB_ISBUTTONHIGHLIGHTED   (+ WM_USER 14))
(define-constant TB_SETSTATE              (+ WM_USER 17))
(define-constant TB_GETSTATE              (+ WM_USER 18))
(define-constant TB_ADDBITMAP             (+ WM_USER 19))
(define-constant TB_ADDBUTTONSA           (+ WM_USER 20))
(define-constant TB_INSERTBUTTONA         (+ WM_USER 21))
(define-constant TB_DELETEBUTTON          (+ WM_USER 22))
(define-constant TB_GETBUTTON             (+ WM_USER 23))
(define-constant TB_BUTTONCOUNT           (+ WM_USER 24))
(define-constant TB_COMMANDTOINDEX        (+ WM_USER 25))
(define-constant TB_SAVERESTOREA          (+ WM_USER 26))
(define-constant TB_SAVERESTOREW          (+ WM_USER 76))
(define-constant TB_CUSTOMIZE             (+ WM_USER 27))
(define-constant TB_ADDSTRINGA            (+ WM_USER 28))
(define-constant TB_ADDSTRINGW            (+ WM_USER 77))
(define-constant TB_GETITEMRECT           (+ WM_USER 29))
(define-constant TB_BUTTONSTRUCTSIZE      (+ WM_USER 30))
(define-constant TB_SETBUTTONSIZE         (+ WM_USER 31))
(define-constant TB_SETBITMAPSIZE         (+ WM_USER 32))
(define-constant TB_AUTOSIZE              (+ WM_USER 33))
(define-constant TB_GETTOOLTIPS           (+ WM_USER 35))
(define-constant TB_SETTOOLTIPS           (+ WM_USER 36))
(define-constant TB_SETPARENT             (+ WM_USER 37))
(define-constant TB_SETROWS               (+ WM_USER 39))
(define-constant TB_GETROWS               (+ WM_USER 40))
(define-constant TB_SETCMDID              (+ WM_USER 42))
(define-constant TB_CHANGEBITMAP          (+ WM_USER 43))
(define-constant TB_GETBITMAP             (+ WM_USER 44))
(define-constant TB_GETBUTTONTEXTA        (+ WM_USER 45))
(define-constant TB_GETBUTTONTEXTW        (+ WM_USER 75))
(define-constant TB_REPLACEBITMAP         (+ WM_USER 46))
(define-constant TB_SETINDENT             (+ WM_USER 47))
(define-constant TB_SETIMAGELIST          (+ WM_USER 48))
(define-constant TB_GETIMAGELIST          (+ WM_USER 49))
(define-constant TB_LOADIMAGES            (+ WM_USER 50))
(define-constant TB_GETRECT               (+ WM_USER 51))
(define-constant TB_SETHOTIMAGELIST       (+ WM_USER 52))
(define-constant TB_GETHOTIMAGELIST       (+ WM_USER 53))
(define-constant TB_SETDISABLEDIMAGELIST  (+ WM_USER 54))
(define-constant TB_GETDISABLEDIMAGELIST  (+ WM_USER 55))
(define-constant TB_SETSTYLE              (+ WM_USER 56))
(define-constant TB_GETSTYLE              (+ WM_USER 57))
(define-constant TB_GETBUTTONSIZE         (+ WM_USER 58))
(define-constant TB_SETBUTTONWIDTH        (+ WM_USER 59))
(define-constant TB_SETMAXTEXTROWS        (+ WM_USER 60))
(define-constant TB_GETTEXTROWS           (+ WM_USER 61))
(define-constant TB_GETBUTTONTEXT         TB_GETBUTTONTEXTW)
(define-constant TB_SAVERESTORE           TB_SAVERESTOREW)
(define-constant TB_ADDSTRING             TB_ADDSTRINGW)
(define-constant TB_GETOBJECT             (+ WM_USER 62))
(define-constant TB_GETHOTITEM            (+ WM_USER 71))
(define-constant TB_SETHOTITEM            (+ WM_USER 72))
(define-constant TB_SETANCHORHIGHLIGHT    (+ WM_USER 73))
(define-constant TB_GETANCHORHIGHLIGHT    (+ WM_USER 74))
(define-constant TB_MAPACCELERATORA       (+ WM_USER 78))
(define-constant TB_GETINSERTMARK         (+ WM_USER 79))
(define-constant TB_SETINSERTMARK         (+ WM_USER 80))
(define-constant TB_INSERTMARKHITTEST     (+ WM_USER 81))
(define-constant TB_MOVEBUTTON            (+ WM_USER 82))
(define-constant TB_GETMAXSIZE            (+ WM_USER 83))
(define-constant TB_SETEXTENDEDSTYLE      (+ WM_USER 84))
(define-constant TB_GETEXTENDEDSTYLE      (+ WM_USER 85))
(define-constant TB_GETPADDING            (+ WM_USER 86))
(define-constant TB_SETPADDING            (+ WM_USER 87))
(define-constant TB_SETINSERTMARKCOLOR    (+ WM_USER 88))
(define-constant TB_GETINSERTMARKCOLOR    (+ WM_USER 89))
(define-constant TB_MAPACCELERATORW       (+ WM_USER 90))
(define-constant TB_MAPACCELERATOR        TB_MAPACCELERATORW)
(define-constant TB_GETBUTTONINFOW        (+ WM_USER 63))
(define-constant TB_SETBUTTONINFOW        (+ WM_USER 64))
(define-constant TB_GETBUTTONINFOA        (+ WM_USER 65))
(define-constant TB_SETBUTTONINFOA        (+ WM_USER 66))
(define-constant TB_GETBUTTONINFO         TB_GETBUTTONINFOW)
(define-constant TB_SETBUTTONINFO         TB_SETBUTTONINFOW)
(define-constant TB_INSERTBUTTONW         (+ WM_USER 67))
(define-constant TB_ADDBUTTONSW           (+ WM_USER 68))
(define-constant TB_HITTEST               (+ WM_USER 69))
(define-constant TB_INSERTBUTTON          TB_INSERTBUTTONW)
(define-constant TB_ADDBUTTONS            TB_ADDBUTTONSW)
(define-constant TB_SETDRAWTEXTFLAGS      (+ WM_USER 70))
(define-constant TB_GETSTRINGW            (+ WM_USER 91))
(define-constant TB_GETSTRINGA            (+ WM_USER 92))
(define-constant TB_GETSTRING             TB_GETSTRINGW )
(define-constant TB_SETHOTITEM2           (+ WM_USER 94))
(define-constant TB_SETLISTGAP            (+ WM_USER 96))
(define-constant TB_GETIMAGELISTCOUNT     (+ WM_USER 98))
(define-constant TB_GETIDEALSIZE          (+ WM_USER 99))
(define-constant TB_GETMETRICS            (+ WM_USER 101))
(define-constant TB_SETMETRICS            (+ WM_USER 102))
(define-constant TB_GETITEMDROPDOWNRECT   (+ WM_USER 103))
(define-constant TB_SETPRESSEDIMAGELIST   (+ WM_USER 104))
(define-constant TB_GETPRESSEDIMAGELIST   (+ WM_USER 105))
