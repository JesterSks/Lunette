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

(defcfun "GetPixel" COLORREF
  (hdc   HDC)
  (nXPos :int)
  (nYPos :int))

(defcfun "SetPixel" COLORREF
  (hdc     HDC)
  (X       :int)
  (Y       :int)
  (crColor COLORREF))

(defcfun "MoveToEx" BOOL
  (hdc     HDC)
  (X       :int)
  (Y       :int)
  (lpPoint LPPOINT))

(defcfun "GetCurrentPositionEx" BOOL
  (hdc     HDC)
  (lpPoint LPPOINT))

(defcfun "LineTo" BOOL
  (hdc   HDC)
  (nXEnd :int)
  (nYEnd :int))

(defcfun "Polyline" BOOL
  (hdc    HDC)
  (lppt   (:pointer POINT))
  (cPoints :int))

(defcfun "PolylineTo" BOOL
  (hdc    HDC)
  (lppt   (:pointer POINT))
  (cPoints DWORD))

(defcfun "PolyPolyline" BOOL
  (hdc            HDC)
  (lppt           (:pointer POINT))
  (lpdwPolyPoints (:pointer DWORD))
  (cCount         DWORD))

(defcfun "Arc" BOOL
  (hdc         HDC)
  (nLeftRect   :int)
  (nTopRect    :int)
  (nRightRect  :int)
  (nBottomRect :int)
  (nXStartArc  :int)
  (nYStartArc  :int)
  (nXEndArc    :int)
  (nYEndArc    :int))

(defcfun "AngleArc" BOOL
  (hdc         HDC)
  (X           :int)
  (Y           :int)
  (dwRadius    DWORD)
  (eStartAngle :float)
  (eSweepAngle :float))

(defcfun "ArcTo" BOOL
  (hdc         HDC)
  (nLeftRect   :int)
  (nTopRect    :int)
  (nRightRect  :int)
  (nBottomRect :int)
  (nXRadial1   :int)
  (nYRadial1   :int)
  (nXRadial2   :int)
  (nYRadial2   :int))

(defcfun "PolyBezier" BOOL
  (hdc     HDC)
  (lppt    (:pointer POINT))
  (cPoints DWORD))

(defcfun "PolyBezierTo" BOOL
  (hdc     HDC)
  (lppt    (:pointer POINT))
  (cCount  DWORD))

(defcfun "PolyDraw" BOOL
  (hdc      HDC)
  (lppt     (:pointer POINT))
  (lpbTypes (:pointer BYTE))
  (cCount   :int))

(defcfun "Rectangle" BOOL
  (hdc         HDC)
  (nLeftRect   :int)
  (nTopRect    :int)
  (nRightRect  :int)
  (nBottomRect :int))

(defcfun "Ellipse" BOOL
  (hdc         HDC)
  (nLeftRect   :int)
  (nTopRect    :int)
  (nRightRect  :int)
  (nBottomRect :int))

(defcfun "RoundRect" BOOL
  (hdc         HDC)
  (nLeftRect   :int)
  (nTopRect    :int)
  (nRightRect  :int)
  (nBottomRect :int)
  (nWidth      :int)
  (nHeight     :int))

(defcfun "Pie" BOOL
  (hdc         HDC)
  (nLeftRect   :int)
  (nTopRect    :int)
  (nRightRect  :int)
  (nBottomRect :int)
  (nXRadial1   :int)
  (nYRadial1   :int)
  (nXRadial2   :int)
  (nYRadial2   :int))

(defcfun "Chord" BOOL
  (hdc         HDC)
  (nLeftRect   :int)
  (nTopRect    :int)
  (nRightRect  :int)
  (nBottomRect :int)
  (nXRadial1   :int)
  (nYRadial1   :int)
  (nXRadial2   :int)
  (nYRadial2   :int))

(defcfun "Polygon" BOOL
  (hdc      HDC)
  (lpPoints (:pointer POINT))
  (nCount   :int))

(defcfun "PolyPolygon" BOOL
  (hdc          HDC)
  (lpPoints     (:pointer POINT))
  (lpPolyCounts (:pointer :int))
  (nCount       :int))

(defcfun "SetBkColor" COLORREF
  (hdc     HDC)
  (crColor COLORREF))

(defcfun "SetBkMode" :int
  (hdc     HDC)
  (iBkMode :int))

(defcfun "SetROP2" :int
  (hdc        HDC)
  (fnDrawMode :int))

(defcfun "GetROP2" :int
  (hdc HDC))

(defcfun "SetPolyFillMode" :int
  (hdc           HDC)
  (iPolyFillMode :int))

(defcfun "SetViewportOrgEx" BOOL
  (hdc     HDC)
  (x       :INT)
  (y       :INT)
  (lpPoint LPPOINT))

(defcfun "SetWindowOrgEx" BOOL
  (hdc     HDC)
  (x       :INT)
  (y       :INT)
  (lpPoint LPPOINT))
