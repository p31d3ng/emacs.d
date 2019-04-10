;;; init-graphql.el --- Support for GraphQL -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(require-package 'graphql-mode)
(add-to-list 'auto-mode-alist '("\\.graphql\\'" . graphql-mode))

(provide 'init-graphql)
;;; init-graphql.el ends here
