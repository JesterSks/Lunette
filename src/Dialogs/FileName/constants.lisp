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

(in-package :Lunette.Dialogs.FileName)

;;; Open File Name Flags
(define-constant OFN_READONLY             #x00000001)
(define-constant OFN_OVERWRITEPROMPT      #x00000002)
(define-constant OFN_HIDEREADONLY         #x00000004)
(define-constant OFN_NOCHANGEDIR          #x00000008)
(define-constant OFN_SHOWHELP             #x00000010)
(define-constant OFN_ENABLEHOOK           #x00000020)
(define-constant OFN_ENABLETEMPLATE       #x00000040)
(define-constant OFN_ENABLETEMPLATEHANDLE #x00000080)
(define-constant OFN_NOVALIDATE           #x00000100)
(define-constant OFN_ALLOWMULTISELECT     #x00000200)
(define-constant OFN_EXTENSIONDIFFERENT   #x00000400)
(define-constant OFN_PATHMUSTEXIST        #x00000800)
(define-constant OFN_FILEMUSTEXIST        #x00001000)
(define-constant OFN_CREATEPROMPT         #x00002000)
(define-constant OFN_SHAREAWARE           #x00004000)
(define-constant OFN_NOREADONLYRETURN     #x00008000)
(define-constant OFN_NOTESTFILECREATE     #x00010000)
(define-constant OFN_NONETWORKBUTTON      #x00020000)
(define-constant OFN_NOLONGNAMES          #x00040000)
(define-constant OFN_EXPLORER             #x00080000)
(define-constant OFN_NODEREFERENCELINKS   #x00100000)
(define-constant OFN_LONGNAMES            #x00200000)
(define-constant OFN_ENABLEINCLUDENOTIFY  #x00400000)
(define-constant OFN_ENABLESIZING         #x00800000)
(define-constant OFN_DONTADDTORECENT      #x02000000)
(define-constant OFN_FORCESHOWHIDDEN      #x10000000)

;;; FlagsEx Values
(define-constant OFN_EX_NOPLACESBAR       #x00000001)

(define-constant OFN_SHAREFALLTHROUGH     2)
(define-constant OFN_SHARENOWARN          1)
(define-constant OFN_SHAREWARN            0)
