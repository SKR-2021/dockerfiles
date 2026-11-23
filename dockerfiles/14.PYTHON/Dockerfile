FROM almalinux:9

RUN dnf install -y python3

RUN mkdir -p /app/src

ONBUILD ADD . /app/src

ONBUILD RUN python3 -m compileall -q /app/src