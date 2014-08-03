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

(defcstruct _RECT
  (left   :long)
  (top    :long)
  (right  :long)
  (bottom :long))

(defctype RECT   (:struct _RECT))
(defctype PRECT  (:pointer RECT))
(defctype LPRECT (:pointer RECT))

(defcstruct tagPAINTSTRUCT
  (hdc         HDC)
  (fErase      BOOL)
  (rcPaint     RECT)
  (fRestore    BOOL)
  (fIncUpdate  BOOL)
  (rgbReserved :int8 :count 32))

(defctype PAINTSTRUCT (:struct tagPAINTSTRUCT))
(defctype LPPAINTSTRUCT (:pointer PAINTSTRUCT))

(defcstruct tagDRAWITEMSTRUCT
  (CtlType    :UINT)
  (CtlID      :UINT)
  (itemID     :UINT)
  (itemAction :UINT)
  (itemState  :UINT)
  (hwndItem   HWND)
  (hDC        HDC)
  (rcItem     RECT)
  (itemData   ULONG_PTR))

(defctype DRAWITEMSTRUCT (:struct tagDRAWITEMSTRUCT))
(defctype PDRAWITEMSTRUCT (:pointer DRAWITEMSTRUCT))
(defctype LPDRAWITEMSTRUCT (:pointer DRAWITEMSTRUCT))

(defcstruct _XFORM
  (eM11  :FLOAT)
  (eM12  :FLOAT)
  (eM21  :FLOAT)
  (eM22  :FLOAT)
  (eDx   :FLOAT)
  (eDy   :FLOAT))

(defctype XFORM   (:struct _XFORM))
(defctype PXFORM  (:pointer XFORM))
(defctype LPXFORM (:pointer XFORM))

(defcstruct tagPIXELFORMATDESCRIPTOR
    (nSize           WORD)
    (nVersion        WORD)
    (dwFlags         DWORD)
    (iPixelType      BYTE)
    (cColorBits      BYTE)
    (cRedBits        BYTE)
    (cRedShift       BYTE)
    (cGreenBits      BYTE)
    (cGreenShift     BYTE)
    (cBlueBits       BYTE)
    (cBlueShift      BYTE)
    (cAlphaBits      BYTE)
    (cAlphaShift     BYTE)
    (cAccumBits      BYTE)
    (cAccumRedBits   BYTE)
    (cAccumGreenBits BYTE)
    (cAccumBlueBits  BYTE)
    (cAccumAlphaBits BYTE)
    (cDepthBits      BYTE)
    (cStencilBits    BYTE)
    (cAuxBuffers     BYTE)
    (iLayerType      BYTE)
    (bReserved       BYTE)
    (dwLayerMask     DWORD)
    (dwVisibleMask   DWORD)
    (dwDamageMask    DWORD))

(defctype PIXELFORMATDESCRIPTOR (:struct tagPIXELFORMATDESCRIPTOR))
(defctype PPIXELFORMATDESCRIPTOR (:pointer PIXELFORMATDESCRIPTOR))
(defctype LPPIXELFORMATDESCRIPTOR (:pointer PIXELFORMATDESCRIPTOR))
