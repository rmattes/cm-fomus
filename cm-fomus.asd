;;;; cm-fomus.asd

(asdf:defsystem #:cm-fomus
  :description "Describe cm-fomus here"
  :author "Ralf Mattes <rm@mh-freiburg.de>"
  :license "LGPL-v2.1 or later"
  :depends-on (#:cm
               #:fomus)
  :serial t
  :components ((:file "package")
               (:file "cm-fomus")))
