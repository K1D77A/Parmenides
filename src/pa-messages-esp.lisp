;;; Version espagnola de los mensajes del FRulekit.
;;;
;;; Anado estos mensajes - :cslot-exists, :slot-exists, :ignore-frame,
;;; :no-such-frame-error, :ignore-set-slot, :slot-has-no-facets,
;;; :ignore-set-slot
;;; Modifico :slot-no-facets
;;; --Pete, 30-Mar-89

(in-package :parmenides)

(put-messages
 :esp
 :releasing-frame "Releaso frame"
 :no-such-frame "No existe el marco, ~S~%"
 :slot-has-no-facets "El slot ~S en marco ~S no tiene facetas"
 :ignore-set-slot "Ignorar el comando set-slot"
 :ignore-set-cslot "Ignorar el comando set-cslot"
 :ignore-get-facet "Ignorar el comando get-facet"
 :no-such-frame-error "No existe el marco, ~S"
 :cslot-exists "[El slot ~S ya es un slot de clase, se ignora]~%"
 :slot-exists "[El slot ~S ya es un slot en la clase, se ignora]~%"
 :ignore-frame "Ignorar el marco"
 :no-frame-but-relation "[~S no es un marco, aunque ~S tiene la relacion ~S con el.]~%"
 :inverse-slot-facet "[El slot ~S y la faceta ~S inversos no existen en el frame ~S]~%"
 :inverse-slot "[El slot inverso ~S no existe en el frame ~S]~%"
 :no-slot-in-class "[El slot ~S no esta definido en la clase ~S]~%"
 :no-cslot-in-class "[El slot de clase ~S no esta definido en la clase ~S]~%"
 :slot-no-facets "[El slot ~S no existe en la clase ~S o no tiene facetas]~%"
 :facet-not-in-slot "[La faceta ~S no esta definida en el slot ~S.]~%"
 :redefining-class "Redefiniendo la clase ~A~%"
 :defining-class "Definiendo la clase ~A~%"
 :parent-not-class "El padre ~A no es una clase, por lo tanto se ignora.~%"
 :cached-slot  "El slot cached ~A no esta definido en la clase ~A~%"
 :got-but-not-class "[Se ha leido ~S ~S pero ~S no es una clase, por lo tanto se ignora.]~%"
 :dont-set  "No intente dar valor al slot ~*~S"
 :slot-not-facet "El marco ~S no tiene una pareja slot/faceta ~S/~S"
 :set-slot-facet  "Se intenta dar valor a una pareja no existente slot/faceta ~A/~A en el marco de la clase ~A~%"
 :ignore-remove-frame  "Ignorar el remove-frame"
 :ignore-replace-frame  "Ignorar el replace-frame"
 :replace-doesnt-work  "Replace-frame no trabaja con clases"
 :ignore-list  "Ignorar la lista"
 :expecting-slot "Esperando encontrar un nombre de slot, se ha encontrado ~S"
 :ignore-add-slot  "Ignorar el comando add-slot"
 :only-slots-to-classes "Solo se pueden anadir slots a las clases"
 :ignore-add-cslot  "Ignorar el comando add-cslot"
 :only-cslots-to-classes "Solo se pueden anadir class slots a las clases"
 :no-such-class  "~A no es una clase valida."
 :dont-make-instance  "No crear la instancia."
 :different-names "La instancia no puede tener el mismo nombre que una clase, ~A"
 :continue "Continuar"
 :slot-make-modify "El slot ~S pasado como argumento a make- or modify-frame no esta en la clase ~S"
 :not-all-values  "No se han proporcionado todos los valores de los slots al hacer def-frame."
 :skip-rename  "Ignorar el comando rename"
 :frame-exists  "El frame ~S ya existe.")
