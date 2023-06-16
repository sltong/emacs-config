;; don't display *Warnings* buffer when native compilation warnings are reported
(setq native-comp-async-report-warnings-errors 'silent)

;; set initial *scratch* buffer major mode to `fundamental-mode'
(setq initial-major-mode 'fundamental-mode)

;; make initial *scratch* buffer empty
(setq initial-scratch-message nil)

;; increase kill ring length
(setq kill-ring-max 500)

;; don't save duplicate entries in kill ring
(setq kill-do-not-save-duplicates t)

;; allow minibuffer commands in the minibuffer
(setq enable-recursive-minibuffers t)

;; preserve point (i.e. cursor) position when scrolling would normally move it off-screen
(setq scroll-preserve-screen-position t)

;; make a single space after a period end sentences
;; relevant for regular expressions (see `sentence-end')
(setq sentence-end-double-space nil)

;; don't indent tabs automatically
(setq-default indent-tabs-mode nil)

;; indent first, then try to complete thing at point
(setq tab-always-indent 'complete)

;; set default tab width
(setq-default tab-width 2)

;; don't display continuation lines, i.e. don't wrap lines
(setq-default truncate-lines t)

(setq-default fill-column 80)

;; don't report large file warning until file is at least 100MB
(setq-default large-file-warning-threshold (* 128 1024 1024))

;; don't ask for confirmation when following symbolic links
;; but display a warning about it in the minibuffer
(setq vc-follow-symlinks nil)

;; make /yes/ or /no/ choices into /y/ or /n/
(setq use-short-answers t)

;; increase chunksize reads from subprocesses to 2MB
(setq read-process-output-max (* 2 1024 1024))

;; don't use dialog boxes for questions
(setq use-dialog-box nil)


;; disable native compilation for the following packages
;; =which-key= seems to break if it gets natively compiled
;; "There is not enough space based on your settings and frame size"
;; is displayed when =which-key= tries to create its buffer
(setq native-comp-jit-compilation-deny-list '("which-key"))

(setq initial-scratch-message nil)

;; ignore casing
(setq read-file-name-completion-ignore-case t)
(setq read-buffer-completion-ignore-case t)
(setq completion-ignore-case t)

(setq use-short-answers t)
(setq yes-or-no-prompt "(y/n) ")

(setq confirm-kill-emacs 'yes-or-no-p)

(setq vc-follow-symlinks t)

(setq-default truncate-lines t)

(setq-default tab-width 4)

(setq indent-tabs-mode nil)

(setq mode-line-position-column-line-format '(" (%l,%C)"))

;; file and directory configurations
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(load custom-file)

(setq backup-directory-alist
      `(("." . ,(no-littering-expand-var-file-name "backups/"))))

(setq auto-save-file-name-transforms
      `((".*" ,(no-littering-expand-var-file-name "auto-save/") t)))

(setq custom-theme-directory (concat user-emacs-directory "etc/themes/"))
(load-theme 'minerva t)

;; graphical display
(set-face-attribute 'default nil :height 120)

;; module configurations
(defun lao-find-emacs-early-init-file ()
  "Find the Emacs early init file."
  (interactive)
  (find-file early-init-file))
(defun lao-find-emacs-init-file ()
  "Find the Emacs init file."
  (interactive)
  (find-file user-init-file))
(defun lao-find-defaults-module-file ()
  "Find the Emacs defaults module file."
  (interactive)
  (find-file
   (expand-file-name
    "lao-emacs-defaults-module.el" lao-emacs-modules-directory)))
(defun lao-find-built-ins-module-file ()
  "Find the Emacs built-ins module file."
  (interactive)
  (find-file
   (expand-file-name
    "lao-emacs-built-ins-module.el" lao-emacs-modules-directory)))
(defun lao-find-essentials-module-file ()
  "Find the Emacs essentials module file."
  (interactive)
  (find-file
   (expand-file-name
    "lao-emacs-essentials-module.el" lao-emacs-modules-directory)))
(defun lao-find-package-manager-module-file ()
  "Find the Emacs package manager module file."
  (interactive)
  (find-file
   (expand-file-name
    "lao-emacs-package-manager-module.el" lao-emacs-modules-directory)))
(defun lao-find-notes-module-file ()
  "Find the Emacs notes module file."
  (interactive)
  (find-file
   (expand-file-name
    "lao-emacs-notes-module.el" lao-emacs-modules-directory)))

;; unset `suspend-frame'
(keymap-global-unset "C-z")

(defvar-keymap config-map
  :doc "Keymap for user configurations.")

(defvar-keymap emacs-config-map
  :doc "Keymap for Emacs configurations."
  "i" #'lao-find-emacs-init-file
  "e" #'lao-find-emacs-early-init-file)

(defvar-keymap emacs-modules-map
  :doc "Keymap for Emacs modules.")

(set-keymap-parent emacs-config-map config-map)
(set-keymap-parent emacs-modules-map emacs-config-map)

(keymap-global-set "C-c c" config-map)
(keymap-set config-map "e" emacs-config-map)
(keymap-set emacs-config-map "m" emacs-modules-map)

;; (keymap-global-set "C-c c e i" #'lao-find-emacs-init-file)
;; (keymap-global-set "C-c c e e" #'lao-find-emacs-early-init-file)
;; (keymap-global-set "C-c c e m d" #'lao-find-defaults-module-file)
;; (keymap-global-set "C-c c e m e" #'lao-find-essentials-module-file)
;; (keymap-global-set "C-c c e m b" #'lao-find-built-ins-module-file)
;; (keymap-global-set "C-c c e m p" #'lao-find-package-manager-module-file)
;; (keymap-global-set "C-c c e m n" #'lao-find-notes-module-file)
(keymap-global-set "C-c o l" #'org-store-link)
(keymap-global-set "C-c o a" #'org-agenda)
(keymap-global-set "C-c o c" #'org-capture)

(keymap-global-set "C-<backspace>" #'(lambda () (interactive (kill-line 0))))

(keymap-global-set "s-o" #'other-window)

(provide 'lao-emacs-defaults-module)

