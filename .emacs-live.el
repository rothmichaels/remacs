(live-use-packs '(dev/foundation-pack
		  dev/power-pack
                  dev/colour-pack
                  dev/clojure-pack
                  dev/lang-pack
       	          dev/git-pack))

(live-add-packs '(~/.emacs-live-packs.d/roth-pack
                  ~/.emacs-live-packs.d/mithrandir-theme
                  ~/.emacs-live-packs.d/drupal-pack
		  ~/.emacs-live-packs.d/nemacs/packs/buffer-move))

(live-set-custom-file "~/git/remacs/custom-configuration.el" )

