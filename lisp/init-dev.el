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
  (setq edwina-dwm-key-alist
        '(("r" edwina-arrange)
          ("j" edwina-select-next-window)
          ("k" edwina-select-previous-window)
          ("J" edwina-swap-next-window)
          ("K" edwina-swap-previous-window)
          ("h" edwina-dec-mfact)    ;; 主窗口缩窄
          ("l" edwina-inc-mfact)    ;; 主窗口拉宽
          ("D" edwina-dec-nmaster)  ;; 减少主窗口的数量
          ("I" edwina-inc-nmaster)  ;; 增加主窗口的数量
          ("C" edwina-delete-window) ;; 关闭窗口
          ("RET" edwina-zoom t)     ;; 交换「主窗口」和「副窗口」
          ("return" edwina-zoom t)
          ("S-RET" edwina-clone-window t) ;; 复制一个本窗口
          ("S-return" edwina-clone-window t)))
  (edwina-setup-dwm-keys)
  (edwina-mode 1))


(provide 'init-dev)

