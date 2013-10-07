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

(defpackage :Lunette.Controls.PropertySheets
  (:use :common-lisp
        :Lunette.System)
  (:import-from :cffi
                #:defcunion
                #:defcstruct
                #:defctype
                #:defcfun)
  (:import-from :alexandria
                #:define-constant)
  (:import-from :Lunette.Messages
                #:WM_USER)
  (:export #:PSP_DEFAULT
           #:PSP_DLGINDIRECT
           #:PSP_USEHICON
           #:PSP_USEICONID
           #:PSP_USETITLE
           #:PSP_RTLREADING
           #:PSP_HASHELP
           #:PSP_USEREFPARENT
           #:PSP_USECALLBACK
           #:PSP_PREMATURE
           #:PSP_HIDEHEADER
           #:PSP_USEHEADERTITLE
           #:PSP_USEHEADERSUBTITLE
           #:PSP_USEFUSIONCONTEXT

           #:PSH_DEFAULT
           #:PSH_PROPTITLE
           #:PSH_USEHICON
           #:PSH_USEICONID
           #:PSH_PROPSHEETPAGE
           #:PSH_WIZARDHASFINISH
           #:PSH_WIZARD
           #:PSH_USEPSTARTPAGE
           #:PSH_NOAPPLYNOW
           #:PSH_USECALLBACK
           #:PSH_HASHELP
           #:PSH_MODELESS
           #:PSH_RTLREADING
           #:PSH_WIZARDCONTEXTHELP
           #:PSH_WIZARD97
           #:PSH_WATERMARK
           #:PSH_USEHBMWATERMARK
           #:PSH_USEHPLWATERMARK
           #:PSH_STRETCHWATERMARK
           #:PSH_HEADER
           #:PSH_USEHBMHEADER
           #:PSH_USEPAGELANG
           #:PSH_WIZARD_LITE
           #:PSH_NOCONTEXTHELP
           #:PSH_AEROWIZARD
           #:PSH_RESIZABLE
           #:PSH_HEADERBITMAP
           #:PSH_NOMARGIN

           #:PROP_SM_CXDLG
           #:PROP_SM_CYDLG
           #:PROP_MED_CXDLG
           #:PROP_MED_CYDLG
           #:PROP_LG_CXDLG
           #:PROP_LG_CYDLG

           #:PSWIZB_BACK
           #:PSWIZB_NEXT
           #:PSWIZB_FINISH
           #:PSWIZB_DISABLEDFINISH
           #:PSWIZBF_ELEVATIONREQUIRED
           #:PSWIZB_CANCEL
           #:PSWIZB_SHOW
           #:PSWIZB_RESTORE

           ;;Notificiations
           #:PSN_SETACTIVE
           #:PSN_KILLACTIVE
           #:PSN_APPLY
           #:PSN_RESET
           #:PSN_HELP
           #:PSN_WIZBACK
           #:PSN_WIZNEXT
           #:PSN_WIZFINISH
           #:PSN_QUERYCANCEL
           #:PSN_GETOBJECT
           #:PSN_TRANSLATEACCELERATOR
           #:PSN_QUERYINITIALFOCUS

           ;;Messages
           #:PSM_SETCURSEL
           #:PSM_REMOVEPAGE
           #:PSM_ADDPAGE
           #:PSM_CHANGED
           #:PSM_RESTARTWINDOWS
           #:PSM_REBOOTSYSTEM
           #:PSM_CANCELTOCLOSE
           #:PSM_QUERYSIBLINGS
           #:PSM_UNCHANGED
           #:PSM_APPLY
           #:PSM_SETTITLEA
           #:PSM_SETTITLEW
           #:PSM_SETTITLE
           #:PSM_SETWIZBUTTONS
           #:PSM_PRESSBUTTON
           #:PSM_SETCURSELID
           #:PSM_SETFINISHTEXTA
           #:PSM_SETFINISHTEXTW
           #:PSM_SETFINISHTEXT
           #:PSM_GETTABCONTROL
           #:PSM_ISDIALOGMESSAGE
           #:PSM_GETCURRENTPAGEHWND
           #:PSM_INSERTPAGE
           #:PSM_SETHEADERTITLEA
           #:PSM_SETHEADERTITLEW
           #:PSM_SETHEADERTITLE
           #:PSM_SETHEADERSUBTITLEA
           #:PSM_SETHEADERSUBTITLEW
           #:PSM_SETHEADERSUBTITLE
           #:PSM_HWNDTOINDEX
           #:PSM_INDEXTOHWND
           #:PSM_PAGETOINDEX
           #:PSM_INDEXTOPAGE
           #:PSM_IDTOINDEX
           #:PSM_INDEXTOID
           #:PSM_GETRESULT
           #:PSM_RECALCPAGESIZES
           #:PSM_SETNEXTTEXTW
           #:PSM_SETNEXTTEXT
           #:PSM_SHOWWIZBUTTONS
           #:PSM_ENABLEWIZBUTTONS
           #:PSM_SETBUTTONTEXTW
           #:PSM_SETBUTTONTEXT

           ;;Structures

           #:DUMMYUNION1
           #:pszTemplate
           #:pResource

           #:DUMMYUNION2
           #:hIcon
           #:pszIcon

           #:PROPSHEETPAGE
           #:dwFlags
           #:hInstance
           #:dlgrsrc
           #:iconrsrc
           #:pszTitle
           #:pfnDlgProc
           #:pfnCallback
           #:pcRefparent
           #:pszHeaderTitle
           #:pszHeaderSubTitle
           #:LPPROPSHEETPAGE
           #:LPCPROPSHEETPAGE

           #:DUMMYUNION3
           #:nStartPage
           #:pStartPage

           #:DUMMYUNION4
           #:ppsp
           #:phpage

           #:DUMMYUNION5
           #:hbmWatermark
           #:pszbmWatermark

           #:DUMMYUNION6
           #:hbmHeader
           #:pszbmHeader

           #:PROPSHEETHEADER
           #:hwndParent
           #:pszCaption
           #:nPages
           #:startPage
           #:sheetpage
           #:rsrcbmp
           #:hplWatermark
           #:headerbmp
           #:LPPROPSHEETHEADER
           #:LPCPROPSHEETHEADER

           #:PSHNOTIFY
           #:hdr
           #:LPPSHNOTIFY

           ;;Functions
           #:CreatePropertySheetPage
           #:PropertySheet))
