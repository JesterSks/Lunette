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

(defcfun "GetSystemMetrics" :int
  (nIndex :int))

(defcfun ("GetModuleHandleW" GetModuleHandle) HMODULE
  (lpModuleName lpctstr))

(defcfun ("GetEnvironmentStringsW" GetEnvironmentStrings) LPTCH)

(defcfun ("FreeEnvironmentStringsW" FreeEnvironmentStrings) BOOL
  (lpszEnvironmentBlock LPTCH))

(defcfun ("GetEnvironmentVariableW" GetEnvironmentVariable) DWORD
  (lpName LPCTSTR)
  (lpBuffer LPTSTR)
  (nSize DWORD))

(defcfun "CloseHandle" BOOL
  (hObject HANDLE))

(defcfun ("WriteConsoleW" WriteConsole) BOOL
  (hConsoleOutput HANDLE)
  (lpBuffer :pointer)
  (nNumberOfCharsToWrite DWORD)
  (lpNumberOfCharsWritten LPDWORD)
  (lpReserved LPVOID))

(defcfun "GetDoubleClickTime" :UINT)

(defcfun "SetDoubleClickTime" BOOL
  (uInterval :UINT))

(defcfun "SetTimer" UINT_PTR
  (hWnd        HWND)
  (nIDEvent    UINT_PTR)
  (uElapse     :UINT)
  (lpTimerFunc TIMERPROC))

(defcfun "KillTimer" BOOL
  (hWnd HWND)
  (uIDEvent UINT_PTR))

(defcfun "GetStdHandle" HANDLE
  (nStdHandle DWORD))

(defun loword (value)
  (mask-field (byte 16 0) value))

(defun hiword (value)
  (mask-field (byte 16 0) (ash value -16)))

(defun makelong (a b)
  (logior (mask-field (byte 16 0) a)
          (ash (mask-field (byte 16 0) b) 16)))
