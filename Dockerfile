FROM golang:1.16-alpine as prod

WORKDIR /app

COPY go.mod ./
COPY *.go ./

RUN go mod download
RUN go build -o /docker-go-image-noman

EXPOSE 8088

CMD ["/docker-go-image-noman"]
