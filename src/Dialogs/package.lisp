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

(defpackage :Lunette.Dialogs
  (:use #:common-lisp
        #:Lunette.System)
  (:import-from :Lunette.Messages
                #:LPMSG)
  (:import-from :Lunette.Graphics
                #:LPRECT)
  (:import-from :cffi
                #:defcfun
                #:defcstruct
                #:defctype
                #:with-foreign-strings
                #:with-foreign-object
                #:null-pointer
                #:null-pointer-p
                #:foreign-slot-value)
  (:import-from :alexandria
                #:define-constant)
  (:export #:IDOK
           #:IDCANCEL
           #:IDABORT
           #:IDRETRY
           #:IDIGNORE
           #:IDYES
           #:IDNO
           #:IDCLOSE
           #:IDHELP
           #:IDTRYAGAIN
           #:IDCONTINUE
           #:IDTIMEOUT

           #:DLGTEMPLATE
           #:style
           #:dwExtendedStyle
           #:cdit
           #:LPDLGTEMPLATE
           #:LPCDLGTEMPLATE

           #:GetDlgItem
           #:SetDlgItemInt
           #:GetDlgItemInt
           #:GetDlgItemText
           #:SetDlgItemText
           #:GetDialogBaseUnits
           #:EndDialog
           #:MapDialogRect
           #:DiglogBoxParam
           #:CreateDialogParam
           #:SendDlgItemMessage
           #:IsDialogMessage))
