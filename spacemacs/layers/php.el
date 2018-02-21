;; init-php.el -- Configuration for PHP

(defun artisan/php-config ()
  "Configure PHP

Mostly this is affecting the theme to simplify and make everything minimal."

  (set-face-foreground 'font-lock-doc-face "#5c6773")
  )

(use-package artisan/init-php
  :mode "\\.php\\'"
  :config
  (add-hook 'php-mode-hook 'aritsan/php-config))


(provide 'init-php)
