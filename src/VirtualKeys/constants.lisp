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

;;; Virtual Keys, Standard Set
(define-constant VK_LBUTTON        #x01)
(define-constant VK_RBUTTON        #x02)
(define-constant VK_CANCEL         #x03)
(define-constant VK_MBUTTON        #x04)
(define-constant VK_XBUTTON1       #x05)
(define-constant VK_XBUTTON2       #x06)

;;; 0x07 : unassigned

(define-constant VK_BACK           #x08)
(define-constant VK_TAB            #x09)

;;; 0x0A - 0x0B : reserved

(define-constant VK_CLEAR          #x0C)
(define-constant VK_RETURN         #x0D)
(define-constant VK_SHIFT          #x10)
(define-constant VK_CONTROL        #x11)
(define-constant VK_MENU           #x12)
(define-constant VK_PAUSE          #x13)
(define-constant VK_CAPITAL        #x14)
(define-constant VK_KANA           #x15)
(define-constant VK_HANGEUL        #x15)
(define-constant VK_HANGUL         #x15)
(define-constant VK_JUNJA          #x17)
(define-constant VK_FINAL          #x18)
(define-constant VK_HANJA          #x19)
(define-constant VK_KANJI          #x19)
(define-constant VK_ESCAPE         #x1B)
(define-constant VK_CONVERT        #x1C)
(define-constant VK_NONCONVERT     #x1D)
(define-constant VK_ACCEPT         #x1E)
(define-constant VK_MODECHANGE     #x1F)
(define-constant VK_SPACE          #x20)
(define-constant VK_PRIOR          #x21)
(define-constant VK_NEXT           #x22)
(define-constant VK_END            #x23)
(define-constant VK_HOME           #x24)
(define-constant VK_LEFT           #x25)
(define-constant VK_UP             #x26)
(define-constant VK_RIGHT          #x27)
(define-constant VK_DOWN           #x28)
(define-constant VK_SELECT         #x29)
(define-constant VK_PRINT          #x2A)
(define-constant VK_EXECUTE        #x2B)
(define-constant VK_SNAPSHOT       #x2C)
(define-constant VK_INSERT         #x2D)
(define-constant VK_DELETE         #x2E)
(define-constant VK_HELP           #x2F)

;;; VK_0-VK_9 and VK_A-VK_Z match the ASCII values
(define-constant VK_0              #x30)
(define-constant VK_1              #x31)
(define-constant VK_2              #x32)
(define-constant VK_3              #x33)
(define-constant VK_4              #x34)
(define-constant VK_5              #x35)
(define-constant VK_6              #x36)
(define-constant VK_7              #x37)
(define-constant VK_8              #x38)
(define-constant VK_9              #x39)

(define-constant VK_A              #x41)
(define-constant VK_B              #x42)
(define-constant VK_C              #x43)
(define-constant VK_D              #x44)
(define-constant VK_E              #x45)
(define-constant VK_F              #x46)
(define-constant VK_G              #x47)
(define-constant VK_H              #x48)
(define-constant VK_I              #x49)
(define-constant VK_J              #x4A)
(define-constant VK_K              #x4B)
(define-constant VK_L              #x4C)
(define-constant VK_M              #x4D)
(define-constant VK_N              #x4E)
(define-constant VK_O              #x4F)
(define-constant VK_P              #x50)
(define-constant VK_Q              #x51)
(define-constant VK_R              #x52)
(define-constant VK_S              #x53)
(define-constant VK_T              #x54)
(define-constant VK_U              #x55)
(define-constant VK_V              #x56)
(define-constant VK_W              #x57)
(define-constant VK_X              #x58)
(define-constant VK_Y              #x59)
(define-constant VK_Z              #x5A)

(define-constant VK_LWIN           #x5B)
(define-constant VK_RWIN           #x5C)
(define-constant VK_APPS           #x5D)

;;; 0x5E : reserved

(define-constant VK_SLEEP          #x5F)
(define-constant VK_NUMPAD0        #x60)
(define-constant VK_NUMPAD1        #x61)
(define-constant VK_NUMPAD2        #x62)
(define-constant VK_NUMPAD3        #x63)
(define-constant VK_NUMPAD4        #x64)
(define-constant VK_NUMPAD5        #x65)
(define-constant VK_NUMPAD6        #x66)
(define-constant VK_NUMPAD7        #x67)
(define-constant VK_NUMPAD8        #x68)
(define-constant VK_NUMPAD9        #x69)
(define-constant VK_MULTIPLY       #x6A)
(define-constant VK_ADD            #x6B)
(define-constant VK_SEPARATOR      #x6C)
(define-constant VK_SUBTRACT       #x6D)
(define-constant VK_DECIMAL        #x6E)
(define-constant VK_DIVIDE         #x6F)
(define-constant VK_F1             #x70)
(define-constant VK_F2             #x71)
(define-constant VK_F3             #x72)
(define-constant VK_F4             #x73)
(define-constant VK_F5             #x74)
(define-constant VK_F6             #x75)
(define-constant VK_F7             #x76)
(define-constant VK_F8             #x77)
(define-constant VK_F9             #x78)
(define-constant VK_F10            #x79)
(define-constant VK_F11            #x7A)
(define-constant VK_F12            #x7B)
(define-constant VK_F13            #x7C)
(define-constant VK_F14            #x7D)
(define-constant VK_F15            #x7E)
(define-constant VK_F16            #x7F)
(define-constant VK_F17            #x80)
(define-constant VK_F18            #x81)
(define-constant VK_F19            #x82)
(define-constant VK_F20            #x83)
(define-constant VK_F21            #x84)
(define-constant VK_F22            #x85)
(define-constant VK_F23            #x86)
(define-constant VK_F24            #x87)

;;; 0x88 - 0x8F : unassigned

(define-constant VK_NUMLOCK        #x90)
(define-constant VK_SCROLL         #x91)
(define-constant VK_OEM_NEC_EQUAL  #x92)
(define-constant VK_OEM_FJ_JISHO   #x92)
(define-constant VK_OEM_FJ_MASSHOU #x93)
(define-constant VK_OEM_FJ_TOUROKU #x94)
(define-constant VK_OEM_FJ_LOYA    #x95)
(define-constant VK_OEM_FJ_ROYA    #x96)

;;; 0x97 - 0x9F : unassigned

#|
 VK_L* & VK_R* - left and right Alt, Ctrl and Shift virtual keys.
 Used only as parameters to GetAsyncKeyState() and GetKeyState().
 No other API or message will distinguish left and right keys in this way.
|#
(define-constant VK_LSHIFT              #xA0)
(define-constant VK_RSHIFT              #xA1)
(define-constant VK_LCONTROL            #xA2)
(define-constant VK_RCONTROL            #xA3)
(define-constant VK_LMENU               #xA4)
(define-constant VK_RMENU               #xA5)
(define-constant VK_BROWSER_BACK        #xA6)
(define-constant VK_BROWSER_FORWARD     #xA7)
(define-constant VK_BROWSER_REFRESH     #xA8)
(define-constant VK_BROWSER_STOP        #xA9)
(define-constant VK_BROWSER_SEARCH      #xAA)
(define-constant VK_BROWSER_FAVORITES   #xAB)
(define-constant VK_BROWSER_HOME        #xAC)
(define-constant VK_VOLUME_MUTE         #xAD)
(define-constant VK_VOLUME_DOWN         #xAE)
(define-constant VK_VOLUME_UP           #xAF)
(define-constant VK_MEDIA_NEXT_TRACK    #xB0)
(define-constant VK_MEDIA_PREV_TRACK    #xB1)
(define-constant VK_MEDIA_STOP          #xB2)
(define-constant VK_MEDIA_PLAY_PAUSE    #xB3)
(define-constant VK_LAUNCH_MAIL         #xB4)
(define-constant VK_LAUNCH_MEDIA_SELECT #xB5)
(define-constant VK_LAUNCH_APP1         #xB6)
(define-constant VK_LAUNCH_APP2         #xB7)

;;; 0xB8 - 0xB9 : reserved

(define-constant VK_OEM_1          #xBA)
(define-constant VK_OEM_PLUS       #xBB)
(define-constant VK_OEM_COMMA      #xBC)
(define-constant VK_OEM_MINUS      #xBD)
(define-constant VK_OEM_PERIOD     #xBE)
(define-constant VK_OEM_2          #xBF)
(define-constant VK_OEM_3          #xC0)

;;; 0xC1 - 0xD7 : reserved

;;; 0xD8 - 0xDA : unassigned

(define-constant VK_OEM_4          #xDB)
(define-constant VK_OEM_5          #xDC)
(define-constant VK_OEM_6          #xDD)
(define-constant VK_OEM_7          #xDE)
(define-constant VK_OEM_8          #xDF)

;;; 0xE0 : reserved

(define-constant VK_OEM_AX         #xE1)
(define-constant VK_OEM_102        #xE2)
(define-constant VK_ICO_HELP       #xE3)
(define-constant VK_ICO_00         #xE4)
(define-constant VK_PROCESSKEY     #xE5)
(define-constant VK_ICO_CLEAR      #xE6)
(define-constant VK_PACKET         #xE7)

;;; 0xE8 : unassigned

(define-constant VK_OEM_RESET      #xE9)
(define-constant VK_OEM_JUMP       #xEA)
(define-constant VK_OEM_PA1        #xEB)
(define-constant VK_OEM_PA2        #xEC)
(define-constant VK_OEM_PA3        #xED)
(define-constant VK_OEM_WSCTRL     #xEE)
(define-constant VK_OEM_CUSEL      #xEF)
(define-constant VK_OEM_ATTN       #xF0)
(define-constant VK_OEM_FINISH     #xF1)
(define-constant VK_OEM_COPY       #xF2)
(define-constant VK_OEM_AUTO       #xF3)
(define-constant VK_OEM_ENLW       #xF4)
(define-constant VK_OEM_BACKTAB    #xF5)

(define-constant VK_ATTN           #xF6)
(define-constant VK_CRSEL          #xF7)
(define-constant VK_EXSEL          #xF8)
(define-constant VK_EREOF          #xF9)
(define-constant VK_PLAY           #xFA)
(define-constant VK_ZOOM           #xFB)
(define-constant VK_NONAME         #xFC)
(define-constant VK_PA1            #xFD)
(define-constant VK_OEM_CLEAR      #xFE)

;;; 0xFF : reserved
