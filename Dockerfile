ARG ALPINE_VERSION

FROM alpine:${ALPINE_VERSION} as builder
ARG TARGETARCH
ADD https://downloads.rclone.org/rclone-current-linux-${TARGETARCH}.zip /rclone.zip
RUN unzip rclone.zip && mv rclone*/rclone rclone && apk --no-cache add ca-certificates && ./rclone --version

FROM alpine:${ALPINE_VERSION}
COPY --from=builder /rclone /usr/bin
COPY --from=builder /etc/ssl/certs/ca-certificates.crt /etc/ssl/certs/
VOLUME [ "/data" ]
CMD ["sh"]
