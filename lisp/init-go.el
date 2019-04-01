(require-package 'go-mode)

;; add flyche-gometaliner to flycheck
(require-package 'flycheck-gometalinter)
(flycheck-gometalinter-setup)
(setq flycheck-gometalinter-fast t)  ;; only run fast linters
(setq flycheck-gometalinter-test t)  ;; use in tests files
(add-hook 'go-mode-hook 'flycheck-mode)

;; auto formatting before save
(add-hook 'before-save-hook 'gofmt-before-save)

;; go code autocomplete
(when (maybe-require-package 'company-go)
  (after-load 'company
    (add-hook 'go-mode-hook
      (lambda ()
        (set (make-local-variable 'company-backends) '(company-go))
        (company-mode)))))

;; go code keybindings
(add-hook 'go-mode-hook '(lambda ()
                           (local-set-key (kbd "C-c C-r") 'go-remove-unused-imports)))
(add-hook 'go-mode-hook '(lambda ()
                           (local-set-key (kbd "C-c C-g") 'go-goto-imports)))
(add-hook 'go-mode-hook '(lambda ()
                           (local-set-key (kbd "C-c C-k") 'godoc)))

(provide 'init-go)
