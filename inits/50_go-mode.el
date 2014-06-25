(require ;go-mode)
(require 'go-autocomplete)
(require 'go-flymake)

(setenv "GOROOT" "/usr/local/go")
(setenv "GOPATH" "~/workspace/go/bin")

(add-to-list 'exec-path (expand-file-name "/usr/local/go/bin"))
(add-to-list 'exec-path (expand-file-name "~/workspace/go/bin"))

(eval-after-load "go-mode"
  '(progn
     (require 'go-autocomplete)))
