(defun hello-world ()
  (interactive)
  "hello, world")

(live-set-default-darwin-font "Courier-14")

(set-frame-position (selected-frame) 0 0)
(set-frame-height (selected-frame) 66)
(set-frame-width (selected-frame) 208)
(split-window-right)

(server-start)

;(byte-recompile-directory (expand-file-name "~/.emacs.d") 0)
