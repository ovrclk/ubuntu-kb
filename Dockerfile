FROM ubuntu
env KEYBASE_ALLOW_ROOT 1
env KEYBASE_DEVISE docker
env DEBIAN_FRONTEND noninteractive
RUN apt-get update \
  && apt-get install -y curl wget unzip git libappindicator1 fuse gnupg2 \
  build-essential python3-dev libffi-dev \
  python-pip python-setuptools sqlite3 \
  libssl-dev python-virtualenv libjpeg-dev libxslt1-dev

RUN curl -sS https://keybase.io/docs/server_security/code_signing_key.asc | apt-key add - \
  && curl --remote-name https://prerelease.keybase.io/keybase_amd64.deb \
  && apt-get install -y ./keybase_amd64.deb
