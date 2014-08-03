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

(defpackage #:lunette-system
  (:use #:common-lisp
        #:asdf))

(in-package #:lunette-system)

(defsystem lunette
  :version "0.0.1"
  :description "CFFI Wrappers for common 32-bit Win32® functions."
  :author "Robert Burghart <JesterSks@gmail.com>"
  :maintainer "Robert Burghart <JesterSks@gmail.com>"
  :license "Apache License Version 2.0"
  :depends-on (:cffi
               :alexandria)
  :components
  ((:module "src"
            :components
            ((:file "package")
             (:file "libraries" :depends-on ("package"))))
   (:module "src/System"
            :depends-on ("src")
            :components
            ((:file "definitions")
             (:file "constants")
             (:file "structures" :depends-on ("definitions"))
             (:file "functions"  :depends-on ("definitions" "structures"))
             (:file "exports"    :depends-on ("definitions" "constants" "structures" "functions"))))
   (:module "src/VirtualKeys"
            :depends-on ("src")
            :components
            ((:file "constants")
             (:file "exports" :depends-on ("constants"))))
   (:module "src/Memory"
            :depends-on ("src" "src/System")
            :components
            ((:file "functions")
             (:file "exports" :depends-on ("functions"))))
   (:module "src/Errors"
            :depends-on ("src" "src/Memory" "src/System")
            :components
            ((:file "constants")
             (:file "functions")
             (:file "exports" :depends-on ("constants" "functions"))))
   (:module "src/Resources"
            :depends-on ("src" "src/System")
            :components
            ((:file "constants")
             (:file "functions")
             (:file "exports" :depends-on ("constants" "functions"))))
   (:module "src/Messages"
            :depends-on ("src" "src/System")
            :components
            ((:file "constants")
             (:file "structures")
             (:file "functions" :depends-on ("structures"))
             (:file "exports"   :depends-on ("constants" "structures" "functions"))))
   (:module "src/Graphics"
            :depends-on ("src" "src/System")
            :components
            ((:file "constants")
             (:file "structures")
             (:file "functions" :depends-on ("structures"))
             (:file "exports"   :depends-on ("constants" "structures" "functions"))))
   (:module "src/Dialogs"
            :depends-on ("src" "src/System" "src/Graphics" "src/Messages")
            :components
            ((:file "constants")
             (:file "structures")
             (:file "functions")
             (:file "exports" :depends-on ("constants" "structures" "functions"))))
   (:module "src/Dialogs/FileName"
            :depends-on ("src" "src/System")
            :components
            ((:file "constants")
             (:file "structures")
             (:file "functions" :depends-on ("structures"))
             (:file "exports"   :depends-on ("constants" "structures" "functions"))))
   (:module "src/Dialogs/MessageBox"
            :depends-on ("src" "src/System")
            :components
            ((:file "constants")
             (:file "functions")
             (:file "exports" :depends-on ("constants" "functions"))))
   (:module "src/Files"
            :depends-on ("src" "src/System")
            :components
            ((:file "constants")
             (:file "structures")
             (:file "functions" :depends-on ("structures"))
             (:file "exports"   :depends-on ("constants" "structures" "functions"))))
   (:module "src/Graphics/Text"
            :depends-on ("src" "src/System" "src/Graphics")
            :components
            ((:file "constants")
             (:file "structures")
             (:file "functions" :depends-on ("structures"))
             (:file "exports"   :depends-on ("constants" "structures" "functions"))))
   (:module "src/Windows"
            :depends-on ("src" "src/System" "src/Resources" "src/Graphics")
            :components
            ((:file "constants")
             (:file "structures")
             (:file "functions" :depends-on ("structures"))
             (:file "exports"   :depends-on ("constants" "structures" "functions"))))
   (:module "src/Controls"
            :depends-on ("src" "src/System" "src/Graphics" "src/Windows")
            :components
            ((:file "constants")
             (:file "messages")
             (:file "structures")
             (:file "functions" :depends-on ("structures"))
             (:file "exports"   :depends-on ("constants" "messages" "structures" "functions"))))
   (:module "src/Controls/Button"
            :depends-on ("src")
            :serial t
            :components
            ((:file "constants")
             (:file "exports")))
   (:module "src/Controls/Static"
            :depends-on ("src")
            :serial t
            :components
            ((:file "constants")
             (:file "exports")))
   (:module "src/Controls/Edit"
            :depends-on ("src")
            :components
            ((:file "constants")
             (:file "messages")
             (:file "exports" :depends-on ("constants" "messages"))))
   (:module "src/Controls/Calendar"
            :depends-on ("src" "src/Controls")
            :components
            ((:file "constants")
             (:file "messages")
             (:file "exports" :depends-on ("constants" "messages"))))
   (:module "src/Controls/Header"
            :depends-on ("src" "src/Controls" "src/Graphics" "src/Windows")
            :components
            ((:file "constants")
             (:file "messages")
             (:file "structures")
             (:file "exports" :depends-on ("constants" "messages" "structures"))))
   (:module "src/Controls/ListBox"
            :depends-on ("src" "src/Controls")
            :components
            ((:file "constants")
             (:file "messages")
             (:file "exports" :depends-on ("constants" "messages"))))
   (:module "src/Controls/ProgressBar"
            :depends-on ("src" "src/Controls" "src/Windows")
            :components
            ((:file "constants")
             (:file "messages")
             (:file "exports" :depends-on ("constants" "messages"))))
   (:module "src/Controls/PropertySheets"
            :depends-on ("src" "src/Controls" "src/Windows" "src/Dialogs")
            :components
            ((:file "constants")
             (:file "messages")
             (:file "structures")
             (:file "functions" :depends-on ("structures"))
             (:file "exports"   :depends-on ("constants" "messages" "structures" "functions"))))
   (:module "src/Controls/Scrollbar"
            :depends-on ("src" "src/Controls")
            :components
            ((:file "constants")
             (:file "messages" )
             (:file "structures")
             (:file "functions"  :depends-on ("structures"))
             (:file "exports"    :depends-on ("constants" "messages" "structures" "functions"))))
   (:module "src/Controls/Spin"
            :depends-on ("src" "src/Controls" "src/Windows")
            :components
            ((:file "constants")
             (:file "messages")
             (:file "exports" :depends-on ("constants" "messages"))))
   (:module "src/Controls/StatusBar"
            :depends-on ("src" "src/Controls" "src/Windows")
            :components
            ((:file "constants")
             (:file "messages")
             (:file "exports" :depends-on ("constants" "messages"))))
   (:module "src/Controls/Tab"
            :depends-on ("src" "src/Controls")
            :components
            ((:file "constants")
             (:file "messages")
             (:file "structures")
             (:file "exports" :depends-on ("constants" "messages" "structures"))))
   (:module "src/Controls/Toolbar"
            :depends-on ("src" "src/Controls" "src/Windows")
            :components
            ((:file "constants")
             (:file "messages")
             (:file "structures")
             (:file "exports" :depends-on ("constants" "messages" "structures"))))
   (:module "src/Controls/Trackbar"
            :depends-on ("src" "src/Controls" "src/Windows")
            :components
            ((:file "constants")
             (:file "messages")
             (:file "exports" :depends-on ("constants" "messages"))))
   (:module "src/Controls/TreeView"
            :depends-on ("src" "src/Controls")
            :components
            ((:file "constants")
             (:file "messages")
             (:file "structures")
             (:file "exports" :depends-on ("constants" "messages" "structures"))))
   (:module "src/Graphics/wgl"
            :depends-on ("src" "src/System")
            :serial t
            :components
            ((:file "functions")
             (:file "exports")))))
