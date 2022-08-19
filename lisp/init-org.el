
(setq org-todo-keywords
      (quote ((sequence "TODO(t)" "STARTED(s)" "|" "DONE(d!/!)")
	      (sequence "WAITING(w@/!)" "SOMEDAY(S)" "|" "CANCELLED(c@/!)" "MEETING(m)" "PHONE(p)"))))

(add-hook 'org-mode-hook (lambda ()(setq truncate-lines nil)))
;;fix doom modeline


(provide 'init-org)
