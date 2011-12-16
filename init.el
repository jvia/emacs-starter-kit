;;; init.el --- Where all the magic begins
;;
;; Part of the Emacs Starter Kit
;;
;; This is the first thing to get loaded.


;; Turn off mouse interface early in startup to avoid momentary display
;; You really don't need these; trust me.
;;; (unless (eq system-type 'darwin))

(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

;; remember this directory
(setq starter-kit-dir
      (file-name-directory (or load-file-name (buffer-file-name))))

;; load up the starter kit
(org-babel-load-file (expand-file-name "emacs.org" starter-kit-dir))

;;; init.el ends here

;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ;;;                            personal stuff                       ;;
;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ;; Color theme
;; (color-theme-sanityinc-solarized-dark)
;; (global-set-key (kbd "M-q") 'fill-paragraph)
;; (setq column-number-mode t)
;; (global-set-key (kbd "S-p") 'hyperspec-lookup)
;; (global-set-key [f1] 'ibuffer)


;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ;;;                            yasnippet                            ;;
;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; (setq yas/prompt-functions '(yas/ido-prompt yas/dropdown-prompt))


;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ;;;                        Settings for C/C++                       ;;
;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; (setq c-default-style '((java-mode . "java")
;;                         (awk-mode  . "awk")
;;                         (other     . "linux")))
;; ;; Automatically reindent current line after 'punctuation' character.
;; (setq-default c-electric-flag t)
;; (setq c-basic-offset 4)
;; ;; Documentation
;; (add-hook 'c-mode-hook 'c-turn-on-eldoc-mode)

;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ;;;                      Settings for Lisp                          ;;
;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; (add-to-list 'load-path "~/.emacs.d/jxv911/slime/")
;; (require 'slime)
;; (if (eq system-type 'darwin)
;;     (progn
;;       (setq inferior-lisp-program "sbcl")
;;       (slime-setup '(slime-fancy))))


;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ;;;                           Projects                             ;;;
;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; (setq org-publish-project-alist
;;       '(("org-via"
;;          ;; Path to your org files.
;;          :base-directory "~/Sites/jeremiahvia.com/_org/"
;;          :base-extension "org"
;;          :exclude "md\\|markdown"

;;          ;; Path to your Jekyll project.
;;          :publishing-directory "~/Sites/jeremiahvia.com/jekyll/"
;;          :recursive t
;;          :publishing-function org-publish-org-to-html
;;          :headline-levels 4
;;          :html-extension "html"
;;          :body-only t ;; Only export section between <body> </body>
;;          )

;;         ("org-static-via"
;;          :base-directory "~/Sites/jeremiahvia.com/_org/"
;;          :base-extension "css\\|js\\|png\\|jpg\\|gif\\|pdf\\|mp3\\|ogg\\|swf\\|php\\|ico"
;;          :publishing-directory "~/Sites/jeremiahvia.com/jekyll/"
;;          :recursive t
;;          :publishing-function org-publish-attachment
;;          )

;;         ;; Publish everything
;;         ("via" :components ("org-via" "org-static-via")))
;;       )


;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ;;                   Emacs generated custom stuff                   ;;
;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; (custom-set-variables
;;  ;; custom-set-variables was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  '(doc-view-continuous t)
;;  '(org-agenda-files nil))
;; (custom-set-faces
;;  ;; custom-set-faces was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  )


;; ;;; init.el ends here
