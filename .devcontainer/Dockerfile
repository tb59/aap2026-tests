FROM python:3.14-bookworm

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        git \
        curl \
        tree \
        less \
        nano \
        man-db \
        manpages \
    && rm -rf /var/lib/apt/lists/*

RUN python -m pip install --no-cache-dir \
    pytest \
    pycodestyle \
    numpy \
    matplotlib \
    ruff
