;;; packages.el --- artisan/vue-plus layer packages file for Spacemacs.
;;
;; Copyright (c) 2012-2017 Sylvain Benner & Contributors
;;
;; Author: Jaggy <jaggy@melody.local>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;;; Commentary:

;; See the Spacemacs documentation and FAQs for instructions on how to implement
;; a new layer:
;;
;;   SPC h SPC layers RET
;;
;;
;; Briefly, each package to be installed or configured by this layer should be
;; added to `artisan/vue-plus-packages'. Then, for each package PACKAGE:
;;
;; - If PACKAGE is not referenced by any other Spacemacs layer, define a
;;   function `artisan/vue-plus/init-PACKAGE' to load and initialize the package.

;; - Otherwise, PACKAGE is already referenced by another Spacemacs layer, so
;;   define the functions `artisan/vue-plus/pre-init-PACKAGE' and/or
;;   `artisan/vue-plus/post-init-PACKAGE' to customize the package as it is loaded.

;;; Code:

(defconst artisan/vue-plus-packages
  '(js-mode))

(defun artisan/init-js-mode ()
  (use-package js-mode
    :defer t
    :config
    (set-face-background 'mmm-default-submode-face "#212733")))

;;; packages.el ends here
