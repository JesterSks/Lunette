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

(defpackage :Lunette.Controls.Button
  (:use #:common-lisp)
  (:import-from :alexandria
                #:define-constant)
  (:export #:BS_PUSHBUTTON
           #:BS_DEFPUSHBUTTON
           #:BS_CHECKBOX
           #:BS_AUTOCHECKBOX
           #:BS_RADIOBUTTON
           #:BS_3STATE
           #:BS_AUTO3STATE
           #:BS_GROUPBOX
           #:BS_USERBUTTON
           #:BS_AUTORADIOBUTTON
           #:BS_PUSHBOX
           #:BS_OWNERDRAW
           #:BS_TYPEMASK
           #:BS_LEFTTEXT
           #:BS_TEXT
           #:BS_ICON
           #:BS_BITMAP
           #:BS_LEFT
           #:BS_RIGHT
           #:BS_CENTER
           #:BS_TOP
           #:BS_BOTTOM
           #:BS_VCENTER
           #:BS_PUSHLIKE
           #:BS_MULTILINE
           #:BS_NOTIFY
           #:BS_FLAT
           #:BS_RIGHTBUTTON))
