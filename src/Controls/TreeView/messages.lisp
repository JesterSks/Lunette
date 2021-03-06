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

(in-package :Lunette.Controls.TreeView)

(define-constant TV_FIRST                               #x1100)

(define-constant TVM_INSERTITEMA               (+ TV_FIRST  0))
(define-constant TVM_INSERTITEMW               (+ TV_FIRST 50))
(define-constant TVM_INSERTITEM                TVM_INSERTITEMW)
(define-constant TVM_DELETEITEM                (+ TV_FIRST  1))
(define-constant TVM_EXPAND                    (+ TV_FIRST  2))
(define-constant TVM_GETITEMRECT               (+ TV_FIRST  4))
(define-constant TVM_GETCOUNT                  (+ TV_FIRST  5))
(define-constant TVM_GETINDENT                 (+ TV_FIRST  6))
(define-constant TVM_SETINDENT                 (+ TV_FIRST  7))
(define-constant TVM_GETIMAGELIST              (+ TV_FIRST  8))
(define-constant TVM_SETIMAGELIST              (+ TV_FIRST  9))
(define-constant TVM_GETNEXTITEM               (+ TV_FIRST 10))
(define-constant TVM_SELECTITEM                (+ TV_FIRST 11))
(define-constant TVM_GETITEMA                  (+ TV_FIRST 12))
(define-constant TVM_GETITEMW                  (+ TV_FIRST 62))
(define-constant TVM_GETITEM                      TVM_GETITEMW)
(define-constant TVM_SETITEMA                  (+ TV_FIRST 13))
(define-constant TVM_SETITEMW                  (+ TV_FIRST 63))
(define-constant TVM_SETITEM                      TVM_SETITEMW)
(define-constant TVM_EDITLABELA                (+ TV_FIRST 14))
(define-constant TVM_EDITLABELW                (+ TV_FIRST 65))
(define-constant TVM_EDITLABEL                  TVM_EDITLABELW)
(define-constant TVM_GETEDITCONTROL            (+ TV_FIRST 15))
(define-constant TVM_GETVISIBLECOUNT           (+ TV_FIRST 16))
(define-constant TVM_HITTEST                   (+ TV_FIRST 17))
(define-constant TVM_CREATEDRAGIMAGE           (+ TV_FIRST 18))
(define-constant TVM_SORTCHILDREN              (+ TV_FIRST 19))
(define-constant TVM_ENSUREVISIBLE             (+ TV_FIRST 20))
(define-constant TVM_SORTCHILDRENCB            (+ TV_FIRST 21))
(define-constant TVM_ENDEDITLABELNOW           (+ TV_FIRST 22))
(define-constant TVM_GETISEARCHSTRINGA         (+ TV_FIRST 23))
(define-constant TVM_GETISEARCHSTRINGW         (+ TV_FIRST 64))
(define-constant TVM_GETISEARCHSTRING    TVM_GETISEARCHSTRINGW)
(define-constant TVM_SETTOOLTIPS               (+ TV_FIRST 24))
(define-constant TVM_GETTOOLTIPS               (+ TV_FIRST 25))
(define-constant TVM_SETINSERTMARK             (+ TV_FIRST 26))
(define-constant TVM_SETUNICODEFORMAT     CCM_SETUNICODEFORMAT)
(define-constant TVM_GETUNICODEFORMAT     CCM_GETUNICODEFORMAT)
(define-constant TVM_SETITEMHEIGHT             (+ TV_FIRST 27))
(define-constant TVM_GETITEMHEIGHT             (+ TV_FIRST 28))
(define-constant TVM_SETBKCOLOR                (+ TV_FIRST 29))
(define-constant TVM_SETTEXTCOLOR              (+ TV_FIRST 30))
(define-constant TVM_GETBKCOLOR                (+ TV_FIRST 31))
(define-constant TVM_GETTEXTCOLOR              (+ TV_FIRST 32))
(define-constant TVM_SETSCROLLTIME             (+ TV_FIRST 33))
(define-constant TVM_GETSCROLLTIME             (+ TV_FIRST 34))
(define-constant TVM_SETINSERTMARKCOLOR        (+ TV_FIRST 37))
(define-constant TVM_GETINSERTMARKCOLOR        (+ TV_FIRST 38))
(define-constant TVM_GETITEMSTATE              (+ TV_FIRST 39))
(define-constant TVM_SETLINECOLOR              (+ TV_FIRST 40))
(define-constant TVM_GETLINECOLOR              (+ TV_FIRST 41))
(define-constant TVM_MAPACCIDTOHTREEITEM       (+ TV_FIRST 42))
(define-constant TVM_MAPHTREEITEMTOACCID       (+ TV_FIRST 43))
(define-constant TVM_SETEXTENDEDSTYLE          (+ TV_FIRST 44))
(define-constant TVM_GETEXTENDEDSTYLE          (+ TV_FIRST 45))
(define-constant TVM_SETAUTOSCROLLINFO         (+ TV_FIRST 59))
(define-constant TVM_GETSELECTEDCOUNT          (+ TV_FIRST 70))
(define-constant TVM_SHOWINFOTIP               (+ TV_FIRST 71))
(define-constant TVM_GETITEMPARTRECT           (+ TV_FIRST 72))

(define-constant TVN_FIRST (- 0 400))

(define-constant TVN_SELCHANGINGA       (mask-field (byte 32 0) (- TVN_FIRST  1)))
(define-constant TVN_SELCHANGINGW       (mask-field (byte 32 0) (- TVN_FIRST 50)))
(define-constant TVN_SELCHANGING                                 TVN_SELCHANGINGW)
(define-constant TVN_SELCHANGEDA        (mask-field (byte 32 0) (- TVN_FIRST  2)))
(define-constant TVN_SELCHANGEDW        (mask-field (byte 32 0) (- TVN_FIRST 51)))
(define-constant TVN_SELCHANGED                                   TVN_SELCHANGEDW)
(define-constant TVN_GETDISPINFOA       (mask-field (byte 32 0) (- TVN_FIRST  3)))
(define-constant TVN_GETDISPINFOW       (mask-field (byte 32 0) (- TVN_FIRST 52)))
(define-constant TVN_GETDISPINFO                                 TVN_GETDISPINFOW)
(define-constant TVN_SETDISPINFOA       (mask-field (byte 32 0) (- TVN_FIRST  4)))
(define-constant TVN_SETDISPINFOW       (mask-field (byte 32 0) (- TVN_FIRST 53)))
(define-constant TVN_SETDISPINFO                                 TVN_SETDISPINFOW)
(define-constant TVN_ITEMEXPANDINGA     (mask-field (byte 32 0) (- TVN_FIRST  5)))
(define-constant TVN_ITEMEXPANDINGW     (mask-field (byte 32 0) (- TVN_FIRST 54)))
(define-constant TVN_ITEMEXPANDING                             TVN_ITEMEXPANDINGW)
(define-constant TVN_ITEMEXPANDEDA      (mask-field (byte 32 0) (- TVN_FIRST  6)))
(define-constant TVN_ITEMEXPANDEDW      (mask-field (byte 32 0) (- TVN_FIRST 55)))
(define-constant TVN_ITEMEXPANDED                               TVN_ITEMEXPANDEDW)
(define-constant TVN_BEGINDRAGA         (mask-field (byte 32 0) (- TVN_FIRST  7)))
(define-constant TVN_BEGINDRAGW         (mask-field (byte 32 0) (- TVN_FIRST 56)))
(define-constant TVN_BEGINDRAG                                     TVN_BEGINDRAGW)
(define-constant TVN_BEGINRDRAGA        (mask-field (byte 32 0) (- TVN_FIRST  8)))
(define-constant TVN_BEGINRDRAGW        (mask-field (byte 32 0) (- TVN_FIRST 57)))
(define-constant TVN_BEGINRDRAG                                   TVN_BEGINRDRAGW)
(define-constant TVN_DELETEITEMA        (mask-field (byte 32 0) (- TVN_FIRST  9)))
(define-constant TVN_DELETEITEMW        (mask-field (byte 32 0) (- TVN_FIRST 58)))
(define-constant TVN_DELETEITEM                                   TVN_DELETEITEMW)
(define-constant TVN_BEGINLABELEDITA    (mask-field (byte 32 0) (- TVN_FIRST 10)))
(define-constant TVN_BEGINLABELEDITW    (mask-field (byte 32 0) (- TVN_FIRST 59)))
(define-constant TVN_BEGINLABELEDIT                           TVN_BEGINLABELEDITW)
(define-constant TVN_ENDLABELEDITA      (mask-field (byte 32 0) (- TVN_FIRST 11)))
(define-constant TVN_ENDLABELEDITW      (mask-field (byte 32 0) (- TVN_FIRST 60)))
(define-constant TVN_ENDLABELEDIT                               TVN_ENDLABELEDITW)
(define-constant TVN_KEYDOWN            (mask-field (byte 32 0) (- TVN_FIRST 12)))
(define-constant TVN_GETINFOTIPA        (mask-field (byte 32 0) (- TVN_FIRST 13)))
(define-constant TVN_GETINFOTIPW        (mask-field (byte 32 0) (- TVN_FIRST 14)))
(define-constant TVN_GETINFOTIP                                 TVN_GETINFOTIPW)
(define-constant TVN_SINGLEEXPAND       (mask-field (byte 32 0) (- TVN_FIRST 15)))
(define-constant TVN_ITEMCHANGINGA      (mask-field (byte 32 0) (- TVN_FIRST 16)))
(define-constant TVN_ITEMCHANGINGW      (mask-field (byte 32 0) (- TVN_FIRST 17)))
(define-constant TVN_ITEMCHANGING                               TVN_ITEMCHANGINGW)
(define-constant TVN_ITEMCHANGEDA       (mask-field (byte 32 0) (- TVN_FIRST 18)))
(define-constant TVN_ITEMCHANGEDW       (mask-field (byte 32 0) (- TVN_FIRST 19)))
(define-constant TVN_ITEMCHANGED                                 TVN_ITEMCHANGEDW)
(define-constant TVN_ASYNCDRAW          (mask-field (byte 32 0) (- TVN_FIRST 20)))

(define-constant TVE_COLLAPSE      #x0001)
(define-constant TVE_EXPAND        #x0002)
(define-constant TVE_TOGGLE        #x0003)
(define-constant TVE_EXPANDPARTIAL #x4000)
(define-constant TVE_COLLAPSERESET #x8000)
