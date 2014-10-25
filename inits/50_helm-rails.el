(require 'helm-rails)

(add-hook 'ruby-mode
          '(lambda ()
             (local-set-key (kbd "C-c C-c") 'helm-rails-controllers)
             (local-set-key (kbd "s-y") 'helm-rails-models)
             (local-set-key (kbd "s-u") 'helm-rails-views)
             (local-set-key (kbd "s-o") 'helm-rails-specs)
             (local-set-key (kbd "s-r") 'helm-rails-all)))
