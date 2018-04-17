;;; packages.el --- laravel layer packages file for Spacemacs.
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
;; added to `laravel-packages'. Then, for each package PACKAGE:
;;
;; - If PACKAGE is not referenced by any other Spacemacs layer, define a
;;   function `laravel/init-PACKAGE' to load and initialize the package.

;; - Otherwise, PACKAGE is already referenced by another Spacemacs layer, so
;;   define the functions `laravel/pre-init-PACKAGE' and/or
;;   `laravel/post-init-PACKAGE' to customize the package as it is loaded.

;;; Code:

(defconst laravel-packages
  '())

(defun laravel/guess-table-from-field (field)
  "Guess the table name from the foreign key."
  (pluralize-string (replace-regexp-in-string "_id" "" field)))

(defun laravel/guess-controller-from-resource (resource)
  "Guess the controller class from the resource.
If the resource is nested, the parent/s will be singularized.

Usage:
  - users       - UsersController
  - users.tasks - UserTasksController"

  (setq segments  (split-string resource "\\."))
  (setq resources (subseq segments 0 -1))
  (setq model     (last segments))
  (setq classes   (append (mapcar 'singularize-string resources) model))

  (concat (string-inflection-camelcase-function (mapconcat 'identity classes "_")) "Controller"))

(defun laravel/git-path (dir)
  "Get the git directory."
  (if (string= "/" dir)
      nil
    (if (file-exists-p (expand-file-name ".git/" dir))
        dir
      (laravel/git-path (expand-file-name "../" dir)))))

(defun laravel/base-path ()
  "Get the base path of the project."
  (if (ignore-errors (eproject-root))
      (eproject-root)
    (or (laravel/git-path (buffer-file-name)) (file-name-directory (buffer-file-name)))))

(defun laravel/class-name (file)
  "Get the class name from the file name. Basically, remove the extension."
  (file-name-nondirectory (file-name-sans-extension file)))

(defun laravel/namespace ()
  "Guess the namespace."
  (let ((root (laravel/base-path))
        (base (file-name-nondirectory buffer-file-name)))
    (capitalize (substring (replace-regexp-in-string "/" "\\" (substring buffer-file-name (length root) (* -1 (length base))) t t) 0 -1))))

;;; packages.el ends here
