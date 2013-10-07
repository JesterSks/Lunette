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

(in-package :Lunette.Controls.PropertySheets)

(define-constant PSP_DEFAULT           #x00000000)
(define-constant PSP_DLGINDIRECT       #x00000001)
(define-constant PSP_USEHICON          #x00000002)
(define-constant PSP_USEICONID         #x00000004)
(define-constant PSP_USETITLE          #x00000008)
(define-constant PSP_RTLREADING        #x00000010)
(define-constant PSP_HASHELP           #x00000020)
(define-constant PSP_USEREFPARENT      #x00000040)
(define-constant PSP_USECALLBACK       #x00000080)
(define-constant PSP_PREMATURE         #x00000400)
(define-constant PSP_HIDEHEADER        #x00000800)
(define-constant PSP_USEHEADERTITLE    #x00001000)
(define-constant PSP_USEHEADERSUBTITLE #x00002000)
(define-constant PSP_USEFUSIONCONTEXT  #x00004000)

(define-constant PSH_DEFAULT             #x00000000)
(define-constant PSH_PROPTITLE           #x00000001)
(define-constant PSH_USEHICON            #x00000002)
(define-constant PSH_USEICONID           #x00000004)
(define-constant PSH_PROPSHEETPAGE       #x00000008)
(define-constant PSH_WIZARDHASFINISH     #x00000010)
(define-constant PSH_WIZARD              #x00000020)
(define-constant PSH_USEPSTARTPAGE       #x00000040)
(define-constant PSH_NOAPPLYNOW          #x00000080)
(define-constant PSH_USECALLBACK         #x00000100)
(define-constant PSH_HASHELP             #x00000200)
(define-constant PSH_MODELESS            #x00000400)
(define-constant PSH_RTLREADING          #x00000800)
(define-constant PSH_WIZARDCONTEXTHELP   #x00001000)
(define-constant PSH_WIZARD97            #x01000000)
(define-constant PSH_WATERMARK           #x00008000)
(define-constant PSH_USEHBMWATERMARK     #x00010000)
(define-constant PSH_USEHPLWATERMARK     #x00020000)
(define-constant PSH_STRETCHWATERMARK    #x00040000)
(define-constant PSH_HEADER              #x00080000)
(define-constant PSH_USEHBMHEADER        #x00100000)
(define-constant PSH_USEPAGELANG         #x00200000)
(define-constant PSH_WIZARD_LITE         #x00400000)
(define-constant PSH_NOCONTEXTHELP       #x02000000)
(define-constant PSH_AEROWIZARD          #x00004000)
(define-constant PSH_RESIZABLE           #x04000000)
(define-constant PSH_HEADERBITMAP        #x08000000)
(define-constant PSH_NOMARGIN            #x10000000)

(define-constant PROP_SM_CXDLG  212)
(define-constant PROP_SM_CYDLG  188)
(define-constant PROP_MED_CXDLG 227)
(define-constant PROP_MED_CYDLG 215)
(define-constant PROP_LG_CXDLG  252)
(define-constant PROP_LG_CYDLG  218)

(define-constant PSWIZB_BACK               #x00000001)
(define-constant PSWIZB_NEXT               #x00000002)
(define-constant PSWIZB_FINISH             #x00000004)
(define-constant PSWIZB_DISABLEDFINISH     #x00000008)
(define-constant PSWIZBF_ELEVATIONREQUIRED #x00000001)
(define-constant PSWIZB_CANCEL             #x00000010)
(define-constant PSWIZB_SHOW                        0)
(define-constant PSWIZB_RESTORE                     1)
