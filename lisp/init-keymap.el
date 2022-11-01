;; which-key
(use-package which-key
  :ensure t
  :config
  (which-key-mode))



;; Keybonds
(global-set-key [(hyper a)] 'mark-whole-buffer)
(global-set-key [(hyper v)] 'yank)
(global-set-key [(hyper c)] 'kill-ring-save)
(global-set-key [(hyper s)] 'save-buffer)
(global-set-key [(hyper l)] 'goto-line)
(global-set-key [(hyper w)]
                (lambda () (interactive) (delete-window)))
(global-set-key [(hyper z)] 'undo)
(global-set-key "\C-ca" 'org-agenda)

(setq mac-option-modifier 'meta)
(setq mac-command-modifier 'hyper)


(provide 'init-keymap)
