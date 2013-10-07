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

(defpackage :Lunette.Dialogs.FileName
  (:use :common-lisp
        :cffi
        :alexandria
        :Lunette.System)
  (:export #:OFN
           #:lStructSize
           #:hwndOwner
           #:hInstance
           #:lpstrFilter
           #:lpstrCustomFilter
           #:nMaxCustFilter
           #:nFilterIndex
           #:lpstrFile
           #:nMaxFile
           #:lpstrFileTitle
           #:nMaxFileTitle
           #:lpstrInitialDir
           #:lpstrTitle
           #:Flags
           #:nFileOffset
           #:nFileExtension
           #:lpstrDefExt
           #:lCustData
           #:lpfnHook
           #:lpTemplateName
           #:pvRexerved
           #:dwReserved
           #:FlagsEx
           #:OPENFILENAME
           #:LPOPENFILENAME

           #:OFN_READONLY
           #:OFN_OVERWRITEPROMPT
           #:OFN_HIDEREADONLY
           #:OFN_NOCHANGEDIR
           #:OFN_SHOWHELP
           #:OFN_ENABLEHOOK
           #:OFN_ENABLETEMPLATE
           #:OFN_ENABLETEMPLATEHANDLE
           #:OFN_NOVALIDATE
           #:OFN_ALLOWMULTISELECT
           #:OFN_EXTENSIONDIFFERENT
           #:OFN_PATHMUSTEXIST
           #:OFN_FILEMUSTEXIST
           #:OFN_CREATEPROMPT
           #:OFN_SHAREAWARE
           #:OFN_NOREADONLYRETURN
           #:OFN_NOTESTFILECREATE
           #:OFN_NONETWORKBUTTON
           #:OFN_NOLONGNAMES
           #:OFN_EXPLORER
           #:OFN_NODEREFERENCELINKS
           #:OFN_LONGNAMES
           #:OFN_ENABLEINCLUDENOTIFY
           #:OFN_ENABLESIZING
           #:OFN_DONTADDTORECENT
           #:OFN_FORCESHOWHIDDEN
           #:OFN_EX_NOPLACESBAR
           #:OFN_SHAREFALLTHROUGH
           #:OFN_SHARENOWARN
           #:OFN_SHAREWARN

           #:GetOpenFileName
           #:GetSaveFileName))
