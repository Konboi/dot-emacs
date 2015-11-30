(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))

;; key-binding
(global-set-key "\C-cl" `org-store-link)
(global-set-key "\C-cc" `org-capture)
(global-set-key "\C-ca" `org-agenda)
(global-set-key "\C-cb" `org-iswitchb)

;; TODO cycle
(setq org-todo-keywords
      '((sequence "TODO" "DOING" "FEEDBACK" "|" "DONE" "DELEGATED")))

(setq org-log-done 'time)
(setq org-log-done 'note)
