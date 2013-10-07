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

(in-package :Lunette.Controls.ProgressBar)

(define-constant PBM_SETRANGE             (+ WM_USER 1))
(define-constant PBM_SETPOS               (+ WM_USER 2))
(define-constant PBM_DELTAPOS             (+ WM_USER 3))
(define-constant PBM_SETSTEP              (+ WM_USER 4))
(define-constant PBM_STEPIT               (+ WM_USER 5))
(define-constant PBM_SETRANGE32           (+ WM_USER 6))
(define-constant PBM_GETRANGE             (+ WM_USER 7))
(define-constant PBM_GETPOS               (+ WM_USER 8))
(define-constant PBM_SETBARCOLOR          (+ WM_USER 9))
(define-constant PBM_SETBKCOLOR          CCM_SETBKCOLOR)
