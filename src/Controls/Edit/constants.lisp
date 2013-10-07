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

(in-package :Lunette.Controls.Edit)

;;; Edit Control Styles
(define-constant ES_LEFT        #x0000)
(define-constant ES_CENTER      #x0001)
(define-constant ES_RIGHT       #x0002)
(define-constant ES_MULTILINE   #x0004)
(define-constant ES_UPPERCASE   #x0008)
(define-constant ES_LOWERCASE   #x0010)
(define-constant ES_PASSWORD    #x0020)
(define-constant ES_AUTOVSCROLL #x0040)
(define-constant ES_AUTOHSCROLL #x0080)
(define-constant ES_NOHIDESEL   #x0100)
(define-constant ES_OEMCONVERT  #x0400)
(define-constant ES_READONLY    #x0800)
(define-constant ES_WANTRETURN  #x1000)
(define-constant ES_NUMBER      #x2000)
