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

(defpackage :Lunette
  (:use #:common-lisp)
  (:import-from :cffi
                #:defcfun
                #:defctype
                #:defcstruct
                #:defcunion
                #:null-pointer
                #:null-pointer-p
                #:make-pointer
                #:pointer-eq
                #:define-foreign-library
                #:use-foreign-library
                #:with-foreign-strings
                #:with-foreign-string
                #:with-foreign-object
                #:foreign-slot-value
                #:mem-ref
                #:foreign-string-to-lisp)
  (:import-from :alexandria
                #:define-constant))
