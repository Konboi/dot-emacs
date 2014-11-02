(require 'go-flymake)

(setenv "GOPATH" "~/")
(add-to-list 'exec-path (expand-file-name "~/bin"))

(eval-after-load "go-mode"
  '(progn
     (require 'go-autocomplete)))

(add-hook 'before-save-hook 'gofmt-before-save)

(add-hook 'go-mode-hook
          (lambda ()
            (local-set_ket (kbd "C-c C-c" 'go-remove-unused-imports)
            (local-set-key (kbd "M-p") 'godoc)
            (local-set-key (kbd "M-]") 'godef-jump))))


;; http://d.hatena.ne.jp/syohex/
(font-lock-add-keywords
  'go-mode
  '(("\\b\\(err\\)\\b" 1 '((:foreground "red") (:weight bold)) t)))
