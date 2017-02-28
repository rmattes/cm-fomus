;;;; cm-fomus.lisp

(in-package #:cm-fomus)

(defparameter instantiable-classes '(fomusobj-base event-base
                                     timesig-repl timesig mark
                                     dur-base note rest part meas
                                     ex-base noteex restex partex)
  "Lit of classes that can be instanitaited with cm:new")

(dolist (class instantiable-classes)
  (finalize-class (find-class class)))
