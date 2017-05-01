; basic config
(line-number-mode t)
(column-number-mode t)
(setq-default indent-tabs-mode nil)

; ruby-mode
(autoload 'ruby-mode "ruby-mode"
  "Mode for editing ruby source files" t)
(add-to-list 'auto-mode-alist '("\\.rb$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Capfile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile$" . ruby-mode))

; suppress encoding magic comment
; see: http://at-aka.blogspot.jp/2013/11/emacs-ruby-magic-comment.html
(setq ruby-insert-encoding-magic-comment nil)

; http://emacs-jp.github.io/packages/package-management/package-el.html
(require 'package)

;; MELPA
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))

;; Marmalade
(add-to-list 'package-archives  '("marmalade" . "http://marmalade-repo.org/packages/"))

;; Initialize
(package-initialize)

; haml-mode
(require 'haml-mode)

; scss-mode
(setq scss-compile-at-save nil)

; elixir-mode
(add-to-list 'package-pinned-packages '(elixir-mode . "melpa-stable") t)
;; (add-to-list 'auto-mode-alist '("\\.ex$" . elixir-mode))

; sh-mode for *.zsh
(add-to-list 'auto-mode-alist '("\\.zsh\\'" . sh-mode))
