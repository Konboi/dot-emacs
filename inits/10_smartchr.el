(require 'smartchr)
(add-hook 'rhtml-mode-hook
          '(lambda ()
             (progn
               (local-set-key (kbd "<") (smartchr '("<" "<% `!!' %>" "<%= `!!' %>" "<")))
               )))
(add-hook 'php-mode-hook
          '(lambda ()
             (progn
               (local-set-key (kbd "<") (smartchr '("<?php `!!' ?>" "<?php" "<")))
               )))

(add-hook 'cperl-mode-hook
          '(lambda ()
             (progn
               (local-set-key (kbd "F") (smartchr '("F" "$")))
               (local-set-key (kbd "m") (smartchr '("m" "my ")))
               (local-set-key (kbd "=") (smartchr '("=" "=>" "==")))
               (local-set-key (kbd "-") (smartchr '("-" "->" "--")))
               )))
(add-hook 'ruby-mode-hook
          '(lambda ()
             (progn
               (local-set-key (kbd "=") (smartchr '("=" "=>" "==")))
               )))

(add-hook 'tx-mode-hook
          '(lambda ()
             (progn
               (local-set-key (kbd "<") (smartchr '("<" "<:" "<: `!! :>")))
               (local-set-key (kbd ">") (smartchr '(">" ":>")))
               )))
