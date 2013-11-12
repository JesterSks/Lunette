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

(in-package :Lunette.Resources)

(defcfun ("LoadIconW" LoadIcon) HICON
  (hInstance  HINSTANCE)
  (lpIconName LPCTSTR))

(defcfun ("LoadCursorW" LoadCursor) HCURSOR
  (hInstance    HINSTANCE)
  (lpCursorName LPCTSTR))

(defcfun ("EnumResourceTypesW" EnumResourceTypes) BOOL
  (hModule HMODULE)
  (lpEnumFunc ENUMRESTYPEPROC)
  (lParam LONG_PTR))

(defcfun ("EnumResourceNamesW" EnumResourceNames) BOOL
  (hModule HMODULE)
  (lpszType :long)
  (lpEnumFunc ENUMRESNAMEPROC)
  (lParam LONG_PTR))

(defcfun ("FindResourceW" FindResource) HRSRC
  (hModule HMODULE)
  (lpName :long)
  (lpType :long))

(defcfun ("LoadImageW" LoadImage) HANDLE
  (hinst HINSTANCE)
  (lpszName :long)
  (uType :uint)
  (cxDesired :int)
  (cyDesired :int)
  (fuLoad :uint))

(defcfun ("LoadBitmapW" LoadBitmap) HBITMAP
  (hInstance HINSTANCE)
  (lpBitmapName :long))

(defcfun "FreeLibrary" BOOL
  (hModule HMODULE))

(defcfun "LoadResource" HGLOBAL
  (hModule HMODULE)
  (hResInfo HRSRC))

(defcfun ("LoadLibraryW" LoadLibrary) HMODULE
  (lpFileName LPCTSTR))

(defcfun ("LoadMenuW" LoadMenu) HMENU
  (hInstance HINSTANCE)
  (lpMenuName LPCTSTR))

(defcfun ("LoadAcceleratorsW" LoadAccelerators) HACCEL
  (hInstance HINSTANCE)
  (lpTableName LPCTSTR))

(defun load-library (fname path)
  (with-foreign-string (cStrPath (namestring (create-resource-path path fname)))
    (let ((lib (LoadLibrary cStrPath)))
      (when (null-pointer-p lib)
        (multiple-value-bind (error-code error-msg) (get-last-error)
          (error "Error loading library (DLL) ~s: ~d (~a)"
                 fname
                 error-code
                 error-name)))
      lib)))

(defmacro with-library ((asymbol fname path) &body body)
  `(let ((,asymbol (load-library ,fname ,path)))
     (unwind-protect
          (progn ,@body)
       (FreeLibrary ,asymbol))))
