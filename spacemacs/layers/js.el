;; init-js.el -- Configuration for Javascript

(defun artisan/js-config ()
  "Configure Javascript"

  (set-face-background 'mmm-default-submode-face "#212733")
  )

(use-package js-mode
  :defer t
  :config
  (add-hook 'js-mode-hook 'artisan/js-config))

(provides 'init-js)
