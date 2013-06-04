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

(defpackage :Lunette
  (:use #:common-lisp)
  (:import-from :cffi
                #:define-foreign-library
                #:use-foreign-library)
  (:import-from :Lunette.System
                #:LRESULT
                #:HWND
                #:WPARAM
                #:LPARAM)
  (:import-from :Lunette.Messages
                #:WM_DESTROY
                #:WM_PAINT

                #:MSG

                #:GetMessage
                #:TranslateMessage
                #:DispatchMessage
                #:PostQuitMessage)
  (:import-from :Lunette.Windows
                #:SW_SHOW

                #:ShowWindow
                #:UpdateWindow
                #:DefWindowProc

                #:register-class
                #:create-window-ex)
  (:import-from :Lunette.Graphics
                #:PAINTSTRUCT

                #:BeginPaint
                #:EndPaint

                #:with-ps
                #:text-out)
  (:export #:LRESULT
           #:HWND
           #:WPARAM
           #:LPARAM

           #:WM_DESTROY
           #:WM_PAINT

           #:MSG

           #:GetMessage
           #:TranslateMessage
           #:DispatchMessage
           #:PostQuitMessage

           #:SW_SHOW

           #:ShowWindow
           #:UpdateWindow
           #:DefWindowProc

           #:register-class
           #:create-window-ex

           #:PAINTSTRUCT

           #:BeginPaint
           #:EndPaint

           #:with-ps
           #:text-out))
