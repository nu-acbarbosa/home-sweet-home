(load-file (concat user-emacs-directory "themes/acbarbosa-colors.el"))

(deftheme acbarbosa-light
  "acbarbosa-light theme")

(custom-theme-set-faces
 'acbarbosa-light

 ;; Standard faces (https://www.gnu.org/software/emacs/manual/html_node/emacs/Standard-Faces.html)
 `(default ((t (:background ,base-3 :foreground ,base-00))))
 `(bold ((t (:bold t))))
 `(italic ((t (:italic t))))
 `(bold-italic ((t (:italic t :bold t))))
 `(underline ((t (:underline t))))
 `(mode-line ((t (:background ,base-03 :foreground ,base-1))))
 `(mode-line-inactive ((t (:background ,base-2 :foreground ,base-01))))
 `(vertical-border ((t (:background ,base-1 :foreground ,base-01))))
 `(header-line ((t (:background ,base-2 : foreground ,base-01))))
 `(region ((t (:background ,base-03))))
 `(isearch ((t (:bold t :background ,base-02 :foreground ,base-1))))
 `(query-replace ((t (:bold t :background ,base-2 :foreground ,base-01))))
 `(lazy-highlight ((t (:background ,base-1 :foreground ,base-02))))
 
 ;; Font Lock Faces (https://www.gnu.org/software/emacs/manual/html_node/elisp/Faces-for-Font-Lock.html)
 `(font-lock-warning-face ((t (:bold t :foreground ,red))))
 `(font-lock-function-name-face ((t (:bold t :foreground ,orange))))
 `(font-lock-variable-name-face ((t (:bold t :foreground ,yellow))))
 `(font-lock-keyword-face ((t (:foreground ,yellow))))
 `(font-lock-comment-face ((t (:foreground ,base-1))))
 `(font-lock-doc-face ((t (:foreground ,base-1))))
 `(font-lock-type-face ((t (:foreground ,orange :bold t))))
 `(font-lock-constant-face ((t (:foreground ,magenta))))
 `(font-lock-builtin-face ((t (:foreground ,yellow))))
 `(font-lock-string-face ((t (:foreground ,cyan))))

 `(highlight ((t (:background ,base-03))))
 `(show-paren-match ((t (:background ,base-02))))
 `(info-menu-5 ((t (:underline t))))
 `(info-node ((t (:bold t))))
 `(info-xref ((t (:bold t :foreground ,yellow))))

 ;; Rainbow Delimiters Faces
 `(rainbow-delimiters-depth-1-face ((t (:bold t :foreground ,red))))
 `(rainbow-delimiters-depth-2-face ((t (:bold t :foreground ,magenta))))
 `(rainbow-delimiters-depth-3-face ((t (:bold t :foreground ,violet))))
 `(rainbow-delimiters-depth-4-face ((t (:bold t :foreground ,blue))))
 `(rainbow-delimiters-depth-5-face ((t (:bold t :foreground ,cyan))))
 `(rainbow-delimiters-depth-6-face ((t (:bold t :foreground ,green))))
 `(rainbow-delimiters-depth-7-face ((t (:bold t :foreground ,yellow))))
 `(rainbow-delimiters-depth-8-face ((t (:bold t :foreground ,orange))))
 `(rainbow-delimiters-depth-9-face ((t (:bold t :foreground ,green))))

 ;; Line Numbering face
 `(linum ((t (:background ,base-2 :foreground ,base-01)))))

(provide-theme 'acbarbosa-light)
