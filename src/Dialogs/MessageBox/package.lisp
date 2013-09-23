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

(defpackage :Lunette.Dialogs.MessageBox
  (:use :common-lisp
        :cffi
        :alexandria
        :Lunette.System)
  (:export #:MB_OK
           #:MB_OKCANCEL
           #:MB_ABORTRETRYIGNORE
           #:MB_YESNOCANCEL
           #:MB_YESNO
           #:MB_RETRYCANCEL
           #:MB_CANCELTRYCONTINUE
           #:MB_ICONHAND
           #:MB_ICONQUESTION
           #:MB_ICONEXCLAMATION
           #:MB_ICONASTERISK
           #:MB_USERICON
           #:MB_ICONWARNING
           #:MB_ICONERROR
           #:MB_ICONINFORMATION
           #:MB_ICONSTOP
           #:MB_DEFBUTTON1
           #:MB_DEFBUTTON2
           #:MB_DEFBUTTON3
           #:MB_DEFBUTTON4
           #:MB_APPLMODAL
           #:MB_SYSTEMMODAL
           #:MB_TASKMODAL
           #:MB_HELP
           #:MB_NOFOCUS
           #:MB_SETFOREGROUND
           #:MB_DEFAULT_DESKTOP_ONLY
           #:MB_TOPMOST
           #:MB_RIGHT
           #:MB_RTLREADING
           #:MB_SERVICE_NOTIFICATION
           #:MB_SERVICE_NOTIFICATION_NT3X
           #:MB_TYPEMASK
           #:MB_ICONMASK
           #:MB_DEFMASK
           #:MB_MODEMASK
           #:MB_MISCMASK

           #:MessageBox
           #:message-box))
