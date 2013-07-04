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

(in-package :Lunette.Graphics)

(defcfun "GetStockObject" HGDIOBJ
  (fnObject :int))

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

(defcfun "CreateSolidBrush" HBRUSH
  (crColor COLORREF))

(defcfun "CreateHatchBrush" HBRUSH
  (fnStyle :int)
  (clrref COLORREF))

(defcfun "CreatePen" HPEN
  (fnPenStyle :int)
  (nWidth     :int)
  (crColor    COLORREF))

(defcfun "SelectObject" HGDIOBJ
  (hdc HDC)
  (hgdiobj HGDIOBJ))

(defcfun "DeleteObject" BOOL
  (hObject HGDIOBJ))

(defun RGB (r g b)
  (logior (ash b 16)
          (ash g 8)
          r))
