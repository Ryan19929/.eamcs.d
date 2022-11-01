
(setq org-todo-keywords
      (quote ((sequence "未完成(t)" "开始(s)" "|" "结束(d!/!)")
	      (sequence "排队(w@/!)" "某天(S)" "|" "取消(c@/!)" "会议(m)" "电话(p)"))))


(setq org-log-done 'time)
(add-hook 'org-mode-hook (lambda ()(setq truncate-lines nil)))
;;fix doom modeline
(use-package org-superstar
  :ensure t
  :config
  (add-hook 'org-mode-hook (lambda () (org-superstar-mode 1))))

(use-package ox-gfm
  :ensure t)

(provide 'init-org)
