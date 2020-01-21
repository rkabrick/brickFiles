;;; .doom.d/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here


;;; EVIL PLUGINS ;;;
(setq display-line-numbers 'relative)
(setq doom-theme 'doom-dracula)
(setq org-ditaa-jar-path "/usr/local/bin/ditaa/lib/ditaa.jar")

(defconst emacs-outlines-font-lock-alist
  ;; Outlines
  '(("\\(^;;;\\) "          ?■)
    ("\\(^;;;;\\) "         ?○)
    ("\\(^;;;;;\\) "        ?✸)
    ("\\(^;;;;;;\\) "       ?✿)))

(defconst lisp-outlines-font-lock-alist
  ;; Outlines
  '(("\\(^;; \\*\\) "          ?■)
    ("\\(^;; \\*\\*\\) "       ?○)
    ("\\(^;; \\*\\*\\*\\) "    ?✸)
    ("\\(^;; \\*\\*\\*\\*\\) " ?✿)))

(defconst python-outlines-font-lock-alist
  '(("\\(^# \\*\\) "          ?■)
    ("\\(^# \\*\\*\\) "       ?○)
    ("\\(^# \\*\\*\\*\\) "    ?✸)
    ("\\(^# \\*\\*\\*\\*\\) " ?✿)))

;; (add-hook 'outline-mode-hook 'set-outline-display-table)
;; (add-hook 'outline-minor-mode-hook 'set-outline-display-table)

;; (add-hook 'split-window-vertically 'dired-other-window)
