# Debian GNU/Linux 10 (1.13.10-buster)
ARGS GOLANG_VERSION=1.16
FROM golang:1.16-buster

# copy entrypoint file
COPY entrypoint.go /usr/bin/entrypoint.go

# change mode of the entrypoint file
RUN chmod +x /usr/bin/entrypoint.go

# set entrypoint command
ENTRYPOINT [ "go", "run", "/usr/bin/entrypoint.go" ]
