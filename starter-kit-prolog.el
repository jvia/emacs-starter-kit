;;; starter-kit-prolog --- Prolog bindings
;;
;;
;; Part of my starter kit.

;; Load prolog.el
(add-to-list 'load-path (concat dotfiles-dir "src"))

;; Setup modes
(autoload 'run-prolog   "prolog" "Start a Prolog sub-process." t)
(autoload 'prolog-mode  "prolog" "Major mode for editing Prolog programs." t)
(autoload 'mercury-mode "prolog" "Major mode for editing Mercury programs." t)

;; Use SWI-Prolog
(setq prolog-system 'swi)
(setq auto-mode-alist (append '(("\\.pl$" . prolog-mode)
                                ("\\.m$" . mercury-mode))
                              auto-mode-alist))


(provide 'starter-kit-prolog)
;;; starter-kit-prolog.el ends here
