;; Disable package.el in favor of straight.el
(setq package-enable-at-startup nil)

;; Installs straight.el
(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 5))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
	(url-retrieve-synchronously
	 "https://raw.githubusercontent.com/raxod502/straight.el/develop/install.el"
	 'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

;; Install use-package
(straight-use-package 'use-package)
(setq use-package-hook-name-suffix nil)
(setq debug-on-error t)

;; Configures use-package to always use straight.el
(use-package straight
  :custom (straight-use-package-by-default t))

;; Deactivate backup files
(setq make-backup-files nil)

;; Load specific configuration files
(defun load-configurations (dir)
  (let ((load-config (lambda (config-file-name)
		       (load-file (concat (file-name-as-directory dir) config-file-name)))))
    (mapc load-config (directory-files dir nil "\\.el$"))))
(load-configurations "~/.emacs.d/config")
