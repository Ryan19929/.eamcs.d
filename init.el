(add-to-list 'load-path "~/.emacs.d/lisp/")

;; Package Management
;; --------------------------
(require 'init-packages)
;; Emacs-Ui
;; --------------------------
(require 'init-ui)
;; Emacs-base
;; --------------------------
(require 'init-base)
;; Emacs-dev
;; --------------------------
(require 'init-dev)
;; Emacs-org
;; --------------------------
(require 'init-org)
;; Emacs-keymap
;; --------------------------
(require 'init-keymap)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(conda-anaconda-home "/User/black/opt/anaconda3")
 '(package-selected-packages
   '(leetcode anaconda-mode conda edwina vterm pyim dashboard projectile all-the-icons evil-org markdown-mode yasnippet posframe neotree use-package evil)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
