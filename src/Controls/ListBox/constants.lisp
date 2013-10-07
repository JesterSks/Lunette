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

(in-package :Lunette.Controls.ListBox)

;;; Listbox Return Values
(define-constant LB_OKAY      0)
(define-constant LB_ERR      -1)
(define-constant LB_ERRSPACE -2)

;;; Listbox Styles
(define-constant LBS_NOTIFY            #x0001)
(define-constant LBS_SORT              #x0002)
(define-constant LBS_NOREDRAW          #x0004)
(define-constant LBS_MULTIPLESEL       #x0008)
(define-constant LBS_OWNERDRAWFIXED    #x0010)
(define-constant LBS_OWNERDRAWVARIABLE #x0020)
(define-constant LBS_HASSTRINGS        #x0040)
(define-constant LBS_USETABSTOPS       #x0080)
(define-constant LBS_NOINTEGRALHEIGHT  #x0100)
(define-constant LBS_MULTICOLUMN       #x0200)
(define-constant LBS_WANTKEYBOARDINPUT #x0400)
(define-constant LBS_EXTENDEDSEL       #x0800)
(define-constant LBS_DISABLENOSCROLL   #x1000)
(define-constant LBS_NODATA            #x2000)
(define-constant LBS_NOSEL             #x4000)
(define-constant LBS_COMBOBOX          #x8000)
(define-constant LBS_STANDARD          (logior LBS_NOTIFY LBS_SORT
                                               WS_VSCROLL WS_BORDER))

;;; DlgDirList, DlgDirListComboBox flags values
(define-constant DDL_READWRITE #x0000)
(define-constant DDL_READONLY  #x0001)
(define-constant DDL_HIDDEN    #x0002)
(define-constant DDL_SYSTEM    #x0004)
(define-constant DDL_DIRECTORY #x0010)
(define-constant DDL_ARCHIVE   #x0020)

(define-constant DDL_POSTMSGS  #x2000)
(define-constant DDL_DRIVES    #x4000)
(define-constant DDL_EXCLUSIVE #x8000)
