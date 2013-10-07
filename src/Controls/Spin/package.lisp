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

(defpackage :Lunette.Controls.Spin
    (:use :common-lisp)
  (:import-from :alexandria
                #:define-constant)
  (:import-from :Lunette.Messages
                #:WM_USER)
  (:import-from :Lunette.Controls
                #:CCM_SETUNICODEFORMAT
                #:CCM_GETUNICODEFORMAT)
    (:export #:UPDOWN_CLASS

             #:UDS_WRAP
             #:UDS_SETBUDDYINT
             #:UDS_ALIGNRIGHT
             #:UDS_ALIGNLEFT
             #:UDS_AUTOBUDDY
             #:UDS_ARROWKEYS
             #:UDS_HORZ
             #:UDS_NOTHOUSANDS
             #:UDS_HOTTRACK

             #:UDM_SETRANGE
             #:UDM_GETRANGE
             #:UDM_SETPOS
             #:UDM_GETPOS
             #:UDM_SETBUDDY
             #:UDM_GETBUDDY
             #:UDM_SETACCEL
             #:UDM_GETACCEL
             #:UDM_SETBASE
             #:UDM_GETBASE
             #:UDM_SETRANGE32
             #:UDM_GETRANGE32
             #:UDM_SETUNICODEFORMAT
             #:UDM_GETUNICODEFORMAT
             #:UDM_SETPOS32
             #:UDM_GETPOS32))
