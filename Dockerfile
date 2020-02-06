ARG ALPINE_VERSION

FROM alpine:${ALPINE_VERSION}
ADD https://downloads.rclone.org/rclone-current-linux-amd64.zip /rclone.zip

RUN unzip rclone.zip && mv rclone*/rclone /usr/bin && \
  apk -U --no-progress upgrade && \
  apk --no-progress add ca-certificates && \
  rm -rf rclone* && rm -rf /root/.ash_history /root/.cache /var/cache/apk/*

VOLUME [ "/data" ]
CMD ["sh"]
