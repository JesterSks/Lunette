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

(define-constant WC_TREEVIEW "SysTreeView32" :test #'string=)

(define-constant TVS_HASBUTTONS              #x0001)
(define-constant TVS_HASLINES                #x0002)
(define-constant TVS_LINESATROOT             #x0004)
(define-constant TVS_EDITLABELS              #x0008)
(define-constant TVS_DISABLEDRAGDROP         #x0010)
(define-constant TVS_SHOWSELALWAYS           #x0020)
(define-constant TVS_RTLREADING              #x0040)
(define-constant TVS_NOTOOLTIPS              #x0080)
(define-constant TVS_CHECKBOXES              #x0100)
(define-constant TVS_TRACKSELECT             #x0200)
(define-constant TVS_SINGLEEXPAND            #x0400)
(define-constant TVS_INFOTIP                 #x0800)
(define-constant TVS_FULLROWSELECT           #x1000)
(define-constant TVS_NOSCROLL                #x2000)
(define-constant TVS_NONEVENHEIGHT           #x4000)
(define-constant TVS_NOHSCROLL               #x8000)
(define-constant TVS_EX_MULTISELECT          #x0002)
(define-constant TVS_EX_DOUBLEBUFFER         #x0004)
(define-constant TVS_EX_NOINDENTSTATE        #x0008)
(define-constant TVS_EX_RICHTOOLTIP          #x0010)
(define-constant TVS_EX_AUTOHSCROLL          #x0020)
(define-constant TVS_EX_FADEINOUTEXPANDOS    #x0040)
(define-constant TVS_EX_PARTIALCHECKBOXES    #x0080)
(define-constant TVS_EX_EXCLUSIONCHECKBOXES  #x0100)
(define-constant TVS_EX_DIMMEDCHECKBOXES     #x0200)
(define-constant TVS_EX_DRAWIMAGEASYNC       #x0400)

(define-constant TVI_ROOT  (make-pointer (mask-field (byte 32 0) (- #x10000))) :test #'pointer-eq)
(define-constant TVI_FIRST (make-pointer (mask-field (byte 32 0) (- #x0FFFF))) :test #'pointer-eq)
(define-constant TVI_LAST  (make-pointer (mask-field (byte 32 0) (- #x0FFFE))) :test #'pointer-eq)
(define-constant TVI_SORT  (make-pointer (mask-field (byte 32 0) (- #x0FFFD))) :test #'pointer-eq)

(define-constant TVIF_TEXT          #x0001)
(define-constant TVIF_IMAGE         #x0002)
(define-constant TVIF_PARAM         #x0004)
(define-constant TVIF_STATE         #x0008)
(define-constant TVIF_HANDLE        #x0010)
(define-constant TVIF_SELECTEDIMAGE #x0020)
(define-constant TVIF_CHILDREN      #x0040)
(define-constant TVIF_INTEGRAL      #x0080)
(define-constant TVIF_STATEEX       #x0100)
(define-constant TVIF_EXPANDEDIMAGE #x0200)

(define-constant TVIS_SELECTED       #x0002)
(define-constant TVIS_CUT            #x0004)
(define-constant TVIS_DROPHILITED    #x0008)
(define-constant TVIS_BOLD           #x0010)
(define-constant TVIS_EXPANDED       #x0020)
(define-constant TVIS_EXPANDEDONCE   #x0040)
(define-constant TVIS_EXPANDPARTIAL  #x0080)
(define-constant TVIS_OVERLAYMASK    #x0F00)
(define-constant TVIS_STATEIMAGEMASK #xF000)
(define-constant TVIS_USERMASK       #xF000)
