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

(in-package :Lunette.Graphics.Text)

(defcfun ("TextOutW" TextOut) BOOL
  (hdc HDC)
  (nXStart :int)
  (nYStart :int)
  (lpString LPCTSTR)
  (cchString :int))

(defun text-out (hdc x y str)
  (with-foreign-string (cstr str)
                       (TextOut hdc x y cstr (length str))))

(defcfun ("GetTextMetricsW" GetTextMetrics) BOOL
  (hdc  HDC)
  (lptm LPTEXTMETRIC))

(defcfun ("CreateFontW" CreateFont) HFONT
  (nHeight            :int)
  (nWidth             :int)
  (nEscapement        :int)
  (nOrientation       :int)
  (fnWeight           :int)
  (fdwItalic          DWORD)
  (fdwUnderline       DWORD)
  (fdwStrikeOut       DWORD)
  (fdwCharSet         DWORD)
  (fdwOutputPrecision DWORD)
  (fdwClipPrecision   DWORD)
  (fdwQuality         DWORD)
  (fdwPitchAndFamily  DWORD)
  (lpszFace           LPCTSTR))

(defun create-font (&key (nHeight 0)
                         (nWidth  0)
                         (nEscapement 0)
                         (nOrientation 0)
                         (fnWeight FW_DONTCARE)
                         (fdwItalic 0)
                         (fdwUnderline 0)
                         (fdwStrikeOut 0)
                         (fdwCharSet DEFAULT_CHARSET)
                         (fdwOutputPrecision OUT_DEFAULT_PRECIS)
                         (fdwClipPrecision CLIP_DEFAULT_PRECIS)
                         (fdwQuality DEFAULT_QUALITY)
                         (fdwPitchAndFamily (logior FF_DONTCARE DEFAULT_PITCH))
                         (lpszFace (null-pointer)))
  ;; I should include handling the lpszFace to automatically convert a lisp string to c string.
  (CreateFont nHeight
              nWidth
              nEscapement
              nOrientation
              fnWeight
              fdwItalic
              fdwUnderline
              fdwStrikeOut
              fdwCharSet
              fdwOutputPrecision
              fdwClipPrecision
              fdwQuality
              fdwPitchAndFamily
              lpszFace))

(defcfun "CreateCaret" BOOL
  (hWnd    HWND)
  (hBitmap HBITMAP)
  (nWidth  :int)
  (nHeight :int))

(defcfun "SetCaretPos" BOOL
  (x :int)
  (y :int))

(defcfun "ShowCaret" BOOL
  (hWnd HWND))

(defcfun "HideCaret" BOOL
  (hWnd HWND))

(defcfun "DestroyCaret" BOOL)
