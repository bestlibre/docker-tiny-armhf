#FROM armhf/debian:jessie
FROM resin/armv7hf-debian-qemu:latest
# Default configuration
RUN [ "cross-build-start" ]

# Add Tini
ENV TINI_VERSION v0.14.0
ADD https://github.com/krallin/tini/releases/download/${TINI_VERSION}/tini-armhf /tini
RUN chmod +x /tini

RUN [ "cross-build-end" ]

ENTRYPOINT ["/tini", "--"]
