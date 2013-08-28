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

(defpackage :Lunette.Errors
  (:use #:common-lisp
        #:Lunette.System)
  (:import-from :cffi
                #:defcfun
                #:null-pointer
                #:with-foreign-object
                #:foreign-string-to-lisp
                #:mem-ref)
  (:import-from :alexandria
                #:define-constant)
  (:import-from :Lunette.Memory
                #:LocalFree)
  (:export #:FORMAT_MESSAGE_ALLOCATE_BUFFER
           #:FORMAT_MESSAGE_FROM_SYSTEM
           #:FORMAT_MESSAGE_IGNORE_INSERTS

           #:ERROR_CLASS_ALREADY_EXISTS

           #:GetLastError
           #:FormatMessage
           #:MessageBeep
           #:get-win-error-str
           #:get-last-error))
