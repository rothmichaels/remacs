(live-use-packs '(dev/foundation-pack
                live/colour-pack
                live/clojure-pack
                live/lang-pack
                live/power-pack
		live/git-pack))

(live-add-packs '(~/.emacs-live-packs.d/roth-pack
                  ~/.emacs-live-packs.d/mithrandir-theme))

(server-start)

;(byte-recompile-directory (expand-file-name "~/.emacs.d") 0)
