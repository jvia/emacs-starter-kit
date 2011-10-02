;; Settings for C/C++

(setq c-default-style '((java-mode . "java")
                        (awk-mode  . "awk")
                        (other     . "linux")))

;; Automatically reindent current line after 'punctuation' character.
(setq-default c-electric-flag t)

;; File cleanups
(add-to-list 'c-cleanup-list '(;; clean up terminating semicolon
                               defun-close-semi))
