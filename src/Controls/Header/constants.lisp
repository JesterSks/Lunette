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

(in-package :Lunette.Controls.Header)

(define-constant WC_HEADER "SysHeader32" :test #'string=)

(define-constant HDI_WIDTH         #x0001)
(define-constant HDI_HEIGHT     HDI_WIDTH)
(define-constant HDI_TEXT          #x0002)
(define-constant HDI_FORMAT        #x0004)
(define-constant HDI_LPARAM        #x0008)
(define-constant HDI_BITMAP        #x0010)
(define-constant HDI_IMAGE         #x0020)
(define-constant HDI_DI_SETITEM    #x0040)
(define-constant HDI_ORDER         #x0080)
(define-constant HDI_FILTER        #x0100)
(define-constant HDI_STATE         #x0200)

(define-constant HDF_LEFT                #x0000)
(define-constant HDF_RIGHT               #x0001)
(define-constant HDF_CENTER              #x0002)
(define-constant HDF_JUSTIFYMASK         #x0003)
(define-constant HDF_RTLREADING          #x0004)
(define-constant HDF_BITMAP              #x2000)
(define-constant HDF_STRING              #x4000)
(define-constant HDF_OWNERDRAW           #x8000)
(define-constant HDF_IMAGE               #x0800)
(define-constant HDF_BITMAP_ON_RIGHT     #x1000)
(define-constant HDF_SORTUP              #x0400)
(define-constant HDF_SORTDOWN            #x0200)
(define-constant HDF_CHECKBOX            #x0040)
(define-constant HDF_CHECKED             #x0080)
(define-constant HDF_FIXEDWIDTH          #x0100)
(define-constant HDF_SPLITBUTTON      #x1000000)

(define-constant HDS_HORZ       #x0000)
(define-constant HDS_BUTTONS    #x0002)
(define-constant HDS_HOTTRACK   #x0004)
(define-constant HDS_HIDDEN     #x0008)
(define-constant HDS_DRAGDROP   #x0040)
(define-constant HDS_FULLDRAG   #x0080)
(define-constant HDS_FILTERBAR  #x0100)
(define-constant HDS_FLAT       #x0200)
(define-constant HDS_CHECKBOXES #x0400)
(define-constant HDS_NOSIZING   #x0800)
(define-constant HDS_OVERFLOW   #x1000)
