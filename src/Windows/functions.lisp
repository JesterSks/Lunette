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

(in-package :Lunette.Windows)

(defcfun ("RegisterClassW" RegisterClass) W32-ATOM
  (lpwcx (:pointer WNDCLASS)))

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

(defcfun ("DefWindowProcW" DefWindowProc) LRESULT
  (hWnd   HWND)
  (msg    :UINT)
  (wparam WPARAM)
  (lparam LPARAM))

(defcfun "GetClientRect" BOOL
  (hWnd HWND)
  (lprect LPRECT))

(defcfun "GetFocus" HWND)

(defcfun "SetFocus" HWND
  (hWnd HWND))

(defcfun "SetCursor" HWND
  (hCursor HCURSOR))

(defcfun "ShowCursor" :int
  (bShow BOOL))

(defcfun "GetCursorPos" BOOL
  (lpPoint LPPOINT))

(defcfun "SetCursorPos" BOOL
  (x :int)
  (y :int))

(defcfun "ScreenToClient" BOOL
  (hWnd HWND)
  (lpPoint LPPOINT))

(defcfun "ClientToScreen" BOOL
  (hWnd HWND)
  (lpPoint LPPOINT))

(defcfun "MoveWindow" BOOL
  (hWnd     HWND)
  (x        :int)
  (y        :int)
  (nWidth   :int)
  (nHeight  :int)
  (bRepaint BOOL))

(defcfun ("SetWindowLongW" SetWindowLong) :LONG
  (hWnd      HWND)
  (nIndex    :int)
  (dwNewLong :LONG))

(defcfun ("GetWindowLongW" GetWindowLong) :LONG
  (hWnd   HWND)
  (nIndex :int))

(defcfun "GetParent" HWND
  (hWnd HWND))

(defcfun "SetCapture" HWND
  (hWnd HWND))

(defcfun "ReleaseCapture" BOOL)

(defcfun "ValidateRect" BOOL
  (hWnd HWND)
  (lpRect (:pointer RECT)))

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
                                             (let ((result-atom (RegisterClass wc)))
                                               (when (eql 0 result-atom)
                                                 (multiple-value-bind (error-code error-msg) (get-last-error)
                                                   (unless (eql error-code ERROR_CLASS_ALREADY_EXISTS)
                                                     (error "Error registering window class ~s: ~d (~a)"
                                                            class-name
                                                            error-code
                                                            error-msg))))
                                               result-atom))))

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
                        (let ((hwnd (CreateWindowEx dwExStyle
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
                          (when (null-pointer-p hwnd)
                            (multiple-value-bind (error-code error-msg) (get-last-error)
                              (error "CreateWindowEx failed creating window instance ~s: ~d (~a)"
                                     title
                                     error-code
                                     error-msg)))
                          hwnd)))
