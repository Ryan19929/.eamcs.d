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
 '(org-agenda-files
   '("~/Library/CloudStorage/OneDrive-Personal/org/Time-Manager/2022_year/W44/presentation.org" "/Users/black/OneDrive/org/Articles/c++/horse.org" "/Users/black/OneDrive/org/Time-Manager/2022_year/2022.org"))
 '(package-selected-packages
   '(popon company company-mode doom-themes ox-gfm clang-format leetcode anaconda-mode conda edwina vterm pyim dashboard projectile all-the-icons evil-org markdown-mode yasnippet posframe neotree use-package evil)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
