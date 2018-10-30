;; either eval the whole file (M-x eval-buffer) or each expression
(package-refresh-contents)
(package-install 'lispy)
(package-install 'default-text-scale)
(default-text-scale-mode)
(lispy-mode)
(global-set-key (kbd "C-c C-e") 'lispy-eval-and-comment)
