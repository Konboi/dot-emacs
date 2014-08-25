(defalias 'perl-mode 'cperl-mode)
(setq cperl-indent-level 4)
(setq cperl-continued-statement-offset 4)
(setq cperl-brace-offset -4)
(setq cperl-label-offset -4)
(setq cperl-indent-parens-as-block t)
(setq cperl-close-paren-offset -4)
(setq cperl-tab-always-indent t)
(setq cperl-electric-parens t) ; 対応する括弧自動挿入
(setq cperl-invalid-face nil)
(setq cperl-highlight-variables-indiscriminately t)

; steal from perlhacks
(global-set-key "\M-p" 'cperl-perldoc)

(add-hook 'cperl-mode-hook '(lambda ()
                              (setq indent-tabs-mode nil)
                              (setq fill-column 78)
                              (setq auto-fill-mode t)
                              (set-face-background 'cperl-hash-face (face-background 'default))
                              (setq cperl-hash-face 'cperl-hash-face)
                              ;(make-face 'cperl-array-face)
                              ;(set-face-foreground 'cperl-array-face "color-69")
                              (set-face-background 'cperl-array-face (face-background 'default))
                              (setq cperl-array-face 'cperl-array-face)
                              ))


; perl tidy
(defun perltidy-region ()
  "Run perltidy on the current region."
  (interactive)
  (save-excursion
    (shell-command-on-region (point) (mark) "perltidy -q" nil t)))
(defun perltidy-defun ()
  "Run perltidy on the current defun."
  (interactive)
  (save-excursion (mark-defun)
  (perltidy-region)))

(global-set-key "\C-ct" 'perltidy-region)
(global-set-key "\C-c\C-t" 'perltidy-defun)

(add-to-list 'auto-mode-alist '("\\.t$" . perl-mode))
(add-to-list 'auto-mode-alist '("\\.pm$" . perl-mode))
(add-to-list 'auto-mode-alist '("\\.psgi$" . perl-mode))
(add-to-list 'auto-mode-alist '("\\.pl$" . perl-mode))
