;;; starter-kit-c.el --- C language settings
;;
;; Not part of the starter-kit.


;; use k&r
(add-hook 'c-mode-hook        
	  '(lambda ( ) 
	     (c-set-style "k&r")))


;; auto new line indents cursor when you press ENTER
;;(add-hook 'c-mode-hook
;;'(lambda ( )
;;   (c-toggle-auto-state)))


(provide 'starter-kit-c)
