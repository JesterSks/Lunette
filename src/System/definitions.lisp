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

(in-package :Lunette.System)

(defctype PVOID   :pointer)
(defctype LPVOID  :pointer)
(defctype LPCVOID :pointer)
(defctype HANDLE  PVOID)

(defctype HGDIOBJ HANDLE)
(defctype HLOCAL  HANDLE)
(defctype HDC     HANDLE)
(defctype HICON   HANDLE)
(defctype HCURSOR HANDLE)
(defctype HBRUSH  HANDLE)
(defctype HWND    HANDLE)
(defctype HMENU   HANDLE)

(defctype WNDPROC :pointer)

(defctype HINSTANCE :pointer)
(defctype HMODULE   HINSTANCE)

(defctype WPARAM  :unsigned-int)
(defctype LPARAM  :long)
(defctype LRESULT :long)

(defctype WORD  :unsigned-short)
(defctype DWORD :unsigned-long)
(defctype BOOL  :int)

(defctype W32-ATOM WORD)

(defctype LPTSTR  :string)
(defctype LPCSTR  :string)
(defctype LPCTSTR LPCSTR)
(defctype LPCWSTR :string)

(defctype va_list :pointer)
