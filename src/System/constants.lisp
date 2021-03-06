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

;;; GetSystemMetrics() codes
(define-constant SM_CXSCREEN             0)
(define-constant SM_CYSCREEN             1)
(define-constant SM_CXVSCROLL            2)
(define-constant SM_CYHSCROLL            3)
(define-constant SM_CYCAPTION            4)
(define-constant SM_CXBORDER             5)
(define-constant SM_CYBORDER             6)
(define-constant SM_CXDLGFRAME           7)
(define-constant SM_CYDLGFRAME           8)
(define-constant SM_CYVTHUMB             9)
(define-constant SM_CXHTHUMB             10)
(define-constant SM_CXICON               11)
(define-constant SM_CYICON               12)
(define-constant SM_CXCURSOR             13)
(define-constant SM_CYCURSOR             14)
(define-constant SM_CYMENU               15)
(define-constant SM_CXFULLSCREEN         16)
(define-constant SM_CYFULLSCREEN         17)
(define-constant SM_CYKANJIWINDOW        18)
(define-constant SM_MOUSEPRESENT         19)
(define-constant SM_CYVSCROLL            20)
(define-constant SM_CXHSCROLL            21)
(define-constant SM_DEBUG                22)
(define-constant SM_SWAPBUTTON           23)
(define-constant SM_RESERVED1            24)
(define-constant SM_RESERVED2            25)
(define-constant SM_RESERVED3            26)
(define-constant SM_RESERVED4            27)
(define-constant SM_CXMIN                28)
(define-constant SM_CYMIN                29)
(define-constant SM_CXSIZE               30)
(define-constant SM_CYSIZE               31)
(define-constant SM_CXFRAME              32)
(define-constant SM_CYFRAME              33)
(define-constant SM_CXMINTRACK           34)
(define-constant SM_CYMINTRACK           35)
(define-constant SM_CXDOUBLECLK          36)
(define-constant SM_CYDOUBLECLK          37)
(define-constant SM_CXICONSPACING        38)
(define-constant SM_CYICONSPACING        39)
(define-constant SM_MENUDROPALIGNMENT    40)
(define-constant SM_PENWINDOWS           41)
(define-constant SM_DBCSENABLED          42)
(define-constant SM_CMOUSEBUTTONS        43)
(define-constant SM_CXFIXEDFRAME           SM_CXDLGFRAME)
(define-constant SM_CYFIXEDFRAME           SM_CYDLGFRAME)
(define-constant SM_CXSIZEFRAME            SM_CXFRAME)
(define-constant SM_CYSIZEFRAME            SM_CYFRAME)
(define-constant SM_SECURE               44)
(define-constant SM_CXEDGE               45)
(define-constant SM_CYEDGE               46)
(define-constant SM_CXMINSPACING         47)
(define-constant SM_CYMINSPACING         48)
(define-constant SM_CXSMICON             49)
(define-constant SM_CYSMICON             50)
(define-constant SM_CYSMCAPTION          51)
(define-constant SM_CXSMSIZE             52)
(define-constant SM_CYSMSIZE             53)
(define-constant SM_CXMENUSIZE           54)
(define-constant SM_CYMENUSIZE           55)
(define-constant SM_ARRANGE              56)
(define-constant SM_CXMINIMIZED          57)
(define-constant SM_CYMINIMIZED          58)
(define-constant SM_CXMAXTRACK           59)
(define-constant SM_CYMAXTRACK           60)
(define-constant SM_CXMAXIMIZED          61)
(define-constant SM_CYMAXIMIZED          62)
(define-constant SM_NETWORK              63)
(define-constant SM_CLEANBOOT            67)
(define-constant SM_CXDRAG               68)
(define-constant SM_CYDRAG               69)
(define-constant SM_SHOWSOUNDS           70)
(define-constant SM_CXMENUCHECK          71)
(define-constant SM_CYMENUCHECK          72)
(define-constant SM_SLOWMACHINE          73)
(define-constant SM_MIDEASTENABLED       74)
(define-constant SM_MOUSEWHEELPRESENT    75)
(define-constant SM_XVIRTUALSCREEN       76)
(define-constant SM_YVIRTUALSCREEN       77)
(define-constant SM_CXVIRTUALSCREEN      78)
(define-constant SM_CYVIRTUALSCREEN      79)
(define-constant SM_CMONITORS            80)
(define-constant SM_SAMEDISPLAYFORMAT    81)
(define-constant SM_IMMENABLED           82)
(define-constant SM_CXFOCUSBORDER        83)
(define-constant SM_CYFOCUSBORDER        84)
(define-constant SM_TABLETPC             86)
(define-constant SM_MEDIACENTER          87)
(define-constant SM_STARTER              88)
(define-constant SM_SERVERR2             89)
(define-constant SM_MOUSEHORIZONTALWHEELPRESENT    91)
(define-constant SM_CXPADDEDBORDER       92)
(define-constant SM_DIGITIZER            94)
(define-constant SM_MAXIMUMTOUCHES       95)
(define-constant SM_CMETRICS             97)
(define-constant SM_REMOTESESSION        #x1000)
(define-constant SM_SHUTTINGDOWN         #x2000)
(define-constant SM_REMOTECONTROL        #x2001)
(define-constant SM_CARETBLINKINGENABLED #x2002)
