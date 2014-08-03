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

(defcfun ("GetCurrentDirectoryW" GetCurrentDirectory) DWORD
  (nBufferLength DWORD)
  (lpBuffer LPTSTR))

(defcfun ("CreateFileW" CreateFile) HANDLE
  (lpFileName LPCTSTR)
  (dwDesiredAccess DWORD)
  (dwShareMode DWORD)
  (lpSecurityAttributes LPSECURITY_ATTRIBUTES)
  (dwCreationDisposition DWORD)
  (dwFlagsAndAttributes DWORD)
  (hTemplateFile HANDLE))

;;; I'm cheating with the lpOverlapped parameter it should be
;;; an OVERLAPPED struct but cffi doesn't have a good way of doing
;;; anonymous unions in structs.
(defcfun "ReadFile" BOOL
  (hFile HANDLE)
  (lpBuffer LPVOID)
  (nNumberOfBytesToRead DWORD)
  (lpNumberOfBytesRead LPDWORD)
  (lpOverlapped :pointer))

(defcfun ("SetCurrentDirectoryW" SetCurrentDirectory) BOOL
  (lpPathName LPCTSTR))
