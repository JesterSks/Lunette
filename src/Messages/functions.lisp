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

(in-package :Lunette.Messages)

(defcfun ("GetMessageW" GetMessage) BOOL
  (lpMsg         LPMSG)
  (hWnd          HWND)
  (wMsgFilterMin :UINT)
  (wMsgFilterMax :UINT))

(defcfun ("PeekMessageW" PeekMessage) BOOL
  (lpMsg         LPMSG)
  (hWnd          HWND)
  (wMsgFilterMin :UINT)
  (wMsgFilterMax :UINT)
  (wRemoveMsg    :UINT))

(defcfun "TranslateMessage" BOOL
  (lpMsg LPMSG))

(defcfun ("DispatchMessageW" DispatchMessage) LRESULT
  (lpmsg LPMSG))

(defcfun "PostQuitMessage" :void (nExitCode :int))

(defcfun ("SendMessageW" SendMessage) LRESULT
  (hWnd HWND)
  (Msg :UINT)
  (wParam WPARAM)
  (lParam LPARAM))

(defcfun ("PostMessageW" PostMessage) BOOL
  (hwnd HWND)
  (msg :UINT)
  (wParam WPARAM)
  (lParam LPARAM))

(defcfun ("TranslateAcceleratorW" TranslateAccelerator) :INT
  (hWnd HWND)
  (hAccTable HACCEL)
  (lpMsg LPMSG))
