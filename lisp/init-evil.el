(add-to-list 'load-path "~/.emacs.d/lisp/")
(require 'evil-leader)
(use-package evil
  :ensure t
  :init
  (global-evil-leader-mode)
  (evil-leader/set-leader "<SPC>")
  :config
  (evil-mode 1)
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
(provide 'init-evil)
