(use-package clojure-mode
  :hook ((clojure-mode-hook . linum-mode)
	 (clojure-mode-hook . hs-minor-mode)
	 (clojure-mode-hook . lsp))
  :config
  (setq lsp-clojure-server-command '("bash" "-c" "clojure-lsp")))
