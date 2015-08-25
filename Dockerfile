FROM debian:wheezy
MAINTAINER Leandro David Cacciagioni <leandro.21.2008@gmail.com>

RUN export DEBIAN_FRONTEND=noninteractive && \
  apt-get update && \
  apt-get dist-upgrade -qqy --force-yes && \
  apt-get install -qqy --force-yes --no-install-recommends wget ca-certificates && \
  mkdir /erlang && \
  wget https://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb -O /erlang/erlang-solutions_1.0_all.deb && \
  dpkg -i /erlang/erlang-solutions_1.0_all.deb && \
  apt-get update && apt-get install -qqy --force-yes esl-erlang=1:16.b.3-2 && \
  rm -rf /erlang && apt-get autoremove -qqy && \
  apt-get clean && apt-get autoclean && \
  rm -rf /usr/share/man/?? && rm -rf /usr/share/man/??_*

CMD erl
