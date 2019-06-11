FROM silex/emacs

RUN apt-get update && apt-get install -y ledger

ADD .emacs.d /root/.emacs.d
RUN emacs -batch -l ~/.emacs.d/init.el

ADD some.ledger /root/some.ledger

WORKDIR /root/
CMD "bash"
