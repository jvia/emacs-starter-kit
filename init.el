;;; init.el --- Where all the magic begins
;;
;; Part of the Emacs Starter Kit
;;
;; This is the first thing to get loaded.


;; Turn off mouse interface early in startup to avoid momentary display
;; You really don't need these; trust me.
(unless (eq system-type 'darwin)
  (if (fboundp 'menu-bar-mode) (menu-bar-mode -1)))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

;; remember this directory
(setq starter-kit-dir
      (file-name-directory (or load-file-name (buffer-file-name))))

;; load up the starter kit
(org-babel-load-file (expand-file-name "emacs.org" starter-kit-dir))

;;; init.el ends here
