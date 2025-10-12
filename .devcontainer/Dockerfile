FROM ubuntu:24.04

RUN apt-get update && apt-get install -y --no-install-recommends \
    git \
    curl \
    zip \
    unzip \
    ca-certificates \
    jq \
    && rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/microsoft/vcpkg.git /opt/vcpkg \
    && /opt/vcpkg/bootstrap-vcpkg.sh -disableMetrics \
    && ln -s /sparkplug-vcpkg/ports/sparkplug /opt/vcpkg/ports/sparkplug

ENV VCPKG_ROOT=/opt/vcpkg
ENV PATH="$VCPKG_ROOT:$PATH"
