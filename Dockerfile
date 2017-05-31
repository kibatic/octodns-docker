FROM python:2.7

MAINTAINER Kibatic <system@kibatic.com>

RUN wget --quiet https://raw.githubusercontent.com/github/octodns/master/requirements.txt -O requirements.txt &&\
    pip install -e git+https://github.com/github/octodns.git@b549ee79e92c6e69e2cad3bbde8b62673d066c77#egg=octodns &&\
    pip install -r requirements.txt

ENTRYPOINT ["/usr/local/bin/octodns-sync"]
