# Container image that runs your code
FROM alpine:3.10

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY ./entrypoint.sh ./

# Make file executable
RUN ["chmod", "550", "./entrypoint.sh"]

# Code file to execute when the docker container starts up (`entrypoint.sh`)
CMD ["./entrypoint.sh"]