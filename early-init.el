;; early-init.el --- Early Initialization File -*- lexical-binding: t; -*-

(when (featurep 'native-compile)
  (setq native-comp-async-report-warnings-errors 'silent)
  (startup-redirect-eln-cache "var/eln-cache/"))

;; garbage collection
(setq gc-cons-percentage 1
      gc-cons-threshold most-positive-fixnum)

(defun lao/set-after-early-init-gc-values ()
  (setq gc-cons-percentage 0.1
        gc-cons-threshold (* 1024 1024 2))) ; 2MB

(add-hook 'after-init-hook 'lao/set-after-early-init-gc-values)

(setq frame-resize-pixelwise t
      frame-inhibit-implied-resize t)

;; don't wait for GTK events
(setq-default pgtk-wait-for-event-timeout 0)

;; graphical display
(add-to-list 'initial-frame-alist '(fullscreen . maximized))
(add-to-list 'default-frame-alist '(menu-bar-lines . 0))
(add-to-list 'default-frame-alist '(tool-bar-lines . 0))
(add-to-list 'default-frame-alist '(vertical-scroll-bars))
(add-to-list 'default-frame-alist '(fullscreen . maximized))

(set-face-attribute 'default nil :family "JetBrains Mono NL")
(set-face-attribute 'fixed-pitch-serif nil :family "JetBrains Mono NL")

(setq inhibit-startup-message t)
(customize-set-variable 'initial-major-mode 'fundamental-mode)
