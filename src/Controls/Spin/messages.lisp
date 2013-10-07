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

(in-package :Lunette.Controls.Spin)

(define-constant UDM_SETRANGE            (+ WM_USER 101))
(define-constant UDM_GETRANGE            (+ WM_USER 102))
(define-constant UDM_SETPOS              (+ WM_USER 103))
(define-constant UDM_GETPOS              (+ WM_USER 104))
(define-constant UDM_SETBUDDY            (+ WM_USER 105))
(define-constant UDM_GETBUDDY            (+ WM_USER 106))
(define-constant UDM_SETACCEL            (+ WM_USER 107))
(define-constant UDM_GETACCEL            (+ WM_USER 108))
(define-constant UDM_SETBASE             (+ WM_USER 109))
(define-constant UDM_GETBASE             (+ WM_USER 110))
(define-constant UDM_SETRANGE32          (+ WM_USER 111))
(define-constant UDM_GETRANGE32          (+ WM_USER 112))
(define-constant UDM_SETUNICODEFORMAT    CCM_SETUNICODEFORMAT)
(define-constant UDM_GETUNICODEFORMAT    CCM_GETUNICODEFORMAT)
(define-constant UDM_SETPOS32            (+ WM_USER 113))
(define-constant UDM_GETPOS32            (+ WM_USER 114))
