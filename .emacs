
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
;;(el-get)
;;; Code:
(package-initialize)

(org-babel-load-file "~/.emacs.d/configuration.org")

(require 'go-autocomplete)
(require 'auto-complete-config)
(ac-config-default)

(custom-set-faces
 '(package-selected-packages (quote (jedi-direx jedi company ipython-shell-send autopair auto-complete org-ref clang-format flycheck auctex)))
 '(region ((t (:background "color-17")))))

(setq reftex-default-bibliography '("~/doc/latex/src/references.bib"))

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
 '(package-selected-packages
   (quote
    (yaml-mode auto-complete-clang go-autocomplete clang-format go-mode go flycheck auctex)))
 '(send-mail-function (quote smtpmail-send-it)))

(provide '.emacs)
;;; .emacs ends here
