FROM golang:1.15 as build

WORKDIR /
RUN git clone https://github.com/prometheus-community/pushprox.git
WORKDIR /pushprox
RUN make build

EXPOSE 8080
ENTRYPOINT [ "/bin/bash", "-l", "-c" ]
