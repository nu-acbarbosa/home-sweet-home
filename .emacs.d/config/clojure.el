(use-package cider
  :bind (:map cider-repl-mode-map
	      ("C-r l" . cider-repl-clear-buffer))
  :config
  (setq cider-font-lock-dynamically nil
	cider-dynamic-indentation nil
	cider-eldoc-display-for-symbol-at-point nil
	cider-eldoc-display-context-dependent-info nil))

(use-package clojure-mode
  :bind (:map clojure-mode-map
	      ("C-c -" . hs-hide-all)
	      ("C-c +" . hs-show-all)
	      ("C-c t" . hs-toggle-hiding))
  :hook ((clojure-mode-hook . linum-mode)
	 (clojure-mode-hook . hs-minor-mode)
	 (clojure-mode-hook . lsp))
  :config
  (setq lsp-clojure-server-command '("bash" "-c" "clojure-lsp")
	lsp-keep-workspace-alive nil
	lsp-ui-doc-enable nil
	lsp-lens-enable nil))
