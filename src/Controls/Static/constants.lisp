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

;;; Static Control Constants
(define-constant SS_LEFT             #x00000000)
(define-constant SS_CENTER           #x00000001)
(define-constant SS_RIGHT            #x00000002)
(define-constant SS_ICON             #x00000003)
(define-constant SS_BLACKRECT        #x00000004)
(define-constant SS_GRAYRECT         #x00000005)
(define-constant SS_WHITERECT        #x00000006)
(define-constant SS_BLACKFRAME       #x00000007)
(define-constant SS_GRAYFRAME        #x00000008)
(define-constant SS_WHITEFRAME       #x00000009)
(define-constant SS_USERITEM         #x0000000A)
(define-constant SS_SIMPLE           #x0000000B)
(define-constant SS_LEFTNOWORDWRAP   #x0000000C)
(define-constant SS_OWNERDRAW        #x0000000D)
(define-constant SS_BITMAP           #x0000000E)
(define-constant SS_ENHMETAFILE      #x0000000F)
(define-constant SS_ETCHEDHORZ       #x00000010)
(define-constant SS_ETCHEDVERT       #x00000011)
(define-constant SS_ETCHEDFRAME      #x00000012)
(define-constant SS_TYPEMASK         #x0000001F)
(define-constant SS_REALSIZECONTROL  #x00000040)
(define-constant SS_NOPREFIX         #x00000080)
(define-constant SS_NOTIFY           #x00000100)
(define-constant SS_CENTERIMAGE      #x00000200)
(define-constant SS_RIGHTJUST        #x00000400)
(define-constant SS_REALSIZEIMAGE    #x00000800)
(define-constant SS_SUNKEN           #x00001000)
(define-constant SS_EDITCONTROL      #x00002000)
(define-constant SS_ENDELLIPSIS      #x00004000)
(define-constant SS_PATHELLIPSIS     #x00008000)
(define-constant SS_WORDELLIPSIS     #x0000C000)
(define-constant SS_ELLIPSISMASK     #x0000C000)
