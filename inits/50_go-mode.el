(require 'go-flymake)

(setenv "GOROOT" "/usr/local/go")
(setenv "GOPATH" "~/workspace/go")

(add-to-list 'exec-path (expand-file-name "/usr/local/go/bin"))
(add-to-list 'exec-path (expand-file-name "/home/vagrant/bin"))

(eval-after-load "go-mode"
  '(progn
     (require 'go-autocomplete)))

(add-hook 'before-save-hook 'gofmt-before-save)

(add-hook 'go-mode-hook
          (lambda ()
            (local-set-key (kbd "M-.") 'godef-jump)))

;; http://d.hatena.ne.jp/syohex/
(font-lock-add-keywords
  'go-mode
  '(("\\b\\(err\\)\\b" 1 '((:foreground "red") (:weight bold)) t)))
