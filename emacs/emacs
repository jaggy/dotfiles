(require 'package)

(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/"))

(setq package-enable-at-startup nil)
(package-initialize)

(evil-mode t)
(powerline-default-theme)
(menu-bar-mode -1)

(nlinum-relative-setup-evil)                        ;; setup for evil
(add-hook 'prog-mode-hook 'nlinum-relative-mode)
(setq nlinum-relative-redisplay-delay 0)            ;; Remove the delay.
(setq nlinum-relative-current-symbol "")            ;; Display the current line number.
(setq nlinum-relative-offset 0)

(custom-set-variables
 '(package-selected-packages
   (quote
    (nlinum-relative evil-surround neotree evil powerline helm))))
(custom-set-faces
 )
