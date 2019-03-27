;;; init.el --- Main init.el file for Emacs

;;; Commentary:
;; This file allows Emacs to initialize my customizations
;; in Emacs Lisp embedded in *one* literate Org-mode file.

;;; Code:
;; Configure package.el to include MELPA.
(require 'package)
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/"))
(package-initialize)

;; Ensure that use-package is installed.
;;
;; If use-package isn't already installed, it's extremely likely that this is a
;; fresh installation! So we'll want to update the package repository and
;; install use-package before loading the literate configuration.
(when (not (package-installed-p 'use-package))
  (package-refresh-contents)
  (package-install 'use-package))

(use-package org)
(org-babel-load-file "~/.emacs.d/configuration.org")
;;; init.el ends here
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (wgrep smex flx counsel yasnippet dired-hide-dotfiles deft markdown-mode graphviz-dot-mode gnuplot yaml-mode flycheck-package rainbow-delimiters paredit web-mode use-package undo-tree projectile magit js2-mode flycheck company))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
