(use-package clojure-mode
  :bind (:map clojure-mode-map
	      ("C-c -" . hs-hide-all)
	      ("C-c +" . hs-show-all)
	      ("C-c t" . hs-toggle-hiding))
  :hook ((clojure-mode-hook . linum-mode)
	 (clojure-mode-hook . hs-minor-mode)
	 (clojure-mode-hook . lsp))
  :config
  (setq lsp-clojure-server-command '("bash" "-c" "clojure-lsp")))
