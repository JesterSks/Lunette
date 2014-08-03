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

;;; Listbox messages
(define-constant LB_ADDSTRING            #x0180)
(define-constant LB_INSERTSTRING         #x0181)
(define-constant LB_DELETESTRING         #x0182)
(define-constant LB_SELITEMRANGEEX       #x0183)
(define-constant LB_RESETCONTENT         #x0184)
(define-constant LB_SETSEL               #x0185)
(define-constant LB_SETCURSEL            #x0186)
(define-constant LB_GETSEL               #x0187)
(define-constant LB_GETCURSEL            #x0188)
(define-constant LB_GETTEXT              #x0189)
(define-constant LB_GETTEXTLEN           #x018A)
(define-constant LB_GETCOUNT             #x018B)
(define-constant LB_SELECTSTRING         #x018C)
(define-constant LB_DIR                  #x018D)
(define-constant LB_GETTOPINDEX          #x018E)
(define-constant LB_FINDSTRING           #x018F)
(define-constant LB_GETSELCOUNT          #x0190)
(define-constant LB_GETSELITEMS          #x0191)
(define-constant LB_SETTABSTOPS          #x0192)
(define-constant LB_GETHORIZONTALEXTENT  #x0193)
(define-constant LB_SETHORIZONTALEXTENT  #x0194)
(define-constant LB_SETCOLUMNWIDTH       #x0195)
(define-constant LB_ADDFILE              #x0196)
(define-constant LB_SETTOPINDEX          #x0197)
(define-constant LB_GETITEMRECT          #x0198)
(define-constant LB_GETITEMDATA          #x0199)
(define-constant LB_SETITEMDATA          #x019A)
(define-constant LB_SELITEMRANGE         #x019B)
(define-constant LB_SETANCHORINDEX       #x019C)
(define-constant LB_GETANCHORINDEX       #x019D)
(define-constant LB_SETCARETINDEX        #x019E)
(define-constant LB_GETCARETINDEX        #x019F)
(define-constant LB_SETITEMHEIGHT        #x01A0)
(define-constant LB_GETITEMHEIGHT        #x01A1)
(define-constant LB_FINDSTRINGEXACT      #x01A2)
(define-constant LB_SETLOCALE            #x01A5)
(define-constant LB_GETLOCALE            #x01A6)
(define-constant LB_SETCOUNT             #x01A7)
(define-constant LB_INITSTORAGE          #x01A8)
(define-constant LB_ITEMFROMPOINT        #x01A9)
(define-constant LB_MULTIPLEADDSTRING    #x01B1)
(define-constant LB_GETLISTBOXINFO       #x01B2)
(define-constant LB_MSGMAX               #x01B3)

;;; Listbox Notification Codes
(define-constant LBN_ERRSPACE  -2)
(define-constant LBN_SELCHANGE  1)
(define-constant LBN_DBLCLK     2)
(define-constant LBN_SELCANCEL  3)
(define-constant LBN_SETFOCUS   4)
(define-constant LBN_KILLFOCUS  5)
