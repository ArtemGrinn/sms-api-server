FROM golang:1.17

ADD . /go/src/github.com/artemgrinn/sms-api-server
COPY index.html /pub/index.html
RUN go install github.com/artemgrinn/sms-api-server

EXPOSE 8080
ENTRYPOINT ["/go/bin/sms-api-server", "-public", "/pub"]
