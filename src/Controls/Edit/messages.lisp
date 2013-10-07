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

;;; Edit Control Notification Codes
(define-constant EN_SETFOCUS     #x0100)
(define-constant EN_KILLFOCUS    #x0200)
(define-constant EN_CHANGE       #x0300)
(define-constant EN_UPDATE       #x0400)
(define-constant EN_ERRSPACE     #x0500)
(define-constant EN_MAXTEXT      #x0501)
(define-constant EN_HSCROLL      #x0601)
(define-constant EN_VSCROLL      #x0602)
(define-constant EN_ALIGN_LTR_EC #x0700)
(define-constant EN_ALIGN_RTL_EC #x0701)
