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

(in-package :Lunette.Controls)

(define-constant ICC_LISTVIEW_CLASSES   #x00000001)
(define-constant ICC_TREEVIEW_CLASSES   #x00000002)
(define-constant ICC_BAR_CLASSES        #x00000004)
(define-constant ICC_TAB_CLASSES        #x00000008)
(define-constant ICC_UPDOWN_CLASS       #x00000010)
(define-constant ICC_PROGRESS_CLASS     #x00000020)
(define-constant ICC_HOTKEY_CLASS       #x00000040)
(define-constant ICC_ANIMATE_CLASS      #x00000080)
(define-constant ICC_WIN95_CLASSES      #x000000FF)
(define-constant ICC_DATE_CLASSES       #x00000100)
(define-constant ICC_USEREX_CLASSES     #x00000200)
(define-constant ICC_COOL_CLASSES       #x00000400)
(define-constant ICC_INTERNET_CLASSES   #x00000800)
(define-constant ICC_PAGESCROLLER_CLASS #x00001000)
(define-constant ICC_NATIVEFNTCTL_CLASS #x00002000)
(define-constant ICC_STANDARD_CLASSES   #x00004000)
(define-constant ICC_LINK_CLASS         #x00008000)
