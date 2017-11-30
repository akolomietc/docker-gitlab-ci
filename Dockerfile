# Base image: https://hub.docker.com/_/golang/
FROM golang:1.9.2
MAINTAINER pilotuser <pilotuser@gmail.com>
# Install golang dep
ENV GOPATH /go
ENV PATH ${GOPATH}/bin:$PATH
RUN go get -u github.com/golang/dep/cmd/dep && \
    go get -u github.com/golang/lint/golint && \
    go get -u github.com/jteeuwen/go-bindata/...
