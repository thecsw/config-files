
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(org-babel-load-file "~/.emacs.d/configuration.org")

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(diff-file-header ((t (:weight bold))))
 '(escape-glyph ((t (:foreground "brightred"))))
 '(font-latex-sectioning-0-face ((t (:foreground "color-128" :height 1.1))))
 '(font-latex-sectioning-1-face ((t (:foreground "color-128" :height 1.1))))
 '(font-latex-sectioning-2-face ((t (:foreground "color-128" :height 1.1))))
 '(font-latex-sectioning-3-face ((t (:foreground "color-128" :height 1.1))))
 '(font-latex-sectioning-4-face ((t (:foreground "color-128" :height 1.1))))
 '(font-latex-sectioning-5-face ((t (:foreground "color-128" :weight bold))))
 '(font-lock-comment-face ((t (:foreground "brightcyan"))))
 '(font-lock-doc-face ((t (:foreground "color-128"))))
 '(font-lock-string-face ((t (:foreground "brightgreen"))))
 '(info-index-match ((t (:foreground "yellow"))))
 '(log-view-message ((t (:background "black"))))
 '(next-error ((t (:foreground "brightyellow"))))
 '(org-document-info ((t (:foreground "color-129"))))
 '(org-document-title ((t (:foreground "color-129" :weight bold))))
 '(region ((t (:background "color-17"))))
 '(vc-annotate-face-CCCCFF ((t nil)) t)
 '(vc-annotate-face-FFCCCC ((t nil)) t))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#2e3436" "#a40000" "#4e9a06" "#c4a000" "#204a87" "#5c3566" "#729fcf" "#eeeeec"])
 '(font-use-system-font t)
 '(org-hidden-keywords nil)
 '(org-log-done (quote time))
 '(package-selected-packages (quote (org-ref clang-format flycheck auctex))))

(setq reftex-default-bibliography '("~/doc/latex/src/references.bib"))
