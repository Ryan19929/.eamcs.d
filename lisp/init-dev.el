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
(setq lsp-bridge-python-command "/Users/black/.conda/envs/Learn_Pytorch/bin/python")
(add-to-list 'lsp-bridge-lang-server-mode-list '(rustic-mode . "rust-analyzer"))
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

(use-package neotree
  :ensure t
  :config
  (setq neo-theme (if (display-graphic-p) 'icons 'arrow)))

(setq auto-save-default nil)


(use-package conda
  :load-path "~/.emacs.d/plugins/"
  :config
  (custom-set-variables
 '(conda-anaconda-home "/User/black/opt/anaconda3"))
  ;; if you want interactive shell support, include:
(conda-env-initialize-interactive-shells)
;; if you want eshell support, include:
(conda-env-initialize-eshell)
;; if you want auto-activation (see below for details), include:
(conda-env-autoactivate-mode t)
;; if you want to automatically activate a conda environment on the opening of a file:


)

(use-package rust-mode
  :ensure t)

(provide 'init-dev)

