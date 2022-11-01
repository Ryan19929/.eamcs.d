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
  :ensure t
  :config
  (require 'yasnippet)
  (yas-global-mode 1))


(use-package lsp-bridge
  :load-path "~/.emacs.d/lsp-bridge"
  :config
  (global-lsp-bridge-mode)
  (setq lsp-bridge-python-command "/Users/black/opt/anaconda3/bin/python")
  (setq lsp-bridge-enable-auto-format-code t)
  (setq acm-enable-tabnine t)
  (setq lsp-bridge-enable-search-words nil)
  (setq lsp-bridge-enable-log nil))




(use-package projectile
  :ensure t
  :init
  (projectile-mode +1)
  :bind (:map projectile-mode-map
              ("s-p" . projectile-command-map)
              ("C-c p" . projectile-command-map)))

(use-package neotree
  :ensure t
  :config
  (setq neo-theme (if (display-graphic-p) 'icons 'arrow)))

(setq auto-save-default nil)



(use-package rust-mode
  :ensure t)



(provide 'init-dev)

