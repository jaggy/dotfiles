;; init-php.el -- Configuration for PHP

(use-package artisan/init-php
  :mode "\\.php\\'"
  :config
  (add-hook 'php-mode-hook 'aritsan/php-config))


(provide 'init-php)
