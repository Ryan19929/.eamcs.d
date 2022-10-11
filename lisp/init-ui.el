;; 全屏
(add-to-list 'initial-frame-alist '(fullscreen . maximized))
;; 关闭工具栏，too-bar-mode 即为一个 Minor Mode
(tool-bar-mode -1)

;; 显示行号
(global-linum-mode -1)


(use-package doom-themes
  :ensure t
  :config
  ;; Global settings (defaults)
  (setq doom-themes-enable-bold t    ; if nil, bold is universally disabled
        doom-themes-enable-italic t) ; if nil, italics is universally disabled
  (load-theme 'doom-nord-light t)

  ;; Enable flashing mode-line on errors
  (doom-themes-visual-bell-config)
  ;; Enable custom neotree theme (all-the-icons must be installed!)
  (doom-themes-neotree-config)
  ;; or for treemacs users
  (setq doom-themes-treemacs-theme "doom-atom") ; use "doom-colors" for less minimal icon theme
  (doom-themes-treemacs-config)
  ;; Corrects (and improves) org-mode's native fontification.
  (doom-themes-org-config))

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

;;行数
(global-linum-mode 1)

;;awesome-tray
(use-package awesome-tray
  :load-path "~/.emacs.d/plugins/"
  :config
  (awesome-tray-mode 1)
  (setq awesome-tray-active-modules '("buffer-read-only" "location" "mode-name" "git" "file-path" "buffer-name"  "input-method" "battery" "date"))
  )


(provide 'init-ui)
