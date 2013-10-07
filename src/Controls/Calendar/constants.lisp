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

(in-package :Lunette.Controls.Calendar)

(define-constant MONTHCAL_CLASS "SysMonthCal32" :test #'string=)

(define-constant MCS_DAYSTATE         #x0001)
(define-constant MCS_MULTISELECT      #x0002)
(define-constant MCS_WEEKNUMBERS      #x0004)
(define-constant MCS_NOTODAYCIRCLE    #x0008)
(define-constant MCS_NOTODAY          #x0010)
(define-constant MCS_NOTRAILINGDATES  #x0040)
(define-constant MCS_SHORTDAYSOFWEEK  #x0080)
(define-constant MCS_NOSELCHANGEONNAV #x0100)
