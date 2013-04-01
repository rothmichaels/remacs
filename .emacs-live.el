(live-use-packs '(dev/foundation-pack
                  dev/colour-pack
                  live/clojure-pack
                  live/lang-pack
                  live/power-pack
                  live/git-pack))

(live-add-packs '(~/.emacs-live-packs.d/roth-pack
                  ~/.emacs-live-packs.d/mithrandir-theme
                  ~/.emacs-live-packs.d/drupal-pack))

(live-set-custom-file "~/git/remacs/custom-configuration.el" )
