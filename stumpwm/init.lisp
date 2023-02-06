(in-package :stumpwm)

(setf *startup-message* "Welcome, Luke.")

(defparameter *modules-directory* (directory-namestring (truename (merge-pathnames (user-homedir-pathname) ".stumpwm.d"))))

(export '*modules-directory*)

;; Function to import modules
(defun module-load (name)
  (let ((fp (merge-pathnames (string-downcase (format nil "~a.lisp" name)) *modules-directory*)))
    (if (probe-file fp)
      (when (load fp)
	(message "Successfully loaded module `~a'." name))
      (err "Module `~a' (``~a'') doesn't exist'" fp name)))
  (sleep 1/20))

;; Macro to add key
;; Instead of : (define-key *root-map* (kbd "BINDINGS") "COMMAND")
(defmacro add-key (binding command)
  `(define-key *root-map* (kbd ,binding) ,command))

;; load modules
(module-load 'keybindings)
(module-load 'display)
