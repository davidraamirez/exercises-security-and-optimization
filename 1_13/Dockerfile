FROM golang:1.21

WORKDIR /usr/src/app

COPY . . 

RUN go build 

EXPOSE 8080 

CMD ["./server"]