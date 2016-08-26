# Use the official go docker image built on debian.
FROM golang:1.4.2

# Grab the source code and add it to the workspace.
ADD . /go/src/github.com/dzyanis/zazubra
#RUN go get github.com/dzyanis/zazubra

# Install revel and the revel CLI.
RUN go get -u github.com/revel/cmd/revel

# Use the revel CLI to start up our application.
ENTRYPOINT revel run github.com/dzyanis/zazubra

# Open up the port where the app is running.
EXPOSE 9000
