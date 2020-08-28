(in-package :parmenides)

(defmacro get-free-frame (size &key adjustable)
  (let ((frame-name (gentemp "frame-")))
    `(let ((free-list (if ,adjustable *ADJ-FREE-LIST* *FREE-LIST*)))
       (if (>= ,size (get-frame-size free-list))
           (setf free-list (adjust-array free-list (1+ ,size))))
       (let ((,frame-name (aref free-list ,size)))
         (cond (,frame-name
                ;;                (format T "Getting a free frame of size ~S~&" ,size)
                (setf (aref free-list ,size)
                      (first-position ,frame-name))
                (setf (first-position ,frame-name) nil)
                ,frame-name)
               (T (create-frame ,size ,adjustable)))))))

(defun make-default-frame (class)
  (let* ((ftype (name-to-frame-type class))
         (plist (pa-frame-slots ftype))
         (newframe (get-free-frame (pa-frame-numslots ftype)
                                   :adjustable T))
         (fi-plist (pa-frame-index-plist ftype))
         sval snum)
    (dolist (sname (pa-frame-snames ftype))
      (setq snum (get-slot-num fi-plist sname))
      (cond ((not (faceted-p2 fi-plist sname))
             (setq sval (getf plist sname *DEFAULT*))
             (if (eq sval *DEFAULT*)
                 (ml-error :not-all-values)))
            (T (setq sval (getf plist sname *DEFAULT*))
               (if (eq sval *DEFAULT*)
                   (ml-error :not-all-values)
                   (setq sval (make-default-frame-slot (eval-plist sval))))))
      (setf (aref newframe snum) sval))
    (setf (aref newframe 0) class)
    (push newframe (get class :instances))
    newframe))
