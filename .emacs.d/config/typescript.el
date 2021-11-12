(use-package typescript-mode
  :bind (:map typescript-mode-map
	      ("C-c -" . hs-hide-all)
	      ("C-c +" . hs-show-all)
	      ("C-c t" . hs-toggle-hiding))
  :hook ((typescript-mode-hook . lsp)
	 (typescript-mode-hook . linum-mode)
	 (typescript-mode-hook . hs-minor-mode))
  :config
  (setq lsp-clients-typescript-tls-path "/Users/alexandre.barbosa/.nvm/versions/node/v16.13.0/bin/typescript-language-server"))
