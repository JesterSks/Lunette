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

(defpackage :Lunette.System
  (:use #:common-lisp)
  (:import-from :cffi
                #:defcfun
                #:defctype
                #:defcstruct)
  (:export #:PVOID
           #:LPVOID
           #:LPCVOID
           #:HANDLE

           #:HGDIOBJ
           #:HLOCAL
           #:HDC
           #:HICON
           #:HCURSOR
           #:HBRUSH
           #:HPEN
           #:HWND
           #:HMENU
           #:HFONT
           #:HBITMAP

           #:WNDPROC

           #:HINSTANCE
           #:HMODULE

           #:WPARAM
           #:LPARAM
           #:LRESULT

           #:BYTE
           #:WORD
           #:DWORD
           #:BOOL
           #:WCHAR

           #:W32-ATOM

           #:LPTSTR
           #:LPCSTR
           #:LPCTSTR
           #:LPCWSTR

           #:COLORREF
           #:LPCOLORREF

           #:va_list

           #:ULONG_PTR

           #:POINT
           #:x
           #:y
           #:PPOINT
           #:LPPOINT

           #:GetModuleHandle
           #:loword
           #:hiword
           #:makelong))
