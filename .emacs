;;; Package --- Summary
;;; Code:
;;; Commentary:
(package-initialize)

(org-babel-load-file "~/.emacs.d/configuration.org")

;(require 'go-autocomplete)
;(require 'auto-complete-config)

;(global-set-key (kbd "C-x g") 'magit-status)

(ac-config-default)

(menu-bar-mode -1)

(global-set-key (kbd "C-x <up>") 'windmove-up)
(global-set-key (kbd "C-x <down>") 'windmove-down)
(global-set-key (kbd "C-x <left>") 'windmove-left)
(global-set-key (kbd "C-x <right>") 'windmove-right)

(load-theme 'wheatgrass)

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(setq redisplay-dont-pause t
      scroll-margin 1
      scroll-step 1
      scroll-conservatively 10000
      scroll-preserve-screen-position 1)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(font-use-system-font t)
 '(inhibit-startup-screen t)
 '(org-hidden-keywords nil)
 '(org-log-done (quote time))
 '(package-selected-packages
   (quote
    (autopair fish-mode proof-general coq-commenter avy use-package auto-complete-auctex yaml-mode clang-format flycheck auctex))))

;(setq org-journal-dir "~/doc/journal")

(require 'autopair)
(autopair-global-mode)

(provide '.emacs)
;;; .emacs ends here
