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

(defcfun ("RegisterClassW" RegisterClass) W32-ATOM
  (lpwcx (:pointer WNDCLASS)))

(defcfun ("GetModuleHandleW" GetModuleHandle) HMODULE
  (lpModuleName lpctstr))

(defcfun ("LoadIconW" LoadIcon) HICON
  (hInstance  HINSTANCE)
  (lpIconName LPCTSTR))

(defcfun ("LoadCursorW" LoadCursor) HCURSOR
  (hInstance    HINSTANCE)
  (lpCursorName LPCTSTR))

(defcfun "GetStockObject" HGDIOBJ
  (fnObject :int))

(defcfun ("CreateWindowExW" CreateWindowEx) HWND
  (dwExStyle    DWORD)
  (lpClassName  LPCTSTR)
  (lpWindowName LPCTSTR)
  (dwStyle      DWORD)
  (x            :INT)
  (y            :INT)
  (nWidth       :INT)
  (nHeight      :INT)
  (hWndParent   HWND)
  (hMenu        HMENU)
  (hInstance    HINSTANCE)
  (lpParam      LPVOID))

(defcfun "ShowWindow" BOOL
  (hWnd HWND)
  (nCmdShow :INT))

(defcfun "UpdateWindow" BOOL
  (hWnd HWND))

(defcfun ("GetMessageW" GetMessage) BOOL
  (lpMsg         LPMSG)
  (hWnd          HWND)
  (wMsgFilterMin :UINT)
  (wMsgFilterMax :UINT))

(defcfun "TranslateMessage" BOOL
  (lpMsg LPMSG))

(defcfun ("DispatchMessageW" DispatchMessage) LRESULT
  (lpmsg LPMSG))

(defcfun "PostQuitMessage" :void (nExitCode :int))

(defcfun ("DefWindowProcW" DefWindowProc) LRESULT
  (hWnd   HWND)
  (msg    :UINT)
  (wparam WPARAM)
  (lparam LPARAM))

(defun register-class (class-name &key
                                  (style (logior CS_HREDRAW CS_VREDRAW))
                                  (lpfnWndProc (null-pointer))
                                  (cbClsExtra 0)
                                  (cbWndExtra 0)
                                  (hInstance (GetModuleHandle (null-pointer)))
                                  (hIcon (LoadIcon (null-pointer)
                                                   IDI_APPLICATION))
                                  (hCursor (LoadCursor (null-pointer)
                                                       IDC_ARROW))
                                  (hbrBackground (GetStockObject WHITE_BRUSH))
                                  (lpszMenuName (null-pointer)))
  (with-foreign-strings ((cclass-name class-name))
                        (with-foreign-object (wc 'WNDCLASS)
                                             (setf (foreign-slot-value wc 'WNDCLASS 'style)         style
                                                   (foreign-slot-value wc 'WNDCLASS 'lpfnWndProc)   lpfnWndProc
                                                   (foreign-slot-value wc 'WNDCLASS 'cbClsExtra)    cbClsExtra
                                                   (foreign-slot-value wc 'WNDCLASS 'cbWndExtra)    cbWndExtra
                                                   (foreign-slot-value wc 'WNDCLASS 'hInstance)     hInstance
                                                   (foreign-slot-value wc 'WNDCLASS 'hIcon)         hIcon
                                                   (foreign-slot-value wc 'WNDCLASS 'hCursor)       hCursor
                                                   (foreign-slot-value wc 'WNDCLASS 'hbrBackground) hbrBackground
                                                   (foreign-slot-value wc 'WNDCLASS 'lpszMenuName)  lpszMenuName
                                                   (foreign-slot-value wc 'WNDCLASS 'lpszClassName) cclass-name)
                                             (RegisterClass wc))))

(defun create-window-ex (class-name title &key
                                    (dwExStyle  0)
                                    (dwStyle    WS_OVERLAPPEDWINDOW)
                                    (x          CW_USEDEFAULT)
                                    (y          CW_USEDEFAULT)
                                    (nWidth     CW_USEDEFAULT)
                                    (nHeight    CW_USEDEFAULT)
                                    (hWndParent (null-pointer))
                                    (hMenu      (null-pointer))
                                    (hInstance  (GetModuleHandle (null-pointer)))
                                    (lpParam    (null-pointer)))
  (with-foreign-strings ((ctitle title)
                         (cclass-name class-name))
                        (CreateWindowEx dwExStyle
                                        cclass-name
                                        ctitle
                                        dwStyle
                                        x
                                        y
                                        nWidth
                                        nHeight
                                        hWndParent
                                        hMenu
                                        hInstance
                                        lpParam)))
