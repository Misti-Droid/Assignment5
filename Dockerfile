FROM alpine:latest AS builder
COPY data.txt /tmp/

FROM fedora AS final
COPY --from=builder /tmp/data.txt /