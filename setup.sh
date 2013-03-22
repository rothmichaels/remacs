#!/bin/bash
SDIR=$(dirname "$0")

if [ -a ~/.emacs.d ];
then
  mv ~/.emacs.d ~/.emacs.d.bak_$(date +%Y.%m.%d)
fi
ln -s "$PWD/$SDIR/emacs-live" ~/.emacs.d

if [ -a ~/.emacs-live.el ];
then
  mv ~/.emacs-live.el ~/.emacs-live.el.bak_$(date +%Y.%m.%d)
fi
ln -s "$PWD/$SDIR/.emacs-live.el" ~/.emacs-live.el

if [ -a ~/.emacs-live-packs.d ];
then
  mv ~/.emacs-live-packs.d ~/.emacs-live-packs.d.bak_$(date +Y.%m.%d)
fi
ln -s "$PWD/$SDIR/packs" ~/.emacs-live-packs.d
