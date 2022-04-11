FROM alpine:3.10
LABEL "repository"="https://github.com/autoseg/git-action-tag.git"
LABEL "homepage"="https://github.com/autoseg/git-action-tag.git"
LABEL "maintainer"="Thalison Jesus"

COPY entrypoint.sh /entrypoint.sh

RUN apk update && apk add bash git curl jq && apk add --update nodejs npm && npm install -g semver

ENTRYPOINT ["/entrypoint.sh"]