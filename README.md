# Emacs.d 

## Installation

For windows, please install [Monaco Font](https://github.com/todylu/monaco.ttf) first

For golang, please install golang first, otherwise comment out `init-go` from `init.el`

```bash
# Install Go Dependencies (Optional)
go get -u -v github.com/ramya-rao-a/go-outline
go get -u -v github.com/acroca/go-symbols
go get -u -v github.com/mdempsky/gocode
go get -u -v github.com/rogpeppe/godef
go get -u -v golang.org/x/tools/cmd/godoc
go get -u -v github.com/zmb3/gogetdoc
go get -u -v golang.org/x/lint/golint
go get -u -v github.com/fatih/gomodifytags
go get -u -v golang.org/x/tools/cmd/gorename
go get -u -v sourcegraph.com/sqs/goreturns
go get -u -v golang.org/x/tools/cmd/goimports
go get -u -v github.com/cweill/gotests/...
go get -u -v golang.org/x/tools/cmd/guru
go get -u -v github.com/josharian/impl
go get -u -v github.com/haya14busa/goplay/cmd/goplay
go get -u -v github.com/uudashr/gopkgs/cmd/gopkgs
go get -u -v github.com/davidrjenni/reftools/cmd/fillstruct
go get -u -v github.com/alecthomas/gometalinter
gometalinter --install

# clone git to local ~/.emacs.d
rm -rf ~/.emacs.d
git clone git@github.com:p31d3ng/emacs.d.git ~/.emacs.d

Launch emacs
```

## Modifications

This repo is based on [purcell/emacs.d](https://github.com/purcell/emacs.d), but made following modifications

- [ ] Ruby / Ruby on Rails
- [x] CSS / LESS / SASS / SCSS
- [x] HAML / Markdown / Textile / ERB
- [ ] Clojure (with Cider and nRepl)
- [x] Javascript / Coffeescript
- [x] Python
- [ ] PHP
- [ ] Haskell
- [ ] Elm
- [ ] Erlang
- [x] Common Lisp (with Slime)
- [x] Golang (go-mode + flycheck + go-gometalinter)
- [x] Disable swapping of Command and Option Key in OSX
- [x] enabled `global-display-line-number-mode` by default
