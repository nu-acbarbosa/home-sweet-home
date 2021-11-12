(use-package typescript-mode
  :hook ((typescript-mode-hook . lsp)
	 (typescript-mode-hook . linum-mode))
  :config
  (setq lsp-clients-typescript-tls-path "/Users/alexandre.barbosa/.nvm/versions/node/v16.13.0/bin/typescript-language-server"))
