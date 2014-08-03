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

(define-constant UPDOWN_CLASS   "msctls_updown32" :test #'string=)

(define-constant UDS_WRAP        #x0001)
(define-constant UDS_SETBUDDYINT #x0002)
(define-constant UDS_ALIGNRIGHT  #x0004)
(define-constant UDS_ALIGNLEFT   #x0008)
(define-constant UDS_AUTOBUDDY   #x0010)
(define-constant UDS_ARROWKEYS   #x0020)
(define-constant UDS_HORZ        #x0040)
(define-constant UDS_NOTHOUSANDS #x0080)
(define-constant UDS_HOTTRACK    #x0100)
