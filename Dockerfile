FROM golang:1.7.3

RUN curl -o /tmp/get-pip.py https://bootstrap.pypa.io/get-pip.py \
    && python /tmp/get-pip.py \
    && pip install Pygments

ADD https://github.com/spf13/hugo/releases/download/v0.17/hugo_0.17_Linux-64bit.tar.gz /tmp/

RUN tar xvf /tmp/hugo_0.17_Linux-64bit.tar.gz -C /tmp \
    && cp /tmp/hugo_0.17_linux_amd64/hugo_0.17_linux_amd64 /usr/local/bin/hugo
