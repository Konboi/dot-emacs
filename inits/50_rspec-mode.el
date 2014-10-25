(require `rspec-mode)

(add-hook 'ruby-mode
          '(lambda ()
             (local-set-key (kbd "C-c C-t")  'rspec-verify-single)
             (local-set-key (kbd "C-c C-a")  'rspec-verify-all)))
