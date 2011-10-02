;; Add texinfo path for OSX
(when (eq system-type 'darwin)
  (progn
    (setenv "PATH" (concat (getenv "PATH") ":/usr/local/bin:/usr/X11/bin:/usr/texbin"))
    (setq exec-path (append exec-path
                            '("/usr/local/bin" "/usr/X11/bin" "/usr/texbin")))))


;; allow pressing hash on osx
(global-set-key (kbd "M-3") "#")

;; use aspell, not ispell
(setq-default ispell-program-name "aspell")
