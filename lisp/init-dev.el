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

(add-to-list 'load-path "/Users/black/.emacs.d/lsp-bridge")

(require 'yasnippet)
(yas-global-mode 1)

(require 'lsp-bridge)
(global-lsp-bridge-mode)


(provide 'init-dev)
