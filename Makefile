VERSION=$$(grep "^;; Version: " markdown-toc.el | cut -f3 -d' ')
PACKAGE_FOLDER=markdown-toc-$(VERSION)
ARCHIVE=$(PACKAGE_FOLDER).tar
USER=ardumont
EMACS=emacs

.PHONY: clean

pr:
	hub pull-request -b ardumont:master

build:
	cask build

clean-dist:
	rm -rf dist/

clean: clean-dist
	rm -rf *.tar
	cask clean-elc

install:
	cask install

test: clean
	cask exec $(EMACS) --batch \
			-l ert \
			-l ./test/load-markdown-toc-tests.el \
			-f ert-run-tests-batch-and-exit

pkg-file:
	cask pkg-file

pkg-el: pkg-file
	cask package

package: clean pkg-el
	cp dist/$(ARCHIVE) .
	make clean-dist

info:
	cask info

install-cask:
	curl -fsSkL https://raw.github.com/cask/cask/master/go | python
