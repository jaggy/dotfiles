;; -*- mode: emacs-lisp -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Configuration Layers declaration.
You should not put any user code in this function besides modifying the variable
values."
  (setq-default
   ;; Base distribution to use. This is a layer contained in the directory
   ;; `+distribution'. For now available distributions are `spacemacs-base'
   ;; or `spacemacs'. (default 'spacemacs)
   dotspacemacs-distribution 'spacemacs
   ;; Lazy installation of layers (i.e. layers are installed only when a file
   ;; with a supported type is opened). Possible values are `all', `unused'
   ;; and `nil'. `unused' will lazy install only unused layers (i.e. layers
   ;; not listed in variable `dotspacemacs-configuration-layers'), `all' will
   ;; lazy install any layer that support lazy installation even the layers
   ;; listed in `dotspacemacs-configuration-layers'. `nil' disable the lazy
   ;; installation feature and you have to explicitly list a layer in the
   ;; variable `dotspacemacs-configuration-layers' to install it.
   ;; (default 'unused)
   dotspacemacs-enable-lazy-installation 'unused
   ;; If non-nil then Spacemacs will ask for confirmation before installing
   ;; a layer lazily. (default t)
   dotspacemacs-ask-for-lazy-installation t
   ;; If non-nil layers with lazy install support are lazy installed.
   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path nil
   ;; List of configuration layers to load.
   dotspacemacs-configuration-layers
   '(
     elixir
     nginx
     sql
     csv
     ;; ----------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press <SPC f e R> (Vim style) or
     ;; <M-m f e R> (Emacs style) to install them.
     ;; ----------------------------------------------------------------
     (auto-completion :variables
                      auto-completion-enable-sort-by-usage t
                      auto-completion-tab-key-behavior nil
                      auto-completion-enable-snippets-in-popup t
                      auto-completion-private-snippets-directory "~/.dotfiles/emacs.d/snippets")
     better-defaults
     emacs-lisp

     javascript

     helm
     git
     markdown
     html
     org

     php
     yaml
     laravel
     ;; php-plus
     (shell :variables
            shell-default-term-shell "/bin/zsh"
            shell-default-height 30
            shell-default-position 'bottom)
     ;; spell-checking
     ;; syntax-checking
     ;; version-control
     )
   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages, then consider creating a layer. You can also put the
   ;; configuration in `dotspacemacs/user-config'.
   dotspacemacs-additional-packages
   '(
     helm
     key-chord
     web-mode
     vue-mode
     pretty-mode
     focus
     all-the-icons
     yasnippet-snippets
     string-inflection
     (stylus-mode :location (recipe :fetcher github :repo "vladh/stylus-mode"))
     stylus-mode
     rjsx-mode
     )
   ;; A list of packages that cannot be updated.
   dotspacemacs-frozen-packages '()
   ;; A list of packages that will not be installed and loaded.
   dotspacemacs-excluded-packages '(rainbow-delimiters)
   ;; Defines the behaviour of Spacemacs when installing packages.
   ;; Possible values are `used-only', `used-but-keep-unused' and `all'.
   ;; `used-only' installs only explicitly used packages and uninstall any
   ;; unused packages as well as their unused dependencies.
   ;; `used-but-keep-unused' installs only the used packages but won't uninstall
   ;; them if they become unused. `all' installs *all* packages supported by
   ;; Spacemacs and never uninstall them. (default is `used-only')
   dotspacemacs-install-packages 'used-only))

