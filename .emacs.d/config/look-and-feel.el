;; Setting up default theme
(add-to-list 'custom-theme-load-path
	     (file-name-as-directory "~/.emacs.d/themes"))
(load-theme 'acbarbosa-dark t nil)
(load-theme 'acbarbosa-light t t)

;; Deactivate menu bar
(menu-bar-mode -1)

;; Deactivating startup message
(setq inhibit-startup-message t
      inhibit-startup-echo-area-message t)
