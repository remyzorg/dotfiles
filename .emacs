
; Set cursor color to white
(set-cursor-color "#ffffff") 
;----------------------
; configuration globale
;----------------------

(set-face-attribute 'default nil :height 89)
(if (window-system)
  (set-frame-height (selected-frame) 78))
(mouse-wheel-mode t)

(set-default-font "Inconsolata-12")

(setq shell-file-name "zsh")
(setq shell-command-switch "-ic")

; accents
;(standard-display-european 1)

; touches suppr, home et end
(global-set-key [delete] 'delete-char)
(global-set-key [home] 'beginning-of-line)
(global-set-key [end] 'end-of-line)

;Pour sauver l'historique
(savehist-mode 1)

(mouse-wheel-mode t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(auto-compression-mode t nil (jka-compr))
 '(case-fold-search t)
 '(column-number-mode t)
;; '(current-language-environment "Latin-9")
;; '(default-input-method "latin-9-prefix")
 '(global-font-lock-mode t nil (font-lock))
 '(inhibit-startup-screen t)
 '(line-number-mode 1)
 '(pc-select-meta-moves-sexps t)
 '(pc-select-selection-keys-only t)
 '(pc-selection-mode t t)
 '(save-place t nil (saveplace))
 '(show-paren-mode t nil (paren))
 '(text-mode-hook (quote (turn-on-auto-fill text-mode-hook-identify)))
 '(tool-bar-mode nil)
 '(tooltip-mode nil))

(add-to-list 'load-path "~/.emacs.d/color-theme")
(require 'color-theme)
(color-theme-initialize)




(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )



(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(add-to-list 'load-path "~/.emacs.d/evil")
    (require 'evil)
    (evil-mode 1)


(add-to-list 'load-path "~/.emacs.d")
(require 'undo-tree)
(global-undo-tree-mode 1)
(defalias 'redo 'undo-tree-redo)
(global-set-key (kbd "C-r") 'redo)



(load "~/.emacs.d/color-theme-molokai.el")
;; (load "~/.emacs.d/hemisu/hemisu-dark-theme.el")
(color-theme-molokai)

(add-hook 'haskell-mode-hook 'turn-on-haskell-indent)

(global-set-key [f1] 'previous-buffer)
(global-set-key [f2] 'next-buffer)
(global-set-key [f3] 'kill-buffer)
(global-set-key [f5] 'compile)
(global-set-key [f6] 'recompile)
(global-set-key [f7] 'next-error)
(global-set-key [f8] 'kill-compilation)

(global-auto-revert-mode 1)

;;gestion de la table matière et autre...
;      (reftex-mode)
;; correction à la volée syntaxique, on aime ou n'aime pas
;      (flyspell-mode)


(cond 
 ((eq window-system 'ns) ; macosx
  ;; Invoke login shells, so that .profile or .bash_profile is read
  (setq shell-command-switch "-lc")))

;; Add opam emacs directory to the load-path
(setq opam-share (substring (shell-command-to-string "opam config var share 2> /dev/null") 0 -1))

(add-to-list 'load-path (concat opam-share "/emacs/site-lisp"))

;; (load-file (concat opam-share "/emacs/site-lisp/ocp-indent.el"))
;; (load-file (concat opam-share "/emacs/site-lisp/merlin.el"))

;; Load merlin-mode
(require 'merlin)
;; Start merlin on ocaml files
(add-hook 'tuareg-mode-hook 'merlin-mode t)
(add-hook 'caml-mode-hook 'merlin-mode t)
;; Enable auto-complete
(setq merlin-use-auto-complete-mode 'easy)
;; Use opam switch to lookup ocamlmerlin binary
(setq merlin-command 'opam)

(with-temp-buffer (insert (shell-command-to-string "ocp-edit-mode emacs -load-global-config")) (eval-buffer))

