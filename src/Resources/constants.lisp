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

(in-package :Lunette)

;;; Built-in Icons
(define-constant IDI_APPLICATION (make-pointer 32512) :test #'pointer-eq)
(define-constant IDI_HAND        (make-pointer 32513) :test #'pointer-eq)
(define-constant IDI_QUESTION    (make-pointer 32514) :test #'pointer-eq)
(define-constant IDI_EXCLAMATION (make-pointer 32515) :test #'pointer-eq)
(define-constant IDI_ASTERISK    (make-pointer 32516) :test #'pointer-eq)
(define-constant IDI_WINLOGO     (make-pointer 32517) :test #'pointer-eq)
(define-constant IDI_SHIELD      (make-pointer 32518) :test #'pointer-eq)
(define-constant IDI_WARNING     IDI_EXCLAMATION)
(define-constant IDI_ERROR       IDI_HAND)
(define-constant IDI_INFORMATION IDI_ASTERISK)

;;; Built-in Cursors
(define-constant IDC_ARROW       (make-pointer 32512) :test #'pointer-eq)
(define-constant IDC_IBEAM       (make-pointer 32513) :test #'pointer-eq)
(define-constant IDC_WAIT        (make-pointer 32514) :test #'pointer-eq)
(define-constant IDC_CROSS       (make-pointer 32515) :test #'pointer-eq)
(define-constant IDC_UPARROW     (make-pointer 32516) :test #'pointer-eq)
(define-constant IDC_SIZE        (make-pointer 32640) :test #'pointer-eq)
(define-constant IDC_ICON        (make-pointer 32641) :test #'pointer-eq)
(define-constant IDC_SIZENWSE    (make-pointer 32642) :test #'pointer-eq)
(define-constant IDC_SIZENESW    (make-pointer 32643) :test #'pointer-eq)
(define-constant IDC_SIZEWE      (make-pointer 32644) :test #'pointer-eq)
(define-constant IDC_SIZENS      (make-pointer 32645) :test #'pointer-eq)
(define-constant IDC_SIZEALL     (make-pointer 32646) :test #'pointer-eq)
(define-constant IDC_NO          (make-pointer 32648) :test #'pointer-eq)
(define-constant IDC_HAND        (make-pointer 32649) :test #'pointer-eq)
(define-constant IDC_APPSTARTING (make-pointer 32650) :test #'pointer-eq)
(define-constant IDC_HELP        (make-pointer 32651) :test #'pointer-eq)
