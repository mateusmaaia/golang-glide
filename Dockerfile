FROM golang:1.9.2-stretch

RUN apt-get update
RUN apt-get install docker
RUN curl https://glide.sh/get | sh
RUN go get -u github.com/jstemmer/go-junit-report
RUN go get -u github.com/golang/lint/golint
RUN go get -u github.com/golang/dep/cmd/dep
