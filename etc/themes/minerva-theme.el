;;; minerva-theme.el --- Theme -*- lexical-binding:t -*-

;; Copyright (C) 2022, Lao Tong

;; Author: Lao Tong <lao.s.t@pm.me>
;; Version: 0.1.0
;; Package-Requires: ((emacs "28.1"))

;; This file is not part of Emacs.

;; This program is free software: you can redistribute it and/or modify
;; it under the terms of the GNU Affero General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
;; GNU Affero General Public License for more details.

;; You should have received a copy of the GNU Affero General Public License
;; along with this program. If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:
;; Minerva is a dark theme loosely based on the Eva units from Hideaki Anno's
;; anime, Neon Genesis Evangelion.

;;; Code:
(deftheme minerva)
(let ((class '((class color) (min-colors 89)))
      (theme        "#423860")
      (bg-main      "#171717") (fg-main         "#c4c9cc")
      (bg-alt       "#1c1b21") (fg-alt          "#aaadb5")
      (bg-alt-light "#1f1e25") (fg-alt-light    "#999ca6")
      (bg-dim       "#131217") (fg-dim          "#878c97")
      (bg-active    "#212027") (fg-active       "#b3b9bd")
      (bg-inactive  "#0f0f11") (fg-inactive     "#878c97")
      (bg-muted     "#0d0d0d") (fg-muted        "#575a69") (fg-very-muted    "#37383f")
      (bg-highlight "#2d2c33") (fg-highlight    "#d6dce8")
      (fg-bright    "#e7ebf4")

      (black       "#040311") (white            "#fbfafc")
      (blue        "#6fb6d5") (dark-blue        "#577D9C") (light-blue       "#a8cbef")
      (cyan        "#6cbab6") (dark-cyan        "#4A7975") (light-cyan       "#73d8d1")
      (orange      "#e19f66") (dark-orange      "#8F6E49") (light-orange     "#e0a14c")
      (purple      "#b1a5e3") (dark-purple      "#9C6FD0") (light-purple     "#d1c0ef")
      (violet      "#cb9ae7") (dark-violet      "#A052C3") (light-violet     "#dbbcef")
      (red         "#e7989d") (dark-red         "#C95057") (light-red        "#f0babc")
      (pink        "#ea92bf") (dark-pink        "#BB538E") (light-pink       "#f0b8d3")
      (green       "#6ec065") (dark-green       "#5A7A46") (light-green      "#98d96c")
      (yellow      "#b9af66") (dark-yellow      "#797446") (light-yellow     "#D8D26C")

      (highlight   "#c9c049") (highlight-dark   "#969637") (highlight-bright "#f3e84f"))

  (custom-theme-set-faces
   'minerva
;;; default
   `(default              ((,class (:background ,bg-main :foreground ,fg-main))))
   `(cursor               ((,class (:background ,highlight-bright))))
   `(fringe               ((,class (:background ,bg-alt))))
   `(hl-line              ((,class (:background ,bg-highlight))))
   `(region               ((,class (:background ,highlight :foreground ,bg-highlight))))
   `(secondary-selection  ((,class (:background ,blue :foreground ,bg-main))))
   `(buffer-menu-buffer   ((,class (:foreground ,fg-active))))
   `(minibuffer-prompt    ((,class (:background ,bg-main :foreground ,light-yellow))))
   `(vertical-border      ((,class (:foreground ,bg-main))))
   `(internal-border      ((,class (:background ,bg-main :foreground ,bg-main))))
   `(show-paren-match     ((,class (:background ,bg-alt :foreground ,highlight :weight bold))))
   `(show-paren-mismatch  ((,class (:background ,bg-alt :foreground ,light-red :weight bold))))
   `(link                 ((,class (:background ,bg-alt :foreground ,light-green :underline t :italic t))))
   `(shadow               ((,class (:foreground ,fg-muted))))

;;; basic
   `(highlight           ((,class (:background ,bg-highlight))))
   `(error               ((,class (:foreground ,light-red :bold t))))
   `(success             ((,class (:foreground ,light-green :bold t))))
   `(warning             ((,class (:foreground ,light-yellow :bold t))))
   `(alert-low-face      ((,class (:foreground ,light-orange))))
   `(trailing-whitespace ((,class (:background ,fg-muted))))
   `(escape-glyph        ((,class (:foreground ,light-red))))
   `(homoglyph           ((,class (:foreground ,light-blue))))
   `(match               ((,class (:foreground ,light-green :background ,green))))
   `(header-line         ((,class (:foreground ,green))))
   `(vertical-border     ((,class (:foreground ,bg-alt))))

;;; font lock faces
   `(font-lock-builtin-face              ((,class (:foreground ,cyan))))
   `(font-lock-comment-face              ((,class (:foreground ,fg-muted))))
   `(font-lock-negation-char-face        ((,class (:foreground ,red))))
   `(font-lock-constant-face             ((,class (:foreground ,purple))))
   `(font-lock-doc-face                  ((,class (:foreground ,fg-muted))))
   `(font-lock-function-name-face        ((,class (:foreground ,blue))))
   `(font-lock-keyword-face              ((,class (:foreground ,purple))))
   `(font-lock-string-face               ((,class (:foreground ,yellow))))
   `(font-lock-type-face                 ((,class (:foreground ,yellow ))))
   `(font-lock-variable-name-face        ((,class (:foreground ,purple))))
   `(font-lock-warning-face              ((,class (:foreground ,yellow))))
   `(font-lock-regexp-grouping-construct ((,class (:foreground ,yellow))))

;;; completions
   `(completions-annotations ((,class (:foreground ,fg-inactive))))

;;; highlight indentation
   `(highlight-indentation-face ((,class (:foreground ,fg-muted))))

;;; mode line
   `(mode-line              ((,class :foreground ,fg-main :background ,theme)))
   `(mode-line-active       ((,class :foreground ,fg-main :background ,theme)))
   `(mode-line-inactive     ((,class :foreground ,fg-muted :background ,bg-alt)))
   `(mode-line-buffer-id    ((,class :foreground ,fg-main)))
   `(mode-line-highlight    ((,class :foreground ,highlight)))
   `(mode-line-emphasis     ((,class :foreground ,light-blue)))

;;; isearch
   `(isearch     ((,class :background ,highlight :foreground ,bg-highlight)))

;;; whitespace
   `(whitespace-line        ((,class :background ,bg-alt :foreground ,fg-muted)))
   `(whitespace-indentation ((,class :foreground ,highlight)))
   `(whitespace-trailing    ((,class :background ,dark-yellow)))

;;; term
   `(term               ((,class (:foreground ,purple :background ,bg-main))))
   `(term-color-black   ((,class (:foreground ,black))))
   `(term-color-blue    ((,class (:foreground ,light-blue))))
   `(term-color-red     ((,class (:foreground ,light-red))))
   `(term-color-green   ((,class (:foreground ,light-green))))
   `(term-color-yellow  ((,class (:foreground ,light-yellow))))
   `(term-color-magenta ((,class (:foreground ,light-purple))))
   `(term-color-cyan    ((,class (:foreground ,light-cyan))))
   `(term-color-white   ((,class (:foreground ,white))))

;;; smart mode line
   `(sml/global              ((,class :foreground ,fg-main)))
   `(sml/vc-edited           ((,class :foreground ,green)))
   `(sml/modified            ((,class :foreground ,pink)))
   `(sml/position-percentage ((,class :foreground ,yellow)))
   `(sml/col-number          ((,class :foreground ,yellow)))
   `(sml/line-number         ((,class :foreground ,yellow)))
   `(sml/projectile          ((,class :foreground ,blue)))
   `(sml/git                 ((,class :foreground ,green)))

;;; vterm
   ;; foreground for ANSI colors 0-7 (standard) and background for colors 8-15 (high intensity)
   `(vterm-color-black   ((,class (:foreground ,black :background ,bg-alt))))
   `(vterm-color-blue    ((,class (:foreground ,blue :background ,dark-blue))))
   `(vterm-color-red     ((,class (:foreground ,red :background ,dark-red))))
   `(vterm-color-green   ((,class (:foreground ,green :background ,dark-green))))
   `(vterm-color-yellow  ((,class (:foreground ,yellow :background ,dark-yellow))))
   `(vterm-color-magenta ((,class (:foreground ,purple :background ,dark-purple))))
   `(vterm-color-cyan    ((,class (:foreground ,cyan :background ,dark-cyan))))
   `(vterm-color-white   ((,class (:foreground ,fg-main :background ,white))))

   `(lazy-highlight      ((,class (:foreground ,light-purple :background ,bg-alt))))

;;; diff-hl
   `(diff-hl-change ((,class (:foreground ,yellow :background ,dark-yellow))))
   `(diff-hl-delete ((,class (:foreground ,red :background ,dark-red))))
   `(diff-hl-insert ((,class (:foreground ,green :background ,dark-green))))

;;; dashboard
   `(dashboard-heading           ((,class (:foreground ,green))))
   `(dashboard-no-items-face     ((,class (:foreground ,fg-muted))))
   `(dashboard-text-banner       ((,class (:foreground ,purple))))
   `(dashboard-banner-logo-title ((,class (:foreground ,purple))))
   `(dashboard-footer            ((,class (:foreground ,yellow))))
   `(widget-button               ((,class (:foreground ,blue))))
   `(widget-button-pressed       ((,class (:foreground ,yellow))))

;;; perspective
   `(persp-selected-face ((,class (:foreground ,highlight))))

;;; org mode
   `(org-date                  ((,class (:foreground ,yellow))))
   `(org-date-selected         ((,class (:foreground ,yellow))))
   `(org-agenda-clocking       ((,class (:foreground ,yellow))))
   `(org-drawer                ((,class (:foreground ,dark-blue))))
   `(org-document-title        ((,class (:foreground ,yellow))))
   `(org-document-info         ((,class (:foreground ,yellow))))
   `(org-document-info-keyword ((,class (:foreground ,fg-muted))))
   `(org-headline-done         ((,class (:foreground ,fg-muted))))
   `(org-footnote              ((,class (:foreground ,fg-muted :italic t))))
   `(org-meta-line             ((,class (:foreground ,fg-muted))))
   `(org-special-keyword       ((,class (:foreground ,dark-purple))))
   `(org-verbatim              ((,class (:foreground ,purple))))

   `(org-level-1               ((,class (:foreground ,purple))))
   `(org-level-2               ((,class (:foreground ,cyan))))
   `(org-level-3               ((,class (:foreground ,yellow))))
   `(org-level-4               ((,class (:foreground ,blue))))
   `(org-level-5               ((,class (:foreground ,orange))))

   ;; org blocks
   `(org-block            ((,class (:background ,bg-alt :foreground ,fg-alt))))
   `(org-block-begin-line ((,class (:background ,bg-alt-light :foreground ,fg-muted :extend t))))
   `(org-block-end-line   ((,class (:background ,bg-alt-light :foreground ,fg-muted :extend t))))

   ;; org todo
   `(org-todo ((,class (:foreground ,yellow :background ,bg-highlight :bold t))))
   `(org-done ((,class (:foreground ,green :background ,bg-highlight :bold t))))

   ;; org super agenda
   `(org-super-agenda-header ((,class (:foreground ,purple :bold t))))


;;; rainbow delimiters
   `(rainbow-delimiters-depth-1-face   ((,class :foreground ,purple)))
   `(rainbow-delimiters-depth-2-face   ((,class :foreground ,cyan)))
   `(rainbow-delimiters-depth-3-face   ((,class :foreground ,orange)))
   `(rainbow-delimiters-depth-4-face   ((,class :foreground ,blue)))
   `(rainbow-delimiters-depth-5-face   ((,class :foreground ,yellow)))
   `(rainbow-delimiters-depth-6-face   ((,class :foreground ,violet)))
   `(rainbow-delimiters-depth-7-face   ((,class :foreground ,green)))
   `(rainbow-delimiters-depth-8-face   ((,class :foreground ,pink)))
   `(rainbow-delimiters-unmatched-face ((,class :foreground ,red)))

;;; web mode
   `(web-mode-html-attr-name-face ((,class :foreground ,light-green)))
   `(web-mode-html-tag-face       ((,class :foreground ,light-purple)))

;;; orderless
   `(orderless-match-face-0 ((,class :foreground ,highlight :weight bold)))

;;; keycast
   `(keycast-key ((,class :foreground ,bg-main :background ,dark-purple)))
   )

;;; emacs >= 28
  (when (>= emacs-major-version 28)
    (custom-theme-set-faces
     'minerva
     `(tab-line              ((,class (:background ,bg-alt :foreground ,cyan))))
     `(tab-line-tab          ((,class (:inherit tab-line))))
     `(tab-line-tab-inactive ((,class (:background ,bg-alt :foreground ,bg-muted))))
     `(tab-line-tab-current  ((,class (:background ,bg-alt :foreground ,purple))))
     `(tab-line-highlight    ((,class (:background ,bg-alt  :foreground ,purple))))))
  )

;;; autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))
(provide-theme 'minerva)

;; End:
;;; minerva-theme.el ends here
