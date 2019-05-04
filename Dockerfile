FROM nixos/nix

RUN nix-env -iA nixpkgs.emacs26-nox

ADD .emacs.d /root/.emacs.d
RUN emacs -batch -l ~/.emacs.d/init.el
