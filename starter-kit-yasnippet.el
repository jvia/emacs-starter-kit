;;; starter-kit-yasnippet --- Snippet expander for Emacs.
;;
;; yasnippet is yet another snippet expansion system for Emacs. It is
;; inspired by TextMate’s templating syntax.
;;

;; Load if installed manually
;;(add-to-list ‘load-path (expand-file-name elisp-source-dir “yasnippet”))
(require 'yasnippet)

;; Load snippets directory
(yas/load-directory (expand-file-name "snippets" dotfiles-dir))

(provide 'starter-kit-yasnippet)
;;; starter-kit-yasnippet.el ends here

