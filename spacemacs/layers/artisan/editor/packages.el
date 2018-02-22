;;; packages.el --- artisan/editor layer packages file for Spacemacs.
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
;; added to `artisan/editor-packages'. Then, for each package PACKAGE:
;;
;; - If PACKAGE is not referenced by any other Spacemacs layer, define a
;;   function `artisan/editor/init-PACKAGE' to load and initialize the package.

;; - Otherwise, PACKAGE is already referenced by another Spacemacs layer, so
;;   define the functions `artisan/editor/pre-init-PACKAGE' and/or
;;   `artisan/editor/post-init-PACKAGE' to customize the package as it is loaded.

;;; Code:

(defconst artisan/editor-packages
  '(all-the-icons))

(defun artisan/init-all-the-icons ()
  (use-package all-the-icons
    :config (setq neo-theme 'icons)))

;;; packages.el ends here
