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

(use-package page-break-lines
  :ensure t
  :config
  (global-page-break-lines-mode))

(use-package dashboard
  :ensure t
  :config
  (setq dashboard-page-separator "\n\f\n")
  (dashboard-setup-startup-hook)
;;  (setq dashboard-center-content t)
  (setq dashboard-items '((recents  . 5)
                          (projects . 5)
                          (agenda . 5))))
(provide 'init-ui)
