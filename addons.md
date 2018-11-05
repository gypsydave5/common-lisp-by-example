# Emacs Addons which are Useful for Teaching Common Lisp

This adds the following functionality to Emacs:

- Increase the font size of all buffers at once.
- Evaluate a Lisp expression and insert the result as a comment in the same
  file, as per the examples.

The first is useful when showing your editor to a large group. The second is
useful when showing what each expression evaluates to.

## Installation

To install them, a short Elisp script is supplied:
[eval-and-comment.el][script]. Open this in Portacle and evaluate it with the
Emacs command `M-x eval-buffer`.

## Use

You can now zoom all buffers with `C-M-=` and zoom out with `C-M--`, and
evaluate and comment an expression your cursor is in with `C-c C-e`.

## Explanation

```elisp
(package-refresh-contents)
(package-install 'lispy)
(package-install 'default-text-scale)
(package-install 'markdown-mode+)
(default-text-scale-mode)
(lispy-mode)
(global-set-key (kbd "C-c e") 'lispy-eval-and-comment)
```

### Elisp
Elisp is a dialect of Lisp for writing commands to, and extending, the Emacs editor.

### `(package-refresh-contents)`
Updates the list of available packages to install in Emacs. This is always a good idea
before installing any new packages. Emacs packages are extensions to the Emacs editor.

### `(package-install 'lispy)`
This installs the Emacs package [`lispy`][lispy], which has a great many useful features
and commands, but we're only going to use one of them.

### `(package-install 'default-text-scale)`
This installs the Emacs package [`default-text-scale`][default-text-scale] which
takes care of the zooming in/out.

### `(default-text-scale-mode)`
Turns on `default-text-scale` for all buffers. If you need to do this again you
can type `M-x default-text-scale`.

### `(lispy-mode)`
Turns on lispy mode for the current buffer. We do this to bring the function we
want into scope.

### `(global-set-key (kbd "C-c C-e") 'lispy-eval-and-comment)`
This globally binds the key sequence `C-c C-e` to the lispy function `lispy-eval-and-comment`.

[lispy]: https://github.com/abo-abo/lispy
[default-text-scale]: https://github.com/purcell/default-text-scale
[script]: eval-and-comment.el
