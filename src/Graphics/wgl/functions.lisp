#|
   Copyright 2014 Robert Burghart

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

(defcfun "wglCreateContext" HGLRC
  (hdc HDC))

(defcfun "wglDeleteContext" BOOL
  (hglrc HGLRC))

(defcfun "wglGetCurrentContext" HGLRC)

(defcfun "wglGetCurrentDC" HDC)

(defcfun "wglMakeCurrent" BOOL
  (hdc HDC)
  (hglrc HGLRC))

(defun set-pixel-format (hdc &key
                               (nVersion 1)
                               (dwFlags (logior PFD_DRAW_TO_WINDOW
                                                PFD_SUPPORT_OPENGL
                                                PFD_DOUBLEBUFFER))
                               (iPixelType PFD_TYPE_RGBA)
                               (cColorBits 32)
                               (cRedBits 0)
                               (cRedShift 0)
                               (cGreenBits 0)
                               (cGreenBitShift 0)
                               (cBlueBits 0)
                               (cBlueShift 0)
                               (cAlphaBits 0)
                               (cAlphaShift 0)
                               (cAccumBits 0)
                               (cAccumRedBits 0)
                               (cAccumGreenBits 0)
                               (cAccumBlueBits 0)
                               (cAccumAlphaBits 0)
                               (cDepthBits 16)
                               (cStencilBits 0)
                               (cAuxBuffers 0)
                               (iLayerType 0)
                               (bReserved 0)
                               (dwLayerMask 0)
                               (dwVisibleMask 0)
                               (dwDamageMask 0))
  (with-foreign-object (pfd 'PIXELFORMATDESCRIPTOR)
    (setf (foreign-slot-value pfd 'PIXELFORMATDESCRIPTOR 'nSize)                (foreign-type-size 'PIXELFORMATDESCRIPTOR)
          (foreign-slot-value pfd 'PIXELFORMATDESCRIPTOR 'nVersion)             nVersion
          (foreign-slot-value pfd 'PIXELFORMATDESCRIPTOR 'dwFlags)              dwFlags
          (foreign-slot-value pfd 'PIXELFORMATDESCRIPTOR 'iPixelType)           iPixelType
          (foreign-slot-value pfd 'PIXELFORMATDESCRIPTOR 'cColorBits)           cColorBits
          (foreign-slot-value pfd 'PIXELFORMATDESCRIPTOR 'cRedBits)             cRedBits
          (foreign-slot-value pfd 'PIXELFORMATDESCRIPTOR 'cRedShift)            cRedShift
          (foreign-slot-value pfd 'PIXELFORMATDESCRIPTOR 'cGreenBits)           cGreenBits
          (foreign-slot-value pfd 'PIXELFORMATDESCRIPTOR 'cGreenShift)          cGreenShift
          (foreign-slot-value pfd 'PIXELFORMATDESCRIPTOR 'cBlueBits)            cBlueBits
          (foreign-slot-value pfd 'PIXELFORMATDESCRIPTOR 'cBlueShift)           cBlueShift
          (foreign-slot-value pfd 'PIXELFORMATDESCRIPTOR 'cAlphaBits)           cAlphaBits
          (foreign-slot-value pfd 'PIXELFORMATDESCRIPTOR 'cAlphaShift)          cAlphaShift
          (foreign-slot-value pfd 'PIXELFORMATDESCRIPTOR 'cAccumBits)           cAccumBits
          (foreign-slot-value pfd 'PIXELFORMATDESCRIPTOR 'cAccumRedBits)        cAccumRedBits
          (foreign-slot-value pfd 'PIXELFORMATDESCRIPTOR 'cAccumGreenBits)      cAccumGreenBits
          (foreign-slot-value pfd 'PIXELFORMATDESCRIPTOR 'cAccumBlueBits)       cAccumBlueBits
          (foreign-slot-value pfd 'PIXELFORMATDESCRIPTOR 'cAccumAlphaBits)      cAccumAlphaBits
          (foreign-slot-value pfd 'PIXELFORMATDESCRIPTOR 'cDepthBits)           cDepthBits
          (foreign-slot-value pfd 'PIXELFORMATDESCRIPTOR 'cStencilBits)         cStencilBits
          (foreign-slot-value pfd 'PIXELFORMATDESCRIPTOR 'cAuxBuffers)          cAuxBuffers
          (foreign-slot-value pfd 'PIXELFORMATDESCRIPTOR 'iLayerType)           iLayerType
          (foreign-slot-value pfd 'PIXELFORMATDESCRIPTOR 'bReserved)            bReserved
          (foreign-slot-value pfd 'PIXELFORMATDESCRIPTOR 'dwLayerMask)          dwLayerMask
          (foreign-slot-value pfd 'PIXELFORMATDESCRIPTOR 'dwVisibleMask)        dwVisibleMask
          (foreign-slot-value pfd 'PIXELFORMATDESCRIPTOR 'dwDamageMask)         dwDamageMask)
    (let ((nPixelFormat (ChoosePixelFormat hdc pfd)))
      (SetPixelFormat hdc nPixelFormat pfd))))
