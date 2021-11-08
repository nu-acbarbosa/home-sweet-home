(use-package projectile
  :init
  (projectile-mode +1)
  (setq projectile-completion-system 'ido)
  (setq projectile-use-git-grep t)
  :bind (:map projectile-mode-map
	      ("C-c p" . projectile-command-map)))
