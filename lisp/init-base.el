;; MacOS specific
(use-package exec-path-from-shell
  :ensure t
  :when (eq system-type 'darwin)
  :hook (after-init . exec-path-from-shell-initialize))

(setq make-backup-files nil)
;; 使用 y 和 n 代替 yes 和 no
(fset 'yes-or-no-p 'y-or-n-p)

(add-to-list 'load-path "~/.emacs.d/plugins/all-the-icons.el")
(when (display-graphic-p)
  (require 'all-the-icons))



;; Mac OS Edition
;; This code helps us to work with Spacemacs (Emacs + Evil mode) in multilanguage mode
;; You need to install https://github.com/vovkasm/input-source-switcher 
;; It's a console utilite to switch input language.
;; Pavel Pavlov (c) 2015
;; In other OS you'll have to change name of langages layers and name of Switcher like issw 
;; In thу Terminal # issw   show you namу of the current layout
(setq shell-file-name "/bin/bash")
(setq lang_source "com.apple.keylayout.ABC")                     ;set default var lang_source for issw arg
(add-hook 'evil-insert-state-entry-hook                         ;what we do when enter insert mode
          (lambda ()
            (shell-command (concat "issw " lang_source))))      ;
;
(add-hook 'evil-insert-state-exit-hook                          ;what we do when enter normal mode
          (lambda ()
            (setq lang_source (shell-command-to-string "issw"))
            (shell-command "issw com.apple.keylayout.ABC")))

(setq lang_source "com.apple.keylayout.ABC")                     ;set default var lang_source for issw arg
(add-hook 'evil-replace-state-entry-hook                         ;what we do when enter insert mode
          (lambda ()
            (shell-command (concat "issw " lang_source))))      ;
;
(add-hook 'evil-replace-state-exit-hook                          ;what we do when enter normal mode
          (lambda ()
            (setq lang_source (shell-command-to-string "issw"))
            (shell-command "issw com.apple.keylayout.ABC")))


(provide 'init-base)
