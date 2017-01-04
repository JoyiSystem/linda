FROM golang

RUN go get github.com/Masterminds/glide

ADD . /go/src/github.com/kpashka/linda
RUN cd /go/src/github.com/kpashka/linda && glide install

RUN go install github.com/kpashka/linda

ENTRYPOINT /go/bin/linda -c $LINDA_CONFIG

EXPOSE 8080
