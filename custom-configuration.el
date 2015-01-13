(defun hello-world ()
  (interactive)
  "hello, world")

(live-set-default-darwin-font "Courier-14")

;; (set-frame-position (selected-frame) 0 0)
;; (set-frame-height (selected-frame) 66)
;; (set-frame-width (selected-frame) 208)
;; (split-window-right)

(add-hook 'text-mode-hook 'turn-on-auto-fill)

(require 'tex-site)

(server-start)

;;; org mode
(setq org-directory "~/Dropbox/org")
(setq org-mobile-inbox-for-pull "~/Dropbox/org/flagged.org")
(setq org-mobile-directory "~/Dropbox/Apps/MobileOrg")
(add-hook 'org-mode-hook (lambda () (auto-fill-mode -1)))
(add-hook 'org-mode-hook (lambda () (org-indent-mode 1)))
(setq org-mobile-files (mapcar (lambda (s) (concat org-directory "/" s))
                               '("notes.org"
                                 "todo.org"
                                 "blog.org"
                                 "wasabi-web.org")))



(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)

(setq org-default-notes-file (concat org-directory "/notes.org"))
(define-key global-map "\C-cc" 'org-capture)

(setq org-todo-keywords '((sequence "TODO(t)" "WAITING(w)" "|" "DONE")))

;;; markdown
(add-hook 'markdown-mode-hook (lambda () (auto-fill-mode -1)))

;(byte-recompile-directory (expand-file-name "~/.emacs.d") 0)
