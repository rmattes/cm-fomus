;;;; cm-fomus.lisp

(in-package #:cm-fomus)

(defparameter instantiable-classes '(fomus:fomusobj-base
                                     fomus:event-base
                                     fomus:timesig-repl fomus:timesig fomus:mark
                                     fomus:dur-base fomus:note fomus:rest fomus:part fomus:meas
                                     fomus:ex-base fomus:noteex fomus:restex fomus:partex)
  "Lit of classes that can be instanitaited with cm:new")

;;; FIXME: we need to [ab]use CM's finalize-class as long as we don't use closer-mop in CM
(dolist (class instantiable-classes)
  (cm::finalize-class (find-class class)))
