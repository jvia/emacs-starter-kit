(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)
(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

;; Add in your own as you wish:
(defvar my-packages '(
                      auctex
                      cdlatex
                      color-theme
                      color-theme-sanityinc-solarized
                      ctags
                      gnuplot
                      idle-highlight
                      org
                      slime
                      starter-kit
                      starter-kit-bindings
                      starter-kit-lisp
                      synonyms
                      yaml-mode
                      yasnippet
                      yasnippet-bundle
                      yas-jit
                      )
  "A list of packages to ensure are installed at launch.")

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

;; Color theme
(color-theme-sanityinc-solarized-dark)

