;;; starter-kit-latex.el --- Handy LaTeX bindings.
;;
;; *Not* part of of the Emacs starter kit.
;;

;; Load packages
(load "auctex.el" nil t t)
(load "preview-latex.el" nil t t)
(add-hook 'LaTeX-mode-hook 'turn-on-reftex)

;; Configure AucTex
(add-hook 'LaTeX-mode-hook 'TeX-PDF-mode)

(provide 'starter-kit-latex)
;;; starter-kit-latex ends here
