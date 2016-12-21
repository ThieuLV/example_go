#Base Image for Golang Project
FROM golang:1.5
#Port Number to expose from docker container to host server
EXPOSE 8888
#Working directory path where your code exists
WORKDIR /go/src/app
#Copy source from host machine to docker container
COPY . /go/src/app
#provide your build/run commands
RUN ["./conn.go"]
CMD ./conn.go
