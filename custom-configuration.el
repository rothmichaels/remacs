(defun hello-world ()
  (interactive)
  "hello, world")

(live-set-default-darwin-font "Courier-14")

(setq magit-last-seen-setup-instructions "1.4.0")

;; (set-frame-position (selected-frame) 0 0)
;; (set-frame-height (selected-frame) 66)
;; (set-frame-width (selected-frame) 208)
;; (split-window-right)

(add-hook 'text-mode-hook 'turn-on-auto-fill)

;; (require 'tex-site)

;;; ROUNDTOWN ADDITIONS
(live-set-default-darwin-font "Courier 17")
;;; ROUNDTOWN END

(setq explicit-shell-file-name "emacs-bash.sh")


(server-start)

;;; org mode
(setq org-directory "~/Dropbox/org")
(setq org-mobile-inbox-for-pull "~/Dropbox/org/flagged.org")
(setq org-mobile-directory "~/Dropbox/Apps/MobileOrg")
(add-hook 'org-mode-hook (lambda () (auto-fill-mode 1)))
(add-hook 'org-mode-hook (lambda () (auto-complete-mode -1)))
(add-hook 'org-mode-hook (lambda () (org-indent-mode 1)))
(setq org-mobile-files (mapcar (lambda (s) (concat org-directory "/" s))
                               '("Workbar-App.org")))

(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)

(setq org-default-notes-file (concat org-directory "/notes.org"))
(define-key global-map "\C-cc" 'org-capture)

(setq org-todo-keywords '((sequence "TODO(t)" "WAITING(w)" "|" "DONE")))

;;; markdown
(add-hook 'markdown-mode-hook (lambda () (auto-fill-mode 1)))
(add-hook 'markdown-mode-hook (lambda () (auto-complete-mode -1)))

;(byte-recompile-directory (expand-file-name "~/.emacs.d") 0)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(haskell-notify-p t)
 '(haskell-process-type (quote ghci))
 '(haskell-stylish-on-save t)
 '(haskell-tags-on-save t)
 '(magit-log-arguments (quote ("--graph" "--color" "--decorate" "-n256")))
 '(magit-popup-use-prefix-argument (quote default))
 '(magit-refs-sections-hook
   (quote
    (magit-insert-error-header magit-insert-branch-description magit-insert-local-branches magit-insert-remote-branches)))
 '(org-agenda-files (quote ("~/Dropbox/org/Workbar-App.org")))
 '(safe-local-variable-values
   (quote
    ((python-shell-interpreter-args . "~/Documents/piccles.d/piccles_server/manage.py shell"))))
 '(sclang-auto-scroll-post-buffer t)
 '(sclang-eval-line-forward nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(diff-added ((t (:foreground "Green"))))
 '(diff-removed ((t (:foreground "Red"))))
 '(ediff-even-diff-A ((((class color) (background dark)) (:background "dark green"))))
 '(ediff-even-diff-B ((((class color) (background dark)) (:background "dark red"))))
 '(ediff-odd-diff-A ((((class color) (background dark)) (:background "dark green"))))
 '(ediff-odd-diff-B ((((class color) (background dark)) (:background "dark red"))))
 '(eval-sexp-fu-flash ((((class color) (background light)) (:background "grey15" :foreground "DeepPink3"))))
 '(mumamo-background-chunk-major ((((class color) (background dark)) (:background "black"))))
 '(mumamo-background-chunk-submode1 ((((class color) (background dark)) (:background "black")))))
