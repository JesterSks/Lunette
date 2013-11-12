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
  :description "CFFI Wrappers for common 32-bit Win32 (R) functions."
  :author "Robert Burghart <JesterSks@gmail.com>"
  :maintainer "Robert Burghart <JesterSks@gmail.com>"
  :license "Apache License Version 2.0"
  :depends-on (:cffi
               :alexandria)
  :components
  ((:module "src/System"
            :components
            ((:file "package")
             (:file "definitions" :depends-on ("package"))
             (:file "constants"   :depends-on ("package"))
             (:file "structures"  :depends-on ("package" "definitions"))
             (:file "functions"   :depends-on ("package" "definitions" "structures"))))
   (:module "src/VirtualKeys"
            :components
            ((:file "package")
             (:file "constants"   :depends-on ("package"))))
   (:module "src/Memory"
            :depends-on ("src/System")
            :components
            ((:file "package")
             (:file "functions"   :depends-on ("package"))))
   (:module "src/Errors"
            :depends-on ("src/Memory" "src/System")
            :components
            ((:file "package")
             (:file "constants"   :depends-on ("package"))
             (:file "functions"   :depends-on ("package"))))
   (:module "src/Resources"
            :depends-on ("src/System", "src/Errors")
            :components
            ((:file "package")
             (:file "constants"   :depends-on ("package"))
             (:file "functions"   :depends-on ("package"))))
   (:module "src/Messages"
            :depends-on ("src/System")
            :components
            ((:file "package")
             (:file "constants"   :depends-on ("package"))
             (:file "structures"  :depends-on ("package"))
             (:file "functions"   :depends-on ("package" "structures"))))
   (:module "src/Graphics"
            :depends-on ("src/System")
            :components
            ((:file "package")
             (:file "constants"   :depends-on ("package"))
             (:file "structures"  :depends-on ("package"))
             (:file "functions"   :depends-on ("package" "structures"))))
   (:module "src/Dialogs"
            :depends-on ("src/System" "src/Graphics" "src/Messages")
            :components
            ((:file "package")
             (:file "constants"  :depends-on ("package"))
             (:file "structures" :depends-on ("package"))
             (:file "functions"  :depends-on ("package"))))
   (:module "src/Dialogs/FileName"
            :depends-on ("src/System")
            :components
            ((:file "package")
             (:file "constants"  :depends-on ("package"))
             (:file "structures" :depends-on ("package"))
             (:file "functions"  :depends-on ("package" "structures"))))
   (:module "src/Dialogs/MessageBox"
            :depends-on ("src/System")
            :components
            ((:file "package")
             (:file "constants" :depends-on ("package"))
             (:file "functions" :depends-on ("package"))))
   (:module "src/Files"
            :depends-on ("src/System")
            :components
            ((:file "package")
             (:file "constants"  :depends-on ("package"))
             (:file "structures" :depends-on ("package"))
             (:file "functions"  :depends-on ("package" "structures"))))
   (:module "src/Graphics/Text"
            :depends-on ("src/System" "src/Graphics")
            :components
            ((:file "package")
             (:file "constants"   :depends-on ("package"))
             (:file "structures"  :depends-on ("package"))
             (:file "functions"   :depends-on ("package" "structures"))))
   (:module "src/Windows"
            :depends-on ("src/System" "src/Resources" "src/Graphics")
            :components
            ((:file "package")
             (:file "constants"   :depends-on ("package"))
             (:file "structures"  :depends-on ("package"))
             (:file "functions"   :depends-on ("package" "structures"))))
   (:module "src/Controls"
            :depends-on ("src/System" "src/Graphics" "src/Windows")
            :components
            ((:file "package")
             (:file "constants"  :depends-on ("package"))
             (:file "messages"   :depends-on ("package"))
             (:file "structures" :depends-on ("package"))
             (:file "functions"  :depends-on ("package" "structures"))))
   (:module "src/Controls/Button"
            :depends-on ("src")
            :components
            ((:file "package")
             (:file "constants" :depends-on ("package"))))
   (:module "src/Controls/Static"
            :depends-on ("src")
            :components
            ((:file "package")
             (:file "constants" :depends-on ("package"))))
   (:module "src/Controls/Edit"
            :depends-on ("src")
            :components
            ((:file "package")
             (:file "constants" :depends-on ("package"))
             (:file "messages"  :depends-on ("package"))))
   (:module "src/Controls/Calendar"
            :depends-on ("src" "src/Controls")
            :components
            ((:file "package")
             (:file "constants" :depends-on ("package"))
             (:file "messages"  :depends-on ("package"))))
   (:module "src/Controls/Header"
            :depends-on ("src" "src/Controls" "src/Graphics" "src/Windows")
            :components
            ((:file "package")
             (:file "constants"  :depends-on ("package"))
             (:file "messages"   :depends-on ("package"))
             (:file "structures" :depends-on ("package"))))
   (:module "src/Controls/ListBox"
            :depends-on ("src" "src/Controls")
            :components
            ((:file "package")
             (:file "constants" :depends-on ("package"))
             (:file "messages"  :depends-on ("package"))))
   (:module "src/Controls/ProgressBar"
            :depends-on ("src" "src/Controls" "src/Windows")
            :components
            ((:file "package")
             (:file "constants" :depends-on ("package"))
             (:file "messages"  :depends-on ("package"))))
   (:module "src/Controls/PropertySheets"
            :depends-on ("src" "src/Controls" "src/Windows" "src/Dialogs")
            :components
            ((:file "package")
             (:file "constants"  :depends-on ("package"))
             (:file "messages"   :depends-on ("package"))
             (:file "structures" :depends-on ("package"))
             (:file "functions"  :depends-on ("package" "structures"))))
   (:module "src/Controls/Scrollbar"
            :depends-on ("src" "src/Controls")
            :components
            ((:file "package")
             (:file "constants"  :depends-on ("package"))
             (:file "messages"   :depends-on ("package"))
             (:file "structures" :depends-on ("package"))
             (:file "functions"  :depends-on ("package" "structures"))))
   (:module "src/Controls/Spin"
            :depends-on ("src" "src/Controls" "src/Windows")
            :components
            ((:file "package")
             (:file "constants" :depends-on ("package"))
             (:file "messages"  :depends-on ("package"))))
   (:module "src/Controls/StatusBar"
            :depends-on ("src" "src/Controls" "src/Windows")
            :components
            ((:file "package")
             (:file "constants" :depends-on ("package"))
             (:file "messages"  :depends-on ("package"))))
   (:module "src/Controls/Tab"
            :depends-on ("src" "src/Controls")
            :components
            ((:file "package")
             (:file "constants"  :depends-on ("package"))
             (:file "messages"   :depends-on ("package"))
             (:file "structures" :depends-on ("package"))))
   (:module "src/Controls/Toolbar"
            :depends-on ("src" "src/Controls" "src/Windows")
            :components
            ((:file "package")
             (:file "constants"  :depends-on ("package"))
             (:file "messages"   :depends-on ("package"))
             (:file "structures" :depends-on ("package"))))
   (:module "src/Controls/Trackbar"
            :depends-on ("src" "src/Controls" "src/Windows")
            :components
            ((:file "package")
             (:file "constants" :depends-on ("package"))
             (:file "messages"  :depends-on ("package"))))
   (:module "src/Controls/TreeView"
            :depends-on ("src" "src/Controls")
            :components
            ((:file "package")
             (:file "constants"  :depends-on ("package"))
             (:file "messages"   :depends-on ("package"))
             (:file "structures" :depends-on ("package"))))
   (:module "src"
            :depends-on ("src/Messages" "src/Windows" "src/Graphics")
            :components
            ((:file "package")
             (:file "libraries"   :depends-on ("package"))))))
