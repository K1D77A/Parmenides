;;; English version of Parmenides messages
;;;
;;; Added the following messages - :cslot-exists, :slot-exists, :ignore-frame,
;;; :no-such-frame-error, :ignore-set-slot, :slot-has-no-facets.
;;; Modified :slot-no-facets
;;; --Pete, 30-Mar-89

(in-package :parmenides)

(put-messages
 :eng
 :releasing-frame "Releasing frame"
 :no-such-frame "No such frame, ~S~%"
 :slot-has-no-facets "Slot ~S in frame ~S does not have facets"
 :ignore-set-slot "Ignore this set-slot command"
 :ignore-set-cslot "Ignore this set-cslot command"
 :ignore-get-facet "Ignore this get-facet command"
 :no-such-frame-error "No such frame, ~S"
 :cslot-exists "[~S is already a class slot, ignoring]~%"
 :slot-exists "[~S is already a slot in that class, ignoring]~%"
 :ignore-frame "Ignore that frame"
 :no-frame-but-relation "[~S is not a frame, though ~S has relation ~S to it.]~%"
 :inverse-slot-facet "[Inverse slot & facet ~S & ~S do not exist in range frame ~S]~%"
 :inverse-slot "[Inverse slot ~S does not exist in range frame ~S]~%"
 :no-slot-in-class "[No slot ~S in class ~S]~%"
 :no-cslot-in-class "[No class slot ~S in class ~S]~%"
 :slot-no-facets "[Slot ~S is not in class ~S or it has no facets]~%"
 :facet-not-in-slot "[Facet ~S is not found in slot ~S.]~%"
 :redefining-class "Redefining class ~A~%"
 :defining-class "Defining class ~A~%"
 :parent-not-class "Parent ~A is not a class, ignoring.~%"
 :cached-slot  "Cached slot ~A has no definition in class ~A~%"
 :got-but-not-class "[Got ~S ~S but ~S is not a class, ignoring.]~%"
 :dont-set  "Don't set the ~*~S slot"
 :slot-not-facet "Frame ~S does not have a slot/facet pair ~S/~S"
 :set-slot-facet  "Attempt to set non-existent slot/facet ~A/~A in frame of class ~A~%"
 :ignore-remove-frame  "Ignore this remove-frame"
 :ignore-replace-frame  "Ignore this replace-frame"
 :replace-doesnt-work  "Replace-frame does not work on classes"
 :ignore-list  "Ignore that list"
 :expecting-slot "Got ~S when expecting a slot name"
 :ignore-add-slot  "Ignore add-slot command"
 :only-slots-to-classes "Can only add slots to frame classes"
 :ignore-add-cslot  "Ignore add-cslot command"
 :only-cslots-to-classes "Can only add class slots to frame classes"
 :no-such-class  "~A is not a valid class."
 :dont-make-instance  "Don't make an instance."
 :different-names "You tried to make an instance with the same name as a class, ~A"
 :continue "Continue"
 :slot-make-modify "Slot ~S given to make- or modify-frame is not in class ~S"
 :not-all-values  "Not all slot values were provided by def-frame."
 :skip-rename  "Skip the rename"
 :frame-exists  "Frame ~S already exists.")
