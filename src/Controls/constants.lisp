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

(in-package :Lunette.Controls)

;;; Button Control Styles
(define-constant BS_PUSHBUTTON       #x00000000)
(define-constant BS_DEFPUSHBUTTON    #x00000001)
(define-constant BS_CHECKBOX         #x00000002)
(define-constant BS_AUTOCHECKBOX     #x00000003)
(define-constant BS_RADIOBUTTON      #x00000004)
(define-constant BS_3STATE           #x00000005)
(define-constant BS_AUTO3STATE       #x00000006)
(define-constant BS_GROUPBOX         #x00000007)
(define-constant BS_USERBUTTON       #x00000008)
(define-constant BS_AUTORADIOBUTTON  #x00000009)
(define-constant BS_PUSHBOX          #x0000000A)
(define-constant BS_OWNERDRAW        #x0000000B)
(define-constant BS_TYPEMASK         #x0000000F)
(define-constant BS_LEFTTEXT         #x00000020)
(define-constant BS_TEXT             #x00000000)
(define-constant BS_ICON             #x00000040)
(define-constant BS_BITMAP           #x00000080)
(define-constant BS_LEFT             #x00000100)
(define-constant BS_RIGHT            #x00000200)
(define-constant BS_CENTER           #x00000300)
(define-constant BS_TOP              #x00000400)
(define-constant BS_BOTTOM           #x00000800)
(define-constant BS_VCENTER          #x00000C00)
(define-constant BS_PUSHLIKE         #x00001000)
(define-constant BS_MULTILINE        #x00002000)
(define-constant BS_NOTIFY           #x00004000)
(define-constant BS_FLAT             #x00008000)
(define-constant BS_RIGHTBUTTON      BS_LEFTTEXT)
