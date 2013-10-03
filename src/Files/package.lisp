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

(defpackage :Lunette.Files
  (:use #:common-lisp
        #:Lunette.System)
  (:import-from :cffi
                #:defcfun
                #:defcstruct
                #:defctype
                #:make-pointer
                #:pointer-eq)
  (:import-from :alexandria
                #:define-constant)
  (:export #:MAX_PATH

           #:GENERIC_READ
           #:GENERIC_WRITE
           #:GENERIC_EXECUTE
           #:GENERIC_ALL

           #:FILE_SHARE_READ
           #:FILE_SHARE_WRITE
           #:FILE_SHARE_DELETE

           #:CREATE_NEW
           #:CREATE_ALWAYS
           #:OPEN_EXISTING
           #:OPEN_ALWAYS
           #:TRUNCATE_EXISTING

           #:SECURITY_ATTRIBUTES
           #:nLength
           #:lpSecurityDescriptor
           #:bInheritHangle
           #:PSECURITY_ATTRIBUTES
           #:LPSECURITY_ATTRIBUTES

           #:GetCurrentDirectory
           #:SetCurrentDirectory
           #:CreateFile
           #:ReadFile))
