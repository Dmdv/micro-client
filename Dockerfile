FROM golang:1.17-alpine AS builder
ENV CGO_ENABLED=0 GOOS=linux
WORKDIR /go/src/micro-client
RUN apk --update --no-cache add ca-certificates libtool make musl-dev protoc git

COPY go.mod go.sum ./
RUN go mod download
COPY . .
RUN make tidy build

FROM scratch
COPY --from=builder /etc/ssl/certs /etc/ssl/certs
COPY --from=builder /go/src/micro-client/micro-client /micro-client
ENTRYPOINT ["/micro-client"]
CMD []
