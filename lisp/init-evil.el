(add-to-list 'load-path "~/.emacs.d/lisp/")
(require 'evil-leader)
(use-package evil
  :ensure t
  :init
  (global-evil-leader-mode)
  (evil-leader/set-leader "<SPC>")
  :config
  (evil-mode 1)
  (evil-set-undo-system 'undo-redo)
  (setcdr evil-insert-state-map nil)
  (define-key evil-insert-state-map [escape] 'evil-normal-state)
  (evil-leader/set-key
    ; buffer & bookmark
    "bb" 'switch-to-buffer
    "bB" 'switch-to-buffer-other-window
    "bc" 'clone-indirect-buffer
    "bC" 'clone-indirect-buffer-other-window
    "by" '+copy-current-buffer-name
    "bv" 'revert-buffer
    "bx" 'scratch-buffer
    "bz" 'bury-buffer

    ;; file
    "ff" 'find-file
    "fF" 'find-file-other-window
    "f/" 'find-file-other-window
    "fC" '+copy-current-file
    "fD" '+delete-current-file
    "fy" '+copy-current-filename
    "fR" '+rename-current-file
    "fr" 'recentf-open-files
    "fl" 'find-file-literally

    ;; window
    "w" 'evil-window-map
    "wx" 'kill-buffer-and-window
    "wu" '+transient-tab-bar-history
    "w-" 'split-window-vertically
    "w/" 'split-window-horizontally

    ;; projectile
    "p" 'projectile-command-map
    )
)

;; evil-surround
(use-package evil-surround
  :ensure t
  :config
  (global-evil-surround-mode 1))

;; which-key
(use-package which-key
  :ensure t
  :config
  (which-key-mode))

;; evil-org
(add-to-list 'load-path "~/.emacs.d/plugins/evil-org-mode")
(require 'evil-org)
(add-hook 'org-mode-hook 'evil-org-mode)
(evil-org-set-key-theme '(navigation insert textobjects additional calendar))
(require 'evil-org-agenda)
(evil-org-agenda-set-keys)

(provide 'init-evil)
