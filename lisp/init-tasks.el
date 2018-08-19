(defun reload-agenda-files ()
  "Cleanup and reload all agenda files."
  (interactive)
  (setq org-agenda-files '())
  (when (or (eq system-type 'gnu/linux) (eq system-type 'darwin))
    (if (string-match-p (regexp-quote "vmware") user-mail-address)
        (setq org-agenda-files '("~/tmp/org/tasks" "~/tmp/org/inbox.org"))
      (setq org-agenda-files '("~/org/tasks" "~/org/inbox.org"))))

  )

(reload-agenda-files)

(provide 'init-tasks)
