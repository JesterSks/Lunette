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

(in-package :Lunette.Dialogs.MessageBox)

;;; MessageBox() Flags
(define-constant MB_OK                        #x00000000)
(define-constant MB_OKCANCEL                  #x00000001)
(define-constant MB_ABORTRETRYIGNORE          #x00000002)
(define-constant MB_YESNOCANCEL               #x00000003)
(define-constant MB_YESNO                     #x00000004)
(define-constant MB_RETRYCANCEL               #x00000005)
(define-constant MB_CANCELTRYCONTINUE         #x00000006)
(define-constant MB_ICONHAND                  #x00000010)
(define-constant MB_ICONQUESTION              #x00000020)
(define-constant MB_ICONEXCLAMATION           #x00000030)
(define-constant MB_ICONASTERISK              #x00000040)
(define-constant MB_USERICON                  #x00000080)
(define-constant MB_ICONWARNING               MB_ICONEXCLAMATION)
(define-constant MB_ICONERROR                 MB_ICONHAND)
(define-constant MB_ICONINFORMATION           MB_ICONASTERISK)
(define-constant MB_ICONSTOP                  MB_ICONHAND)
(define-constant MB_DEFBUTTON1                #x00000000)
(define-constant MB_DEFBUTTON2                #x00000100)
(define-constant MB_DEFBUTTON3                #x00000200)
(define-constant MB_DEFBUTTON4                #x00000300)
(define-constant MB_APPLMODAL                 #x00000000)
(define-constant MB_SYSTEMMODAL               #x00001000)
(define-constant MB_TASKMODAL                 #x00002000)
(define-constant MB_HELP                      #x00004000)
(define-constant MB_NOFOCUS                   #x00008000)
(define-constant MB_SETFOREGROUND             #x00010000)
(define-constant MB_DEFAULT_DESKTOP_ONLY      #x00020000)
(define-constant MB_TOPMOST                   #x00040000)
(define-constant MB_RIGHT                     #x00080000)
(define-constant MB_RTLREADING                #x00100000)
(define-constant MB_SERVICE_NOTIFICATION      #x00200000)
(define-constant MB_SERVICE_NOTIFICATION_NT3X #x00040000)
(define-constant MB_TYPEMASK                  #x0000000F)
(define-constant MB_ICONMASK                  #x000000F0)
(define-constant MB_DEFMASK                   #x00000F00)
(define-constant MB_MODEMASK                  #x00003000)
(define-constant MB_MISCMASK                  #x0000C000)
