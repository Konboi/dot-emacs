(require 'smartchr)
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))

;; capture templates
(setq org-capture-templates
      '(("t" "TODO" entry (file+headline (expand-file-name "~/.emacs.d/org/task.org") "INBOX")
         "** TODO %?\n    %i\n    %a\n    %T")
        ("m" "Memo" entry (file (expand-file-name "~/.emacs.d/org/memo.org"))
                      "* %?\n    %i\n    %a\n    %T")))

;; agenda
(setq org-agenda-files (list (expand-file-name "~/.emacs.d/org")))

;; key-binding
(global-set-key "\C-cl" `org-store-link)
(global-set-key "\C-cc" `org-capture)
(global-set-key "\C-ca" `org-agenda)
(global-set-key "\C-cb" `org-iswitchb)

;; TODO cycle
(setq org-todo-keywords
      '((sequence "TODO(t)" "DOING(d@)" "STOP(s@)" "|" "DONE(f!)")))

(setq org-log-done 'time)
(setq org-log-done 'note)
