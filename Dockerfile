FROM golang:1.7.3

RUN curl -o /tmp/get-pip.py https://bootstrap.pypa.io/get-pip.py \
    && python /tmp/get-pip.py \
    && pip install Pygments


