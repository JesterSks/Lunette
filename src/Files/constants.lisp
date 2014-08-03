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

(define-constant MAX_PATH 260)

(define-constant GENERIC_READ    #x80000000)
(define-constant GENERIC_WRITE   #x40000000)
(define-constant GENERIC_EXECUTE #x20000000)
(define-constant GENERIC_ALL     #x10000000)

(define-constant FILE_SHARE_READ   #x00000001)
(define-constant FILE_SHARE_WRITE  #x00000002)
(define-constant FILE_SHARE_DELETE #x00000004)

(define-constant CREATE_NEW          1)
(define-constant CREATE_ALWAYS       2)
(define-constant OPEN_EXISTING       3)
(define-constant OPEN_ALWAYS         4)
(define-constant TRUNCATE_EXISTING   5)

;;; INVALID_HANDLE_VALUE is supposed to be -1 but CFFI can't handle
;;; the fact that negative numbers are just an interpretation of a positive number
(define-constant INVALID_HANDLE_VALUE     (make-pointer #xFFFFFFFF) :test #'pointer-eq)
(define-constant INVALID_FILE_SIZE        #xFFFFFFFF)
(define-constant INVALID_SET_FILE_POINTER -1)
(define-constant INVALID_FILE_ATTRIBUTES  -1)
