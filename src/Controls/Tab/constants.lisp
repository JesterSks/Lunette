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

(in-package :Lunette.Controls.Tab)

(define-constant WC_TABCONTROL "SysTabControl32" :test #'string=)

(define-constant TCIF_TEXT       #x0001)
(define-constant TCIF_IMAGE      #x0002)
(define-constant TCIF_RTLREADING #x0004)
(define-constant TCIF_PARAM      #x0008)
(define-constant TCIF_STATE      #x0010)
