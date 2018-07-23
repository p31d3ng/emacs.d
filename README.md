# Emacs.d 

## Installation

For windows, please install [Monaco Font](https://github.com/todylu/monaco.ttf) first

For golang, please install golang first, otherwise comment out `init-go` from `init.el`

```
git clone https://github.com/p31d3ng/emacs.d.git ~/.emacs.d
go get -u github.com/mdempsky/gocode                           (macOS/Linux)
go get -u -ldflags -H=windowsgui github.com/mdempsky/gocode    (for windows)
go get -u github.com/rogpeppe/godef
go get -u github.com/dougm/goflymake

(Make sure GOPATH and PATH are correctly set)
(For Windows, edit PATH to use absolute path rather than %GOPATH%/bin, emacs won't be able to recognize it)
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
- [x] `Important` Golang
- [x] enabled `global-display-line-number-mode` by default
