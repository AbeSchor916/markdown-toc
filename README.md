markdown-toc [![Build Status](https://travis-ci.org/ardumont/markdown-toc.png?branch=master)](https://travis-ci.org/ardumont/markdown-toc)
============

<!-- markdown-toc start - Don't edit this section. Run M-x mardown-toc/generate-toc again -->
**Table of Contents**

- [Use](#use)
- [Install](#install)
    - [emacs package repository](#emacs-package-repository)
        - [Setup](#setup)
            - [melpa stable](#melpa-stable)
            - [melpa](#melpa)
        - [Install](#install)
    - [Tarball](#tarball)
- [Inspiration](#inspiration)

<!-- markdown-toc end -->

A simple mode to create TOC in a markdown file.

# Use

Inside a markdown file, the first time, place yourself where you want to insert the TOC:
<kbd>M-x markdown-toc/generate-toc</kbd>

This will compute the TOC and insert it at current position.

Here is a possible output:

```markdown
<!-- markdown-toc start - Don't edit this section. Run M-x mardown-toc/generate-toc again -->
**Table of Contents**

- [some markdown page title](#some-markdown-page-title)
- [main title](#main-title)
	- [Sources](#sources)
		- [Marmalade (recommended)](#marmalade-recommended)
		- [Melpa-stable](#melpa-stable)
		- [Melpa (~snapshot)](#melpa-~snapshot)
	- [Install](#install)
		- [Load org-trello](#load-org-trello)
		- [Alternative](#alternative)
			- [Git](#git)
			- [Tar](#tar)
- [another title](#another-title)
	- [with](#with)
	- [some](#some)
	- [heading](#heading)

<!-- markdown-toc end -->
```

To update the TOC, simply reexecute: <kbd>M-x markdown-toc/generate-toc</kbd>

# Install

## emacs package repository

You need to add melpa or melpa-stable package repository before installing it.

### Setup

#### melpa stable

``` lisp
(require 'package)
(add-to-list 'package-archives '("melpa-stable" . "http://melpa-stable.milkbox.net/packages/"))
(package-initialize)
```

Then hit <kbd>M-x eval-buffer</kbd> to evaluate the buffer's contents.

#### melpa

``` lisp
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))
(package-initialize)
```

Then hit <kbd>M-x eval-buffer</kbd> to evaluate the buffer's contents.

### Install

<kbd>M-x package-install RET markdown-toc RET</kbd>

## Tarball

Retrieve the tarball https://github.com/ardumont/markdown-toc/releases.

Then hit <kbd>M-x package-install-file RET markdown-toc.tar RET</kbd>

# Inspiration

https://github.com/thlorenz/doctoc

The problem I had with doctoc is the installation process.
I do not want to install the node tools just for this.
