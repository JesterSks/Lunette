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

(defcfun "GetLastError" DWORD)

(defcfun "LocalFree" HLOCAL
  (hMem HLOCAL))

(defcfun ("FormatMessageW" FormatMessage) DWORD
  (dwFlags      DWORD)
  (lpSource     LPCVOID)
  (dwMessageId  DWORD)
  (dwLanguageId DWORD)
  (lpBuffer     LPTSTR)
  (nSize        DWORD)
  (Arguments    va_list))

(defun get-win-error-str (err)
  (with-foreign-object (lpMsgBuf 'LPVOID)
                       (FormatMessage (logior FORMAT_MESSAGE_ALLOCATE_BUFFER
                                              FORMAT_MESSAGE_FROM_SYSTEM
                                              FORMAT_MESSAGE_IGNORE_INSERTS)
                                      (null-pointer)
                                      err
                                      0
                                      lpMsgBuf
                                      0
                                      (null-pointer))
                       (let ((lisp-str (foreign-string-to-lisp (mem-ref lpMsgBuf 'LPVOID) :encoding :utf-16le)))
                         (LocalFree (mem-ref lpMsgBuf 'LPVOID))
                         lisp-str)))

(defun get-last-error ()
  (let ((last-error (GetLastError)))
    (values last-error (get-win-error-str last-error))))

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

(defcfun "BeginPaint" HDC
  (hWnd HWND)
  (lpPaint LPPAINTSTRUCT))

(defcfun "EndPaint" BOOL
  (hWnd HWND)
  (lpPaint (:pointer PAINTSTRUCT)))

(defmacro with-ps (ps hdc hWnd &body body)
  `(with-foreign-object (,ps 'PAINTSTRUCT)
                        (let ((,hdc (BeginPaint ,hWnd ,ps)))
                          (unwind-protect
                              (progn ,@body)
                            (EndPaint ,hWnd ,ps)))))

(defcfun ("TextOutW" TextOut) BOOL
  (hdc HDC)
  (nXStart :int)
  (nYStart :int)
  (lpString LPCTSTR)
  (cchString :int))

(defun text-out (hdc x y str)
  (with-foreign-string (cstr str)
                       (TextOut hdc x y cstr (length str))))
