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

(in-package :Lunette.Errors)

(defcfun "GetLastError" DWORD)

(defcfun ("FormatMessageW" FormatMessage) DWORD
  (dwFlags      DWORD)
  (lpSource     LPCVOID)
  (dwMessageId  DWORD)
  (dwLanguageId DWORD)
  (lpBuffer     LPTSTR)
  (nSize        DWORD)
  (Arguments    va_list))


(defcfun "MessageBeep" BOOL
  (uType :UINT))

(defun get-win-error-str (err)
  (with-foreign-object (lpMsgBuf 'LPVOID)
                       (FormatMessage (logior FORMAT_MESSAGE_ALLOCATE_BUFFER
                                              FORMAT_MESSAGE_FROM_SYSTEM
                                              FORMAT_MESSAGE_IGNORE_INSERTS)
                                      (null-pointer)
                                      err
                                      0
                                      lpMsgBuf
                                      0
                                      (null-pointer))
                       (let ((lisp-str (foreign-string-to-lisp (mem-ref lpMsgBuf 'LPVOID) :encoding :utf-16le)))
                         (LocalFree (mem-ref lpMsgBuf 'LPVOID))
                         lisp-str)))

(defun get-last-error ()
  (let ((last-error (GetLastError)))
    (values last-error (get-win-error-str last-error))))
