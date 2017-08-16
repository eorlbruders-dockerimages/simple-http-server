FROM registry.eorlbruder.de/supervisord
MAINTAINER  David Magnus Henriques <eorlbruder@magnus-henriques.de>

RUN pacman -Syyu --noconfirm --quiet --needed --force python2 && \
    pacman -Sc --noconfirm

ADD assets/simple-http.conf /etc/supervisor/conf.d/simple-http.conf
ADD assets/start_simplehttp /start_simplehttp

CMD ["supervisord", "-n"]
