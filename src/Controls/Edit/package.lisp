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

(defpackage :Lunette.Controls.Edit
  (:use #:common-lisp)
  (:import-from :alexandria
                #:define-constant)
  (:export #:ES_LEFT
           #:ES_CENTER
           #:ES_RIGHT
           #:ES_MULTILINE
           #:ES_UPPERCASE
           #:ES_LOWERCASE
           #:ES_PASSWORD
           #:ES_AUTOVSCROLL
           #:ES_AUTOHSCROLL
           #:ES_NOHIDESEL
           #:ES_OEMCONVERT
           #:ES_READONLY
           #:ES_WANTRETURN
           #:ES_NUMBER

           #:EN_SETFOCUS
           #:EN_KILLFOCUS
           #:EN_CHANGE
           #:EN_UPDATE
           #:EN_ERRSPACE
           #:EN_MAXTEXT
           #:EN_HSCROLL
           #:EN_VSCROLL
           #:EN_ALIGN_LTR_EC
           #:EN_ALIGN_RTL_EC))
