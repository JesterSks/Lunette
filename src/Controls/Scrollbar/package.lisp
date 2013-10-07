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

(defpackage :Lunette.Controls.Scrollbar
  (:use :common-lisp
        :cffi
        :alexandria
        :Lunette.System
        :Lunette.Controls)
  (:export #:SB_HORZ
           #:SB_VERT
           #:SB_CTL
           #:SB_BOTH

           #:SB_LINEUP
           #:SB_LINELEFT
           #:SB_LINEDOWN
           #:SB_LINERIGHT
           #:SB_PAGEUP
           #:SB_PAGELEFT
           #:SB_PAGEDOWN
           #:SB_PAGERIGHT
           #:SB_THUMBPOSITION
           #:SB_THUMBTRACK
           #:SB_TOP
           #:SB_LEFT
           #:SB_BOTTOM
           #:SB_RIGHT
           #:SB_ENDSCROLL

           #:SBM_SETPOS
           #:SBM_GETPOS
           #:SBM_SETRANGE
           #:SBM_SETRANGEREDRAW
           #:SBM_GETRANGE
           #:SBM_ENABLE_ARROWS
           #:SBM_SETSCROLLINFO
           #:SBM_GETSCROLLINFO
           #:SBM_GETSCROLLBARINFO

           #:SCROLLINFO
;;;           #:cbSize
           #:fMask
           #:nMin
           #:nMax
           #:nPage
           #:nPos
           #:nTrackPos
           #:LPSCROLLINFO
           #:LPCSCROLLINFO

           #:GetScrollInfo
           #:SetScrollInfo))