(defun dotspacemacs/init ()
  "Initialization function.
This function is called at the very startup of Spacemacs initialization
before layers configuration.
You should not put any user code in there besides modifying the variable
values."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; If non nil ELPA repositories are contacted via HTTPS whenever it's
   ;; possible. Set it to nil if you have no way to use HTTPS in your
   ;; environment, otherwise it is strongly recommended to let it set to t.
   ;; This variable has no effect if Emacs is launched with the parameter
   ;; `--insecure' which forces the value of this variable to nil.
   ;; (default t)
   dotspacemacs-elpa-https t
   ;; Maximum allowed time in seconds to contact an ELPA repository.
   dotspacemacs-elpa-timeout 5
   ;; If non nil then spacemacs will check for updates at startup
   ;; when the current branch is not `develop'. Note that checking for
   ;; new versions works via git commands, thus it calls GitHub services
   ;; whenever you start Emacs. (default nil)
   dotspacemacs-check-for-update t
   ;; If non-nil, a form that evaluates to a package directory. For example, to
   ;; use different package directories for different Emacs versions, set this
   ;; to `emacs-version'.
   dotspacemacs-elpa-subdirectory nil
   ;; One of `vim', `emacs' or `hybrid'.
   ;; `hybrid' is like `vim' except that `insert state' is replaced by the
   ;; `hybrid state' with `emacs' key bindings. The value can also be a list
   ;; with `:variables' keyword (similar to layers). Check the editing styles
   ;; section of the documentation for details on available variables.
   ;; (default 'vim)
   dotspacemacs-editing-style 'vim
   ;; If non nil output loading progress in `*Messages*' buffer. (default nil)
   dotspacemacs-verbose-loading nil
   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to an image format supported
   ;; by your Emacs build.
   ;; If the value is nil then no banner is displayed. (default 'official)
   dotspacemacs-startup-banner 'official
   ;; List of items to show in startup buffer or an association list of
   ;; the form `(list-type . list-size)`. If nil then it is disabled.
   ;; Possible values for list-type are:
   ;; `recents' `bookmarks' `projects' `agenda' `todos'."
   ;; List sizes may be nil, in which case
   ;; `spacemacs-buffer-startup-lists-length' takes effect.
   dotspacemacs-startup-lists '((projects . 7)
                                (recents . 5))
   ;; True if the home buffer should respond to resize events.
   dotspacemacs-startup-buffer-responsive t
   ;; Default major mode of the scratch buffer (default `text-mode')
   dotspacemacs-scratch-mode 'text-mode
   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press <SPC> T n to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(spacemacs-dark
                         spacemacs-light)
   ;; If non nil the cursor color matches the state color in GUI Emacs.
   dotspacemacs-colorize-cursor-according-to-state t
   ;; Default font, or prioritized list of fonts. `powerline-scale' allows to
   ;; quickly tweak the mode-line size to make separators look not too crappy.
   dotspacemacs-default-font '("Inconsolata"
                               :size 14
                               :weight normal
                               :width normal
                               :powerline-scale 1.25)
   ;; The leader key
   dotspacemacs-leader-key "SPC"
   ;; The key used for Emacs commands (M-x) (after pressing on the leader key).
   ;; (default "SPC")
   dotspacemacs-emacs-command-key "SPC"
   ;; The key used for Vim Ex commands (default ":")
   dotspacemacs-ex-command-key ";"
   ;; The leader key accessible in `emacs state' and `insert state'
   ;; (default "M-m")
   dotspacemacs-emacs-leader-key "M-m"
   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it. (default ",")
   dotspacemacs-major-mode-leader-key ","
   ;; Major mode leader key accessible in `emacs state' and `insert state'.
   ;; (default "C-M-m")
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
   ;; These variables control whether separate commands are bound in the GUI to
   ;; the key pairs C-i, TAB and C-m, RET.
   ;; Setting it to a non-nil value, allows for separate commands under <C-i>
   ;; and TAB or <C-m> and RET.
   ;; In the terminal, these pairs are generally indistinguishable, so this only
   ;; works in the GUI. (default nil)
   dotspacemacs-distinguish-gui-tab nil
   ;; If non nil `Y' is remapped to `y$' in Evil states. (default nil)
   dotspacemacs-remap-Y-to-y$ nil
   ;; If non-nil, the shift mappings `<' and `>' retain visual state if used
   ;; there. (default t)
   dotspacemacs-retain-visual-state-on-shift t
   ;; If non-nil, J and K move lines up and down when in visual mode.
   ;; (default nil)
   dotspacemacs-visual-line-move-text nil
   ;; If non nil, inverse the meaning of `g' in `:substitute' Evil ex-command.
   ;; (default nil)
   dotspacemacs-ex-substitute-global nil
   ;; Name of the default layout (default "Default")
   dotspacemacs-default-layout-name "Default"
   ;; If non nil the default layout name is displayed in the mode-line.
   ;; (default nil)
   dotspacemacs-display-default-layout nil
   ;; If non nil then the last auto saved layouts are resume automatically upon
   ;; start. (default nil)
   dotspacemacs-auto-resume-layouts nil
   ;; Size (in MB) above which spacemacs will prompt to open the large file
   ;; literally to avoid performance issues. Opening a file literally means that
   ;; no major mode or minor modes are active. (default is 1)
   dotspacemacs-large-file-size 1
   ;; Location where to auto-save files. Possible values are `original' to
   ;; auto-save the file in-place, `cache' to auto-save the file to another
   ;; file stored in the cache directory and `nil' to disable auto-saving.
   ;; (default 'cache)
   dotspacemacs-auto-save-file-location nil
   ;; Maximum number of rollback slots to keep in the cache. (default 5)
   dotspacemacs-max-rollback-slots 5
   ;; If non nil, `helm' will try to minimize the space it uses. (default nil)
   dotspacemacs-helm-resize nil
   ;; if non nil, the helm header is hidden when there is only one source.
   ;; (default nil)
   dotspacemacs-helm-no-header nil
   ;; define the position to display `helm', options are `bottom', `top',
   ;; `left', or `right'. (default 'bottom)
   dotspacemacs-helm-position 'bottom
   ;; Controls fuzzy matching in helm. If set to `always', force fuzzy matching
   ;; in all non-asynchronous sources. If set to `source', preserve individual
   ;; source settings. Else, disable fuzzy matching in all sources.
   ;; (default 'always)
   dotspacemacs-helm-use-fuzzy 'always
   ;; If non nil the paste micro-state is enabled. When enabled pressing `p`
   ;; several times cycle between the kill ring content. (default nil)
   dotspacemacs-enable-paste-transient-state nil
   ;; Which-key delay in seconds. The which-key buffer is the popup listing
   ;; the commands bound to the current keystroke sequence. (default 0.4)
   dotspacemacs-which-key-delay 0.4
   ;; Which-key frame position. Possible values are `right', `bottom' and
   ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
   ;; right; if there is insufficient space it displays it at the bottom.
   ;; (default 'bottom)
   dotspacemacs-which-key-position 'bottom
   ;; If non nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil to boost the loading time. (default t)
   dotspacemacs-loading-progress-bar t
   ;; If non nil the frame is fullscreen when Emacs starts up. (default nil)
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup t
   ;; If non nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX. (default nil)
   dotspacemacs-fullscreen-use-non-native nil
   ;; If non nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (default nil) (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup nil
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-active-transparency 90
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-inactive-transparency 60
   ;; If non nil show the titles of transient states. (default t)
   dotspacemacs-show-transient-state-title t
   ;; If non nil show the color guide hint for transient state keys. (default t)
   dotspacemacs-show-transient-state-color-guide t
   ;; If non nil unicode symbols are displayed in the mode line. (default t)
   dotspacemacs-mode-line-unicode-symbols t
   ;; If non nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters point
   ;; when it reaches the top or bottom of the screen. (default t)
   dotspacemacs-smooth-scrolling t
   ;; Control line numbers activation.
   ;; If set to `t' or `relative' line numbers are turned on in all `prog-mode' and
   ;; `text-mode' derivatives. If set to `relative', line numbers are relative.
   ;; This variable can also be set to a property list for finer control:
   ;; '(:relative nil
   ;;   :disabled-for-modes dired-mode
   ;;                       doc-view-mode
   ;;                       markdown-mode
   ;;                       org-mode
   ;;                       pdf-view-mode
   ;;                       text-mode
   ;;   :size-limit-kb 1000)
   ;; (default nil)
   dotspacemacs-line-numbers nil
   ;; Code folding method. Possible values are `evil' and `origami'.
   ;; (default 'evil)
   dotspacemacs-folding-method 'evil
   ;; If non-nil smartparens-strict-mode will be enabled in programming modes.
   ;; (default nil)
   dotspacemacs-smartparens-strict-mode nil
   ;; If non-nil pressing the closing parenthesis `)' key in insert mode passes
   ;; over any automatically added closing parenthesis, bracket, quote, etc…
   ;; This can be temporary disabled by pressing `C-q' before `)'. (default nil)
   dotspacemacs-smart-closing-parenthesis nil
   ;; Select a scope to highlight delimiters. Possible values are `any',
   ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
   ;; emphasis the current one). (default 'all)
   dotspacemacs-highlight-delimiters 'all
   ;; If non nil, advise quit functions to keep server open when quitting.
   ;; (default nil)
   dotspacemacs-persistent-server t
   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `ag', `pt', `ack' and `grep'.
   ;; (default '("ag" "pt" "ack" "grep"))
   dotspacemacs-search-tools '("ag" "pt" "ack" "grep")
   ;; The default package repository used if no explicit repository has been
   ;; specified with an installed package.
   ;; Not used for now. (default nil)
   dotspacemacs-default-package-repository nil
   ;; Delete whitespace while saving buffer. Possible values are `all'
   ;; to aggressively delete empty line and long sequences of whitespace,
   ;; `trailing' to delete only the whitespace at end of lines, `changed'to
   ;; delete only whitespace for changed lines or `nil' to disable cleanup.
   ;; (default nil)
   dotspacemacs-whitespace-cleanup "trailing"
   ))

(defun dotspacemacs/user-init ()
  "Initialization function for user code.
It is called immediately after `dotspacemacs/init', before layer configuration
executes.
 This function is mostly useful for variables that need to be set
before packages are loaded. If you are unsure, you should try in setting them in
`dotspacemacs/user-config' first."

  (add-to-list 'default-frame-alist '(ns-transparent-titlebar . t))
  )

(defun dotspacemacs/user-config ()
  (setq require-final-newline t)
  (setq mode-require-final-newline t)

  (make-face-italic 'font-lock-doc-face)
  (make-face-italic 'font-lock-comment-face)

  (add-hook 'php-mode-hook 'php-enable-psr2-coding-style)

  ;; Powerline Stuff
  (setq ns-use-srgb-colorspace nil)
  ;; (setq powerline-default-separator 'utf-8)
  ;; (set-face-foreground 'modeline "#41c2e9")
  ;; (setq powerline-default-separator 'nil)

  (set-face-bold-p 'bold nil)

  ;; 5CCFE6
  (setq-default line-spacing 12)

  (setq history-length 100)
  (put 'minibuffer-history 'history-length 50)
  (put 'evil-ex-history 'history-length 50)
  (put 'kill-ring 'history-length 25)

  (setq js2-strict-missing-semi-warning nil)
  (setq js-indent-level 4)
  (setq neo-theme 'icons)

  (load-file "~/.dotfiles/spacemacs/layers/laravel/packages.el")

  ;; Ayu Theme
  (load-file "~/.dotfiles/spacemacs/themes/ayu-light-theme.el")
  (load-file "~/.dotfiles/spacemacs/themes/ayu-theme.el")
  (load-theme 'ayu)

  ;; Dark Mode Stuff
  (set-face-attribute 'vertical-border nil :foreground "#434748")

  ;; (rainbow-delimiters-mode -1)
  (global-hl-line-mode -1)
  (global-vi-tilde-fringe-mode -1)

  (global-set-key (kbd "TAB") 'hippie-expand)

  (add-to-list 'auto-mode-alist '("\\.blade\\.php\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.scss\\'" . scss-mode))
  (add-to-list 'auto-mode-alist '("\\.js\\'" . rjsx-mode))

  (add-hook 'hack-local-variables-hook (lambda () (setq truncate-lines t)))

  (spaceline-toggle-buffer-size-off)
  (spaceline-toggle-buffer-modified-off)
  (spaceline-toggle-buffer-encoding-abbrev-off)
  (spaceline-toggle-buffer-position-off)
  (spaceline-toggle-point-position-off)
  (spaceline-toggle-line-column-off)
  (spaceline-toggle-major-mode-off)
  (spaceline-toggle-minor-modes-off)
  (spaceline-toggle-hud-off)
  (spaceline-toggle-version-control-off)
  (spaceline-toggle-selection-info-off)

  (add-hook 'mmm-mode-hook (lambda ()
    ;; Dark Mode
    (set-face-background 'mmm-default-submode-face "#0f1419")
    (set-face-foreground 'font-lock-function-name-face "#41c2e9")

    ;; Light
    ;; (set-face-background 'mmm-default-submode-face "#fbfbfb")
    ;; (set-face-foreground 'font-lock-function-name-face "#41c2e9")
  ))

  ;; Light Mode
  ;; (set-face-background 'font-lock-function-name-face "#fbfbfb")

  (add-hook 'js2-mode-hook (lambda ()
    (set-face-foreground 'js2-object-property-access "#4eb5e1")
    (set-face-foreground 'error "#ff676c")
    (set-face-foreground 'js2-external-variable "#ff676c")
    (set-face-foreground 'font-lock-keyword-face "#41c2e9")
    (set-face-foreground 'js2-function-call "#ff7f00")
  ))

  (add-hook 'rjsx-mode-hook (lambda ()
      (make-face-italic 'font-lock-doc-face)
      (set-face-foreground 'font-lock-doc-face "#5c6773")
      (set-face-foreground 'font-lock-keyword-face "#41c2e9")
  ))

  (add-hook 'php-mode-hook (lambda ()
    (make-face-italic 'font-lock-doc-face)
    (set-face-foreground 'font-lock-doc-face "#5c6773")
    (set-face-foreground 'font-lock-type-face "#4eb5e1")
    (set-face-foreground 'php-constant "#4eb5e1")
    (set-face-foreground 'php-variable-name "#27b6d8")
    (set-face-foreground 'php-variable-sigil "#27b6d8")

    (set-face-foreground 'php-paamayim-nekudotayim "#ff7f00")
    (set-face-foreground 'php-object-op "#ff7f00")
    (set-face-foreground 'php-function-name "#ff7f00")
    (set-face-foreground 'php-method-call "#ff7f00")

    (set-face-foreground 'sp-show-pair-match-face "#6f7a86")
    (set-face-foreground 'font-lock-negation-char-face "#ff676c")
    (set-face-foreground 'php-keyword "#ff6310")
  ))

  (add-hook 'web-mode-hook (lambda ()
    (set-face-foreground 'web-mode-html-tag-face "#4eb5e1")
    (set-face-foreground 'web-mode-html-tag-bracket-face "#4eb5e1")
    (set-face-foreground 'web-mode-html-attr-name-face "#ff7f00")
    (set-face-foreground 'web-mode-block-delimiter-face "#ff676c")
    (set-face-foreground 'web-mode-block-control-face "#ff676c")
  ))

  ;; Keychords!
  (setq key-chord-two-keys-delay 0.4)

  (key-chord-define evil-insert-state-map (kbd "$$") (kbd "$this->"))
  (key-chord-define evil-insert-state-map (kbd "0-") (kbd "->"))
  (key-chord-define evil-insert-state-map (kbd ")-") (kbd "->"))
  (key-chord-define evil-insert-state-map (kbd "-=") (kbd "=>"))

  (key-chord-mode t)
  )

;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("75f9698e46c1cad4db703205c8aa415fcb72fc90f7760f68a4453cba3928cba6" "b74c55aa0869e8ae1236bf3b3a0ef252565ba76e0e73c224014a34634297a978" "22c01ac6b8e42978c58bd2ab2d308e64a03000bf77d7b0f939db431e14a092f1" "8cc9bab1b52577a11c3d6c9ed5f5222d332150b11e81863a9f6caaee48b5883b" "1547ff02da48d9377953bc8c56894ae17cbcc8eff1fc4fb1b03687e87de23fd4" "8c668dcb7423625d4cfa967c3062250233505905517b59c554856246508c0042" "7903c11f1df38f867f73a24539a673f7b06bcf561353bffa22fe8e873d17d7cd" "13a7b156489c62dde32ecbb6f11a9838744c770ea716cd4adaab69607a279b88" "12876c8ad64847c6d9473e7b43afa9a7c2292ff0241a52317ab828ebc0ac0af5" "b21554df2112e66f87a5eb12465b2ee45117e7f98b1da6e4449e0c4581912fab" "2c4840db3438ac9e08d51ef6ee1660afb2feed1a88be6e0a48f92af3b56a7483" "8bfb9147aa8f88b6bac944b31c2224a774a36d886c9f80aa76b373689793ff63" "0a5ca0e90f2bb580af6f7a6a600f060062b2677d34c8ed92706dfc5b47cbe34b" "cea3ec09c821b7eaf235882e6555c3ffa2fd23de92459751e18f26ad035d2142" "f446475d7dc4e382387edc7cedb8aa231797bcec7f328ffc6914551c6870087a" "3d7701efd75ff45be968bdbfe23ec41df6b8d4fcb0389618717989d991dfe1f0" "54472f6db535c18d72ca876a97ec4a575b5b51d7a3c1b384293b28f1708f961a" "ddc9775fbdcf65b035f27ab865b11c9124fc876d0a9156d9ed78591762db2b09" default)))
 '(evil-want-Y-yank-to-eol nil)
 '(package-selected-packages
   (quote
    (treepy graphql ob-elixir flycheck-mix flycheck-credo flycheck alchemist elixir-mode nginx-mode sql-indent rjsx-mode yasnippet-snippets pretty-mode stylus-mode base16-theme csv-mode edit-indirect ssass-mode vue-html-mode org-plus-contrib mmm-mode markdown-mode skewer-mode simple-httpd json-snatcher json-reformat multiple-cursors js2-mode projectile pkg-info epl request haml-mode gitignore-mode flx magit magit-popup git-commit ghub with-editor evil goto-chg undo-tree f php-mode web-completion-data s dash-functional tern dash company bind-key yasnippet packed memoize helm avy helm-core async auto-complete popup focus yaml-mode org-projectile org-category-capture org-present org-pomodoro alert log4e gntp org-mime org-download htmlize gnuplot ws-butler winum volatile-highlights vi-tilde-fringe uuidgen toc-org spaceline powerline restart-emacs rainbow-delimiters popwin persp-mode paradox spinner org-bullets open-junk-file neotree move-text lorem-ipsum linum-relative link-hint indent-guide hungry-delete hl-todo highlight-parentheses highlight-numbers parent-mode highlight-indentation google-translate golden-ratio flx-ido fill-column-indicator fancy-battery eyebrowse expand-region evil-visual-mark-mode evil-unimpaired evil-tutor evil-surround evil-search-highlight-persist evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-lisp-state smartparens evil-indent-plus evil-iedit-state iedit evil-exchange evil-ediff evil-args evil-anzu anzu eval-sexp-fu highlight dumb-jump define-word column-enforce-mode clean-aindent-mode auto-highlight-symbol aggressive-indent adaptive-wrap ace-link xterm-color which-key web-mode web-beautify vue-mode use-package unfill tagedit string-inflection smeargle slim-mode shell-pop scss-mode sass-mode pug-mode phpunit phpcbf php-extras php-auto-yasnippets pcre2el orgit mwim multi-term markdown-toc magit-gitflow macrostep livid-mode less-css-mode key-chord json-mode js2-refactor js-doc inflections hydra helm-themes helm-swoop helm-projectile helm-mode-manager helm-make helm-gitignore helm-flx helm-descbinds helm-css-scss helm-company helm-c-yasnippet helm-ag gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link gh-md fuzzy exec-path-from-shell evil-visualstar evil-magit evil-escape eshell-z eshell-prompt-extras esh-help emmet-mode elisp-slime-nav drupal-mode diminish company-web company-tern company-statistics coffee-mode bind-map auto-yasnippet auto-compile all-the-icons ace-window ace-jump-helm-line ac-ispell))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:foreground "#D9D7CE" :background "#0f1419")))))
