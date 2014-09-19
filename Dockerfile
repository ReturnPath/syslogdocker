FROM ubuntu:14.04
RUN apt-get update -q
RUN apt-get install rsyslog
ADD ./ilc.conf /etc/rsyslog.d/ilc.conf
CMD rsyslogd -n
VOLUME /dev
VOLUME /var/log

