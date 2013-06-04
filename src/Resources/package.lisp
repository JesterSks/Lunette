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

(defpackage :Lunette.Resources
  (:use #:common-lisp
        #:Lunette.System)
  (:import-from :cffi
                #:defcfun
                #:make-pointer
                #:pointer-eq)
  (:import-from :alexandria
                #:define-constant)
  (:export #:IDI_APPLICATION
           #:IDI_HAND
           #:IDI_QUESTION
           #:IDI_EXCLAMATION
           #:IDI_ASTERISK
           #:IDI_WINLOGO
           #:IDI_SHIELD
           #:IDI_WARNING
           #:IDI_ERROR
           #:IDI_INFORMATION

           #:IDC_ARROW
           #:IDC_IBEAM
           #:IDC_WAIT
           #:IDC_CROSS
           #:IDC_UPARROW
           #:IDC_SIZE
           #:IDC_ICON
           #:IDC_SIZENWSE
           #:IDC_SIZENESW
           #:IDC_SIZEWE
           #:IDC_SIZENS
           #:IDC_SIZEALL
           #:IDC_NO
           #:IDC_HAND
           #:IDC_APPSTARTING
           #:IDC_HELP

           #:LoadIcon
           #:LoadCursor))
