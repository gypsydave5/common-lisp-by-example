;; either eval the whole file (M-x eval-buffer) or each expression
(package-refresh-contents)
(package-install 'lispy)
(package-install 'default-text-scale)
(package-install 'markdown-mode+)
(default-text-scale-mode)
(lispy-mode)
(global-set-key (kbd "C-c e") 'lispy-eval-and-comment)
