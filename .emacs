;;; Package --- Summary
;;; Code:
;;; Commentary:
(package-initialize)

(org-babel-load-file "~/.emacs.d/configuration.org")

;(require 'go-autocomplete)
;(require 'auto-complete-config)

(ac-config-default)

(menu-bar-mode -1)

(global-set-key (kbd "C-x <up>") 'windmove-up)
(global-set-key (kbd "C-x <down>") 'windmove-down)
(global-set-key (kbd "C-x <left>") 'windmove-left)
(global-set-key (kbd "C-x <right>") 'windmove-right)

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
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
 '(next-error ((t (:foreground "brightyellow"))))
 '(org-document-info ((t (:foreground "color-129"))))
 '(org-document-title ((t (:foreground "color-129" :weight bold))))
 '(region ((t (:background "color-17")))))

(setq redisplay-dont-pause t
      scroll-margin 1
      scroll-step 1
      scroll-conservatively 10000
      scroll-preserve-screen-position 1)

;(setq split-height-threshold nil)
;(setq split-width-threshold 0)

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
 '(inhibit-startup-screen t)
 '(org-agenda-files (quote ("~/doc/classes/HNRS190/final_proposal/main.org")))
 '(org-hidden-keywords nil)
 '(org-log-done (quote time))
 '(package-selected-packages
   (quote
    (minesweeper sokoban 2048-game auto-correct auto-complete-auctex auto-complete-c-headers auctex-latexmk jedi yaml-mode auto-complete-clang go-autocomplete clang-format go-mode go flycheck auctex))))

(provide '.emacs)
;;; .emacs ends here
