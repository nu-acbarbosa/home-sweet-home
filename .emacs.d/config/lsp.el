(use-package lsp-mode
  :init
  (setq lsp-keymap-prefix "C-c s")
  :commands lsp)

(use-package lsp-ui
  :commands lsp-ui-mode)

(use-package lsp-treemacs
  :commands lsp-treemacs-errors-list)


