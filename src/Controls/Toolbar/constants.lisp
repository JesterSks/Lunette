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

(define-constant TOOLBARCLASSNAME "ToolbarWindow32" :test #'string=)

(define-constant TBSTYLE_TOOLTIPS     #x0100)
(define-constant TBSTYLE_WRAPABLE     #x0200)
(define-constant TBSTYLE_ALTDRAG      #x0400)
(define-constant TBSTYLE_FLAT         #x0800)
(define-constant TBSTYLE_LIST         #x1000)
(define-constant TBSTYLE_CUSTOMERASE  #x2000)
(define-constant TBSTYLE_REGISTERDROP #x4000)
(define-constant TBSTYLE_TRANSPARENT  #x8000)

(define-constant TBSTATE_CHECKED       #x01)
(define-constant TBSTATE_PRESSED       #x02)
(define-constant TBSTATE_ENABLED       #x04)
(define-constant TBSTATE_HIDDEN        #x08)
(define-constant TBSTATE_INDETERMINATE #x10)
(define-constant TBSTATE_WRAP          #x20)
(define-constant TBSTATE_ELLIPSES      #x40)
(define-constant TBSTATE_MARKED        #x80)

(define-constant BTNS_BUTTON         #x0000)
(define-constant BTNS_SEP            #x0001)
(define-constant BTNS_CHECK          #x0002)
(define-constant BTNS_GROUP          #x0004)
(define-constant BTNS_CHECKGROUP     (logior BTNS_GROUP BTNS_CHECK))
(define-constant BTNS_DROPDOWN       #x0008)
(define-constant BTNS_AUTOSIZE       #x0010)
(define-constant BTNS_NOPREFIX       #x0020)
(define-constant BTNS_SHOWTEXT       #x0040)
(define-constant BTNS_WHOLEDROPDOWN  #x0080)
