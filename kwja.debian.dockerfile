FROM python:3.11-slim-bullseye
ARG KWJA_VERSION
WORKDIR /app
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -q && apt-get install -yq \
    build-essential \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

RUN pip3 install --upgrade pip --no-cache-dir \
    && pip3 install --no-cache-dir kwja==${KWJA_VERSION}

CMD ["/bin/bash"]
