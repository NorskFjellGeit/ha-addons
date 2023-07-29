ARG BUILD_FROM=ghcr.io/hassio-addons/base:12.2.7
FROM ${BUILD_FROM}

SHELL ["/bin/bash", "-o", "pipefail", "-c"]

ARG TARGETPLATFORM
ARG BUILDPLATFORM

WORKDIR /tmp

RUN apk add --no-cache nginx ffmpeg font-noto

RUN if [ "$TARGETPLATFORM" = "linux/amd64" ]; then \
    wget "https://github.com/NorskFjellGeit/ha-ffserver/raw/main/.data/ffmpeg-3.3.4-64bit-static.tar.xz" -O "ffmpeg.tar.xz" \
    && mkdir /tmp/ffmpeg \
    && tar xJf /tmp/ffmpeg.tar.xz -C /tmp/ffmpeg --strip-components=1 \
    && ls -lasth /tmp \
    && mv /tmp/ffmpeg/ffserver /usr/local/bin/ \
    && mv /tmp/ffmpeg/ffmpeg /usr/local/bin/ \
    && rm -rf /tmp/ffmpeg*; \
  fi
RUN if [ "$TARGETPLATFORM" = "linux/386" ]; then \
    wget "https://github.com/NorskFjellGeit/ha-ffserver/raw/main/.data/ffmpeg-3.3.4-32bit-static.tar.xz" -O "ffmpeg.tar.xz" \
    && mkdir /tmp/ffmpeg \
    && tar xJf /tmp/ffmpeg.tar.xz -C /tmp/ffmpeg --strip-components=1 \
    && ls -lasth /tmp \
    && mv /tmp/ffmpeg/ffserver /usr/local/bin/ \
    && mv /tmp/ffmpeg/ffmpeg /usr/local/bin/ \
    && rm -rf /tmp/ffmpeg*; \
  fi
RUN if [ "$TARGETPLATFORM" = "linux/arm/v6" ]; then \
    wget "https://github.com/NorskFjellGeit/ha-ffserver/raw/main/.data/ffmpeg-3.3.4-armel-32bit-static.tar.xz" -O "ffmpeg.tar.xz" \
    && mkdir /tmp/ffmpeg \
    && tar xJf /tmp/ffmpeg.tar.xz -C /tmp/ffmpeg --strip-components=1 \
    && ls -lasth /tmp \
    && mv /tmp/ffmpeg/ffserver /usr/local/bin/ \
    && mv /tmp/ffmpeg/ffmpeg /usr/local/bin/ \
    && rm -rf /tmp/ffmpeg*; \
  fi

RUN if [ "$TARGETPLATFORM" = "linux/arm/v7" ]; then \
    wget "https://github.com/NorskFjellGeit/ha-ffserver/raw/main/.data/ffmpeg-3.3.4-armhf-32bit-static.tar.xz" -O "ffmpeg.tar.xz" \
    && mkdir /tmp/ffmpeg \
    && tar xJf /tmp/ffmpeg.tar.xz -C /tmp/ffmpeg --strip-components=1 \
    && ls -lasth /tmp \
    && mv /tmp/ffmpeg/ffserver /usr/local/bin/ \
    && mv /tmp/ffmpeg/ffmpeg /usr/local/bin/ \
    && rm -rf /tmp/ffmpeg*; \
  fi

RUN if [ "$TARGETPLATFORM" = "linux/arm64" ]; then \
    wget "https://github.com/NorskFjellGeit/ha-ffserver/raw/main/.data/ffmpeg-3.3.4-arm64-64bit-static.tar.xz" -O "ffmpeg.tar.xz" \
    && mkdir /tmp/ffmpeg \
    && tar xJf /tmp/ffmpeg.tar.xz -C /tmp/ffmpeg --strip-components=1 \
    && ls -lasth /tmp \
    && mv /tmp/ffmpeg/ffserver /usr/local/bin/ \
    && mv /tmp/ffmpeg/ffmpeg /usr/local/bin/ \
    && rm -rf /tmp/ffmpeg*; \
  fi

COPY rootfs /

