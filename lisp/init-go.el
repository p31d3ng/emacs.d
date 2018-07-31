(require-package 'go-mode)
(require-package 'company-go)

(require-package 'flycheck-gometalinter)
(flycheck-gometalinter-setup)
;;(setq flycheck-gometalinter-fast t)  ;; only run fast linters
;;(setq flycheck-gometalinter-test t)  ;; use in tests files
(add-hook 'go-mode-hook 'flycheck-mode)

(add-hook 'before-save-hook 'gofmt-before-save)

(if (eq system-type 'windows-nt) ;; windows $GOPATH set to C:/gopath
    (progn
      (add-to-list 'load-path "~/gopath/src/github.com/dougm/goflymake")(require 'go-flymake)
      (add-to-list 'load-path "~/gopath/src/github.com/dougm/goflymake")(require 'go-flycheck)
      )
  (progn
    (add-to-list 'load-path "~/go/src/github.com/dougm/goflymake")(require 'go-flymake)
    (add-to-list 'load-path "~/go/src/github.com/dougm/goflymake")(require 'go-flycheck)
    )
  )

(add-hook 'go-mode-hook 'company-mode)
(add-hook 'go-mode-hook (lambda ()
                          (set (make-local-variable 'company-backends) '(company-go))
                          (company-mode)))


(add-hook 'go-mode-hook '(lambda ()
                           (local-set-key (kbd "C-c C-r") 'go-remove-unused-imports)))

(add-hook 'go-mode-hook '(lambda ()
        (local-set-key (kbd "C-c C-g") 'go-goto-imports)))

(add-hook 'go-mode-hook '(lambda ()
        (local-set-key (kbd "C-c C-k") 'godoc)))

(provide 'init-go)
