;; js2-mode
;; ORIGINAL: http://code.google.com/p/js2-mode
;; FORKED: https://github.com/mooz/js2-mode
;; INSTALL:
;; git clone https://github.com/mooz/js2-mode.git

(custom-set-variables
 '(js2-rebind-eol-bol-keys nil))

(require 'js2-mode)

(add-to-list 'auto-mode-alist '("\\.js" . js2-mode))

;; free C-m for default function, 'newline-and-indent
(define-key js2-mode-map (kbd "C-m") nil)

(add-hook 'js2-mode-hook
          '(lambda ()
             (require 'js)
             (setq js-indent-level 2
                   js-expr-indent-offset 2
                   indent-tabs-mode nil)))

;; js-doc
(require 'js-doc)
(add-hook 'js2-mode-hook
          '(lambda ()
             (local-set-key (kbd "C-c i") 'js-doc-insert-function-doc)
             (local-set-key (kbd "@") 'js-doc-insert-tag)))

;; moz-repl
;; INSTALL
;; (install-elisp "https://raw.github.com/bard/mozrepl/master/chrome/content/moz.el")
(add-hook 'js2-mode-hook
          '(lambda ()
             (local-set-key (kbd "C-c C-r") 'moz-send-region)))

(add-to-list 'auto-mode-alist '("\\.json$" . js2-mode))
