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

(define-constant FORMAT_MESSAGE_ALLOCATE_BUFFER #x00000100)
(define-constant FORMAT_MESSAGE_FROM_SYSTEM     #x00001000)
(define-constant FORMAT_MESSAGE_IGNORE_INSERTS  #x00000200)

(define-constant ERROR_CLASS_ALREADY_EXISTS     1410)
