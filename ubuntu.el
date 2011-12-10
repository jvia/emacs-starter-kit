;; Emacs stuff for ROS

;; (let ((ros-root "/opt/ros/electirc/ros"))
;;   (print "HERE")
;;   (setenv "ROS_ROOT" ros-root)
;;   (setenv "PATH"
;;           (concat (getenv "PATH")
;;                   (concat ":" ros-root "/bin")))
;;   (setenv "PYTHONPATH"
;;           (concat (getenv "PYTHONPATH")
;;                   (concat ":" ros-root "/core/roslib/src")))
;;   (setenv "ROS_PACKAGE_PATH"
;;           (concat "/opt/ros/electric/stacks" ":" "/home/jxv911/ROS"))
;;   (setenv "ROS_MASTER_URI" "http://localhost:11311"))
(add-to-list 'load-path "~/.emacs.d/jxv911/slime/")
(require 'slime)

(add-to-list 'load-path "/opt/ros/electric/ros/tools/rosemacs")
(require 'rosemacs)
(invoke-rosemacs)
(global-set-key "\C-x\C-r" ros-keymap)
(setq ros-completion-function 'ido-completing-read)


;;; Slime stuff
(setq inferior-lisp-program "/opt/ros/electric/stacks/roslisp_support/sbcl/sbcl/bin/sbcl")
(setenv "SBCL_HOME" "/opt/ros/electric/stacks/roslisp_support/sbcl/sbcl/lib/sbcl")
(slime-setup '(slime-fancy slime-asdf slime-ros))
