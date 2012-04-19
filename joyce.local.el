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






;; got this line from one of the tutorials. Seemed interesting enough
;;; (setq gnus-invalid-group-regexp "[:`'\"]\\|^$")
;; Make Gnus NOT ignore [Gmail] mailboxes
(setq gnus-ignored-newsgroups "^to\\.\\|^[0-9. ]+\\( \\|$\\)\\|^[\"]\"[#'()]")

;; standard way of getting imap going
(setq gnus-select-method
      '(nnimap "gmail"
               (nnimap-address "imap.gmail.com")
               (nnimap-server-port 993)
               (nnimap-stream ssl)))

;; set up smtp so we can send from gmail too:
(setq message-send-mail-function 'smtpmail-send-it
      smtpmail-starttls-credentials '(("smtp.gmail.com" 587 nil nil))
      smtpmail-auth-credentials     '(("smtp.gmail.com" 587 "jeremiah.via@gmail.com" nil))
      smtpmail-default-smtp-server  "smtp.gmail.com"
      smtpmail-smtp-server          "smtp.gmail.com"
      smtpmail-smtp-service         587)

;;http://www.emacswiki.org/cgi-bin/wiki/GnusGmail
;;http://linil.wordpress.com/2008/01/18/gnus-gmail/

(add-hook 'gnus-group-mode-hook 'gnus-topic-mode)

;; Threads are nice!
(setq gnus-summary-thread-gathering-function
      'gnus-gather-threads-by-subject)

(setq gnus-posting-styles
      '((".*"
         (name "Jeremiah Via")
         ("X-URL" "http://jeremiahvia.com/"))))

(setq user-full-name "Jeremiah")
(setq user-mail-address "jeremiah.via@gmail.com")
(setq send-mail-function 'smtpmail-send-it)
