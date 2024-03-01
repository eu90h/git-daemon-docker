FROM alpine:latest
EXPOSE 5500
RUN apk add git git-daemon
VOLUME /srv/git
WORKDIR /srv/git
RUN git init --bare --shared
CMD git daemon --verbose --export-all --informative-errors --enable=receive-pack  --reuseaddr --base-path=/srv/git --port=5500 /srv/git
