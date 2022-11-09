;; which-key
(use-package which-key
  :ensure t
  :config
  (which-key-mode))



;; Keybonds
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cl" 'lsp-bridge-diagnostic-list)

;; lsp-bridge
(defun k-lsp-bridge ()
  (local-set-key (kbd "C-c j")'lsp-bridge-diagnostic-jump-next)
  (local-set-key (kbd "C-c k")'lsp-bridge-diagnostic-jump-prev))
(add-hook 'lsp-bridge-mode-hook 'k-lsp-bridge)

;; basic-key
(setq mac-option-modifier 'meta)
(setq mac-command-modifier 'hyper)


(provide 'init-keymap)
