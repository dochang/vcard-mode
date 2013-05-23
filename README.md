
# Introduction

This package provides a major mode to edit vCard files in Emacs.

# Installation

Put `vcard-mode.el` under your load path.  Then add the following to
your `.emacs` file:

``` elisp
(require 'vcard-mode)
```

Or if you don't want to load it until editing a vCard file:

``` elisp
(autoload 'vcard-mode "vcard-mode" "Major mode for vCard files" t)
(add-to-list 'auto-mode-alist '("\\.vc\\(f\\|ard\\)\\'" . vcard-mode))
```
