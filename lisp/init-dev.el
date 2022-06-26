;; posframe
(use-package posframe
  :ensure t)

;; markdown-mode
(use-package markdown-mode
  :ensure t
  :mode ("README\\.md\\'" . gfm-mode)
  :init (setq markdown-command "multimarkdown"))

;;
(use-package yasnippet
  :ensure t)

(add-to-list 'load-path "~/.emacs.d/lsp-bridge")

(require 'yasnippet)
(yas-global-mode 1)

(require 'lsp-bridge)
(global-lsp-bridge-mode)


(use-package projectile
  :ensure t
  :init
  (projectile-mode +1)
  :bind (:map projectile-mode-map
              ("s-p" . projectile-command-map)
              ("C-c p" . projectile-command-map)))

(use-package vterm
  :ensure t
  :config
  (setq vtterm-kill-buffer-on-exit t))

(use-package edwina
  :ensure t
  :config
  (setq display-buffer-base-action '(display-buffer-below-selected))
  ;; 以下定义会被 (edwina-setup-dwm-keys) 增加 'M-' 修饰。
  ;; 我自定义了一套按键，因为原版会把我很常用的 M-d 覆盖掉。
  (edwina-mode 1))


(provide 'init-dev)

