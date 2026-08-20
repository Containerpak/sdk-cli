FROM ghcr.io/containerpak/base:main

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        ca-certificates \
        jq \
        ripgrep \
        fd-find \
        fzf \
        shellcheck \
        sqlite3 \
        tree \
        curl \
        wget \
        unzip \
        zip \
        xz-utils \
        zstd && \
    cpak-clean-junk

# Debian and Ubuntu ship the tool as fdfind because fd is taken, and every
# script that calls it calls it fd.
RUN ln -s /usr/bin/fdfind /usr/bin/fd

RUN for binary in jq rg fd fzf shellcheck sqlite3 tree curl wget unzip zip xz zstd; do \
        command -v "$binary" >/dev/null || { echo "missing $binary" >&2; exit 1; }; \
    done
