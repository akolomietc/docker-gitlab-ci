# Base image: https://hub.docker.com/_/golang/
FROM golang:1.9
MAINTAINER pilotuser <pilotuser@gmail.com>
# Install golang dep
ENV GOPATH /go
ENV PATH ${GOPATH}/bin:$PATH
RUN go get -u github.com/golang/dep/cmd/dep
# Install golint
ENV GOPATH /go
ENV PATH ${GOPATH}/bin:$PATH
RUN go get -u github.com/golang/lint/golint
# Install go get 
ENV GOPATH /go
ENV PATH ${GOPATH}/bin:$PATH
RUN go get -u github.com/jteeuwen/go-bindata/...
# Install docker.io
RUN apt-get update && apt-get install -y docker.io
