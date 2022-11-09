;; posframe

(use-package posframe
  :load-path "~/.emacs.d/plugins/posframe")


(use-package popon
  :load-path "~/.emacs.d/plugins/emacs-popon")

;; markdown-mode
(use-package markdown-mode
  :load-path "~/.emacs.d/plugins/emacs-popon"
  :mode ("README\\.md\\'" . gfm-mode)
  :init (setq markdown-command "multimarkdown"))

;;
(use-package yasnippet
  :load-path "~/.emacs.d/plugins/yasnippet"
  :config
  (yas-global-mode 1))



(use-package lsp-bridge
  :load-path "~/.emacs.d/plugins/lsp-bridge"
  :config
  (global-lsp-bridge-mode)
  (setq lsp-bridge-enable-auto-format-code t))





(unless (display-graphic-p)
  (add-to-list 'load-path "~/.emacs.d/plugins/acm-terminal/")
  (with-eval-after-load 'acm
    (require 'acm-terminal)))




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

