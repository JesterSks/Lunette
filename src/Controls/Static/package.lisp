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

(defpackage :Lunette.Controls.Static
  (:use #:common-lisp)
  (:import-from :alexandria
                #:define-constant)
  (:export #:SS_LEFT
           #:SS_CENTER
           #:SS_RIGHT
           #:SS_ICON
           #:SS_BLACKRECT
           #:SS_GRAYRECT
           #:SS_WHITERECT
           #:SS_BLACKFRAME
           #:SS_GRAYFRAME
           #:SS_WHITEFRAME
           #:SS_USERITEM
           #:SS_SIMPLE
           #:SS_LEFTNOWORDWRAP
           #:SS_OWNERDRAW
           #:SS_BITMAP
           #:SS_ENHMETAFILE
           #:SS_ETCHEDHORZ
           #:SS_ETCHEDVERT
           #:SS_ETCHEDFRAME
           #:SS_TYPEMASK
           #:SS_REALSIZECONTROL
           #:SS_NOPREFIX
           #:SS_NOTIFY
           #:SS_CENTERIMAGE
           #:SS_RIGHTJUST
           #:SS_REALSIZEIMAGE
           #:SS_SUNKEN
           #:SS_EDITCONTROL
           #:SS_ENDELLIPSIS
           #:SS_PATHELLIPSIS
           #:SS_WORDELLIPSIS
           #:SS_ELLIPSISMASK))
