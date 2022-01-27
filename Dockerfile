FROM golang:1.16-alpine as prod

WORKDIR /go/src/github.com/public-cicd-golang 
COPY . .

#RUN apk update && apk add git
#RUN apk add --no-cache bash
RUN apk update
RUN apk add --no-cache bash git gcc

ENV GO111MODULE on
RUN go get github.com/cespare/reflex

EXPOSE 1234

CMD reflex -r '\.(html|go)' -s go run main.go
