(setenv "GOROOT" "/usr/local/go")
(setenv "GOPATH" "~/workspace/go")

(add-to-list 'exec-path (expand-file-name "/usr/local/go/bin"))
(add-to-list 'exec-path (expand-file-name "/home/vagrant/bin"))

(eval-after-load "go-mode"
  '(progn
     (require 'go-autocomplete)))

(require 'go-flymake)

(add-hook 'before-save-hook 'gofmt-before-save)
