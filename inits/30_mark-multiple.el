;; mark-multiple
(require 'inline-string-rectangle)
;;(global-set-key (kbd "C-x r t") 'inline-string-rectangle)
(require 'mark-more-like-this)

(global-set-key (kbd "M-<") 'mark-previous-like-this)
(global-set-key (kbd "M->") 'mark-next-like-this)
;; kglobaley (kbd "C-M-m") 'mark-more-like-this) ; like the other two, but takes an argument (negative is previous)global-kglobaley (kbd "C-8") 'mark-all-like-this)

;; (add-hook 'sgml-mode-hook
;;           (lambda ()
;;             (require 'rename-sgml-tag)
;;             (define-key sgml-mode-map (kbd "C-c C-r") 'rename-sgml-tag)))
(add-hook 'html-mode-hook
          (lambda ()
            (require 'rename-sgml-tag)
            (define-key html-mode-map (kbd "C-c C-r") 'rename-sgml-tag)))
