FROM golang:1.21.3

WORKDIR /app

COPY . .

RUN go mod tidy

RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o /sprint_12

CMD ["/sprint_12"]