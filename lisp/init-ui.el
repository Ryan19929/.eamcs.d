;; 全屏
;;(add-to-list 'initial-frame-alist '(fullscreen . maximized))
;; 关闭工具栏，too-bar-mode 即为一个 Minor Mode
(tool-bar-mode -1)

;; 显示行号
(global-linum-mode -1)
;; org-clock 时间消失
(setq org-clock-clocked-in-display 'frame-title)
;d

(use-package doom-themes
  :ensure t
  :config
  ;; Global settings (defaults)
  (setq doom-themes-enable-bold t    ; if nil, bold is universally disabled
        doom-themes-enable-italic t) ; if nil, italics is universally disabled
  (load-theme 'doom-one-light t)

  ;; Enable flashing mode-line on errors
  (doom-themes-visual-bell-config))



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
  :load-path "~/.emacs.d/plugins/awesome-tray"
  :config
  (awesome-tray-mode 1)
  (setq awesome-tray-active-modules '("clock" "buffer-read-only" "location" "mode-name" "git" "file-path" "buffer-name"  "input-method" "battery" "date"))
  ;; (setq awesome-tray-info-padding-right 1)
  )


(if (display-graphic-p)
    ;; 字体
    
  (progn (let ((emacs-font-size 14)
	  (emacs-font-name "WenQuanYi Micro Hei Mono"))
      (set-frame-font (format "%s-%s" (eval emacs-font-name) (eval emacs-font-size)))
      (set-fontset-font (frame-parameter nil 'font) 'unicode (eval emacs-font-name)))

  (with-eval-after-load 'org
    (defun org-buffer-face-mode-variable ()
      (interactive)
      (make-face 'width-font-face)
      (set-face-attribute 'width-font-face nil :font "Sarasa Mono SC Nerd 15")
      (setq buffer-face-mode-face 'width-font-face)
      (buffer-face-mode))

    (add-hook 'org-mode-hook 'org-buffer-face-mode-variable))))


(face-attribute 'default :font)
(provide 'init-ui)
