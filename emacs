
; Set cursor color to white
(set-cursor-color "#ffffff") 
;----------------------
; configuration globale
;----------------------

(set-face-attribute 'default nil :height 89)
(if (window-system)
  (set-frame-height (selected-frame) 78))
(mouse-wheel-mode t)


(setq shell-file-name "fish")
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
(global-set-key [f7] 'next-error)
(global-set-key [f8] 'kill-compilation)

(global-auto-revert-mode 1)

;;gestion de la table matière et autre...
;      (reftex-mode)
;; correction à la volée syntaxique, on aime ou n'aime pas
;      (flyspell-mode)

;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; TypeRex configuration ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Loading TypeRex mode for OCaml files
(add-to-list 'load-path "/usr/local/share/emacs/site-lisp")
(add-to-list 'auto-mode-alist '("\\.ml[iylp]?" . typerex-mode))
(add-to-list 'interpreter-mode-alist '("ocamlrun" . typerex-mode))
(add-to-list 'interpreter-mode-alist '("ocaml" . typerex-mode))
(autoload 'typerex-mode "typerex" "Major mode for editing Caml code" t)

;; TypeRex mode configuration
(setq ocp-server-command "/usr/local/bin/ocp-wizard")
(setq-default indent-tabs-mode nil)

(add-to-list 'auto-mode-alist '("\\.eliom" . typerex-mode))
(setq ocp-server-command "ocp-wizard -add-impl-suffixes .eliom")

(add-hook 'typerex-load-hook
          '(lambda ()
             (define-key typerex-mode-map [f2] 'tuareg-eval-phrase)
             (define-key typerex-mode-map [f5] 'compile)
             (define-key typerex-mode-map [f6] 'recompile)
             (define-key typerex-mode-map [f7] 'next-error)
             ; (load-library "camlit")
             ; (camlit-minor-mode)
             ))

(setq vc-enabled-backends nil
      vc-handled-backends nil)


;; Uncomment to enable typerex command menu by right click
(setq ocp-menu-trigger [mouse-3])

;; Uncomment to make new syntax coloring look almost like Tuareg
;;(setq ocp-theme "tuareg_like")
;; Uncomment to disable new syntax coloring and use Tuareg one
;;(setq ocp-theme "tuareg")
;; Uncomment to disable syntax coloring completely
;;(setq ocp-syntax-coloring nil)

;; TypeRex currently uses the Tuareg indentation mechanism. To get a result
;; closer to the OCaml programming guidelines described at
;; http://caml.inria.fr/resources/doc/guides/guidelines.en.html
;; Some users prefer to indent slightly less, as
(setq typerex-let-always-indent nil)
(setq typerex-with-indent 0)
(setq typerex-function-indent 0)
(setq typerex-fun-indent 0)
; Another reasonable choice regarding if-then-else is:
(setq typerex-if-then-else-indent 0)

;;;; Auto completion (experimental)
;;;; Don't use M-x invert-face default with auto-complete! (emacs -r is OK)
(add-to-list 'load-path "/usr/local/share/emacs/site-lisp/auto-complete-mode")
(setq ocp-auto-complete t)

;;;; Using <`> to complete whatever the context, and <C-`> for `
;;(setq auto-complete-keys 'ac-keys-backquote-backslash)
;;;; Options: nil (default), 'ac-keys-default-start-with-c-tab, 'ac-keys-two-dollar
;;;; Note: this overrides individual auto-complete key settings

;;;; I want immediate menu pop-up
;;(setq ac-auto-show-menu 0.)
;;;; Short delay before showing help
;;(setq ac-quick-help-delay 0.3)
;;;; Number of characters required to start (nil to disable)
;;(setq ac-auto-start 0)

;;;; Uncomment to enable auto complete mode globally (independently of OCaml)
;;(require 'auto-complete-config)
;;(add-to-list 'ac-dictionary-directories "/usr/local/share/emacs/site-lisp/auto-complete-mode/ac-dict")
;;(ac-config-default)

;; For debugging only
;;;;(setq ocp-debug t)
;;;;(setq ocp-profile t)
;;;;(setq ocp-dont-catch-errors t)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; End of TypeRex configuration ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(cond 
 ((eq window-system 'ns) ; macosx
  ;; Invoke login shells, so that .profile or .bash_profile is read
  (setq shell-command-switch "-lc")))
