FROM golang:1.9.2-stretch

RUN apt-get update -qq
RUN apt-get install -qqy \
    apt-transport-https \
    ca-certificates \
    curl \
    lxc \
    iptables \
    python3-pip \ 
    python-dev \ 
RUN pip install --upgrade pip 
RUN curl -sSL https://get.docker.com/ | sh
RUN curl https://glide.sh/get | sh
RUN go get -u github.com/jstemmer/go-junit-report
RUN go get -u github.com/golang/lint/golint
RUN go get -u github.com/golang/dep/cmd/dep
ARG GOPATH=~/go
ARG GOBIN=~/go/bin
