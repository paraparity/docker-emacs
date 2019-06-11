FROM silex/emacs:26.2

RUN apt-get update && apt-get install -y ledger

ADD .emacs.d /root/.emacs.d
RUN emacs -batch -l ~/.emacs.d/init.el

ADD some.ledger /root/some.ledger
ADD prof-cap /root/prof-cap

WORKDIR /root/
CMD "emacs" "some.ledger"
