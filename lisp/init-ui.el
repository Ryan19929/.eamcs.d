;; 全屏
(add-to-list 'initial-frame-alist '(fullscreen . maximized))
;; 关闭工具栏，too-bar-mode 即为一个 Minor Mode
(tool-bar-mode -1)

;; 显示行号
(global-linum-mode -1)

(use-package solarized-theme
  :ensure t
  :config
  (load-theme 'solarized-light t))

(provide 'init-ui)
