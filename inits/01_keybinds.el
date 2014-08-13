(global-set-key (kbd "C-c a")     'align)

(global-set-key (kbd "C-c M-a")   'align-regexp)
(global-set-key (kbd "C-h")       'backward-delete-char)
(global-set-key (kbd "C-x f")     'fill-paragraph)
(global-set-key (kbd "C-x M-f")   'fill-region)
(global-set-key (kbd "M-g")       'goto-line)
(global-set-key (kbd "C-S-i")     'indent-region)
(global-set-key (kbd "C-S-o")     'join-line)
(global-set-key (kbd "C-m")       'newline-and-indent)
(global-set-key (kbd "C-t")       'next-multiframe-window)
(global-set-key (kbd "C-T")     'previous-multiframe-window)
(global-set-key (kbd "C-M-r")     'replace-regexp)
(global-set-key (kbd "C-r")       'replace-string)
(global-set-key (kbd "C-/")       'undo)

(global-set-key (kbd "C-x M-b")   'list-buffers)
(global-set-key (kbd "C-c C-i")   'align-regexp)
(global-set-key (kbd "C-c C-u")   'cua-mode)

;; tags
(global-set-key (kbd "M-]") 'find-tag)
(global-set-key (kbd "M-[") 'pop-tag-mark)
(global-set-key (kbd "M-}") (read-kbd-macro "C-u M-."))
