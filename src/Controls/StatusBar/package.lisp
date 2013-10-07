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

(defpackage :Lunette.Controls.StatusBar
  (:use :common-lisp
        :Lunette.Controls)
  (:import-from :alexandria
                #:define-constant)
  (:import-from :Lunette.Messages
                #:WM_USER)
  (:import-from :Lunette.Controls
                #:CCM_SETUNICODEFORMAT
                #:CCM_GETUNICODEFORMAT
                #:CCM_SETBKCOLOR)
  (:export #:STATUSCLASSNAME

           #:SB_GETTEXT
           #:SB_SETTEXT
           #:SB_GETTEXTLENGTH

           #:SB_SETPARTS
           #:SB_GETPARTS
           #:SB_GETBORDERS
           #:SB_SETMINHEIGHT
           #:SB_SIMPLE
           #:SB_GETRECT
           #:SB_ISSIMPLE
           #:SB_SETICON
           #:SB_SETTIPTEXT
           #:SB_GETTIPTEXT
           #:SB_GETICON
           #:SB_SETUNICODEFORMAT
           #:SB_GETUNICODEFORMAT
           #:SBT_OWNERDRAW
           #:SBT_NOBORDERS
           #:SBT_POPOUT
           #:SBT_RTLREADING
           #:SBT_NOTABPARSING
           #:SB_SETBKCOLOR))
