;; c-mode initialization
;; C言語用モード起動時にやること
(add-hook 'c-mode-hook
          '(lambda ()
             ;; indentation styles
             ;; インデントスタイル
             (c-set-style "stroustrup")
             (setq indent-tabs-mode nil)     ; インデントは空白文字で行う（TABコードを空白に変換）
             (c-set-offset 'innamespace 0)
             (setq c-basic-offset 2)
             (local-set-key (kbd "C-c C-c") 'quickrun-compile-only)))

;; C++ style
(add-hook 'c++-mode-hook
          '(lambda()
             (c-set-style "stroustrup")
             (setq indent-tabs-mode nil)     ; インデントは空白文字で行う（TABコードを空白に変換）
             (c-set-offset 'innamespace 0)   ; namespace {}の中はインデントしない
             (c-set-offset 'arglist-close 0) ; 関数の引数リストの閉じ括弧はインデントしない
             ))
