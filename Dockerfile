FROM python:2.7

MAINTAINER Kibatic <system@kibatic.com>

RUN pip install octodns
CMD ["/usr/local/bin/octodns-sync"]
