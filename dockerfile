FROM golang:1.18-alpine
WORKDIR /app
RUN go mod init downloads/myapp
COPY . .
RUN go build -o main .
CMD ["/app/main"]
