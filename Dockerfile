FROM python:2.7

MAINTAINER Kibatic <system@kibatic.com>

RUN pip install octodns
ENTRYPOINT ["/usr/local/bin/octodns-sync"]
