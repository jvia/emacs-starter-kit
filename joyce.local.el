;; Add texinfo path for OSX
(setq exec-path (append exec-path '("/usr/local/bin" "/usr/X11/bin" "/usr/texbin")))
(setenv "PATH" (concat (getenv "PATH") ":/usr/local/bin:/usr/X11/bin:/usr/texbin"))

;; Open tex output
(setq TeX-view-program-selection
      '((output-dvi "DVI Viewer")
        (output-pdf "PDF Viewer")
        (output-html "Google Chrome")))
(setq TeX-view-program-list
      '(("DVI Viewer" "open %o")
        ("PDF Viewer" "open %o")
        ("Google Chrome" "open %o")))

;; allow pressing hash on osx
(global-set-key (kbd "M-3") "#")

;; use aspell, not ispell
(setq-default ispell-program-name "aspell")

(setq menu-bar-mode 1)
