;; MacOS specific
(use-package exec-path-from-shell
  :ensure t
  :when (eq system-type 'darwin)
  :hook (after-init . exec-path-from-shell-initialize))

(setq make-backup-files nil)
;; 使用 y 和 n 代替 yes 和 no
(fset 'yes-or-no-p 'y-or-n-p)

(add-to-list 'load-path "~/.emacs.d/plugins/all-the-icons.el")
(add-to-list 'load-path "~/.emacs.d/plugins/pyim-tsinghua-dict-master")
(when (display-graphic-p)
  (require 'all-the-icons))
(set-terminal-coding-system 'utf-8)
(modify-coding-system-alist 'process "*" 'utf-8)
(setq default-process-coding-system '(utf-8 . utf-8))






;;(require 'pyim-tsinghua-dict)
;;(use-package pyim
;;  :ensure t
;;  :config
;;  (pyim-tsinghua-dict-enable)
;;  (setq default-input-method "pyim")
;;  ;; 5 个候选词
;;  (setq pyim-page-length 5)
;;  (pyim-default-scheme 'xiaohe-shuangpin)
;;  (pyim-isearch-mode 1)
;;  (setq default-input-method "pyim")
;;  (global-set-key (kbd "C-\\") 'toggle-input-method))

(provide 'init-base)
