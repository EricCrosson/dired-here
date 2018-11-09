# dired-here
[![Build Status](https://travis-ci.org/EricCrosson/dired-here.svg?branch=master)](https://travis-ci.org/EricCrosson/dired-here)
[![Version](https://img.shields.io/github/tag/EricCrosson/dired-here.svg)](https://github.com/EricCrosson/dired-here/releases)

> Open Dired-buffer of directory containing current buffer-file

## Install

With [Quelpa](https://framagit.org/steckerhalter/quelpa)

``` {.sourceCode .lisp}
(use-package dired-here
  :quelpa (dired-here
           :fetcher github
           :repo "EricCrosson/dired-here")
  :bind ("C-c d" . dired-here))
```

Or manually, after downloading into your `load-path`

``` {.sourceCode .lisp}
(require 'dired-here)
(global-set-key (kbd "C-c d") 'dired-here)
```

## License

GPL 2 (or higher) © [Free Software Foundation, Inc](http://www.fsf.org/about).
