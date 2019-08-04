FROM silex/emacs:26.2

RUN apt-get update \
	&& apt-get install -y --no-install-recommends \
	ledger pandoc \
	&& rm -rf /var/lib/apt/lists/*

ADD .emacs.d /root/.emacs.d
RUN emacs -batch -l ~/.emacs.d/init.el

ADD some.ledger /root/some.ledger
ADD prof-cap /root/prof-cap

WORKDIR /root/
CMD "emacs"
#CMD "emacs" "some.ledger"
