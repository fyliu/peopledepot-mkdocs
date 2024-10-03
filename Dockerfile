# base image
# hadolint ignore=DL3007
FROM hackforlaops/mkdocs:latest

# set work directory
WORKDIR /app

# install system dependencies

#RUN \
#  --mount=type=cache,target=/var/cache \
#  apk add \
#  # mkdocs-multirepo-plugin requires this
#  git=2.40.1-r0

# install dependencies

COPY requirements.txt .
# hadolint ignore=DL3042
RUN \
  --mount=type=cache,target=/root/.cache \
  pip install -r requirements.txt
