
FROM alpine:latest

WORKDIR iron-skillet

RUN apk add --update git python py-pip curl

RUN	pip install --upgrade pip

RUN pip install requests

RUN pip install pan-python

RUN pip install pandevice

RUN git clone https://github.com/PaloAltoNetworks/iron-skillet

RUN cd /iron-skillet