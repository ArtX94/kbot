FROM golang:1.19 AS builder

WORKDIR /go/src/app
COPY . .
RUN make build

FROM alpine:latest AS certs
RUN apk --no-cache add ca-certificates

FROM scratch
WORKDIR /
COPY --from=builder /go/src/app/kbot .
COPY --from=certs /etc/ssl/certs/ca-certificates.crt /etc/ssl/certs/
ENTRYPOINT ["./kbot"]