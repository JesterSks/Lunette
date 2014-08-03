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

(defctype PVOID   :pointer)
(defctype LPVOID  :pointer)
(defctype LPCVOID :pointer)
(defctype HANDLE  PVOID)

(defctype HGDIOBJ        HANDLE)
(defctype HLOCAL         HANDLE)
(defctype HDC            HANDLE)
(defctype HICON          HANDLE)
(defctype HCURSOR        HANDLE)
(defctype HBRUSH         HANDLE)
(defctype HPEN           HANDLE)
(defctype HWND           HANDLE)
(defctype HMENU          HANDLE)
(defctype HFONT          HANDLE)
(defctype HBITMAP        HANDLE)
(defctype HPROPSHEETPAGE HANDLE)
(defctype HPALETTE       HANDLE)
(defctype HTREEITEM      HANDLE)
(defctype HRSRC          HANDLE)
(defctype HGLOBAL        HANDLE)
(defctype HACCEL         HANDLE)
(defctype HIMAGELIST     HANDLE)
(defctype HGLRC          HANDLE)

(defctype WNDPROC  :pointer)
(defctype PROC     :pointer)
(defctype FARPROC  :pointer)
(defctype NEARPROC :pointer)

(defctype HINSTANCE :pointer)
(defctype HMODULE   HINSTANCE)

(defctype WPARAM  :unsigned-int)
(defctype LPARAM  :long)
(defctype LRESULT :long)

(defctype BYTE  :unsigned-char)
(defctype WORD  :unsigned-short)
(defctype DWORD :unsigned-long)
(defctype BOOL  :int)
(defctype WCHAR :unsigned-short)

(defctype INT_PTR              :pointer)
(defctype DLGPROC              :pointer)
(defctype LPOFNHOOKPROC        :pointer)
(defctype UINT_PTR             :UINT)
(defctype LPFNPSPCALLBACK      :pointer)
(defctype PFNPROPSHEETCALLBACK :pointer)
(defctype DWORD_PTR            :pointer)
(defctype TIMERPROC            :pointer)
(defctype ENUMRESTYPEPROC      :pointer)
(defctype ENUMRESNAMEPROC      :pointer)
(defctype LONG_PTR             :long)
(defctype FONTENUMPROC         :pointer)
(defctype LPINT                :pointer)

(defctype LPDWORD (:pointer DWORD))

(defctype W32-ATOM WORD)

(defctype TCHAR :ushort)
(defctype LPTCH (:pointer TCHAR))

(defctype LPTSTR  :string)
(defctype LPCSTR  :string)
(defctype LPCTSTR LPCSTR)
(defctype LPCWSTR :string)
(defctype LPWSTR  :string)
(defctype LPSTR   :string)

(defctype COLORREF   DWORD)
(defctype LPCOLORREF :pointer)

(defctype va_list :pointer)

(defctype ULONG_PTR :pointer)
