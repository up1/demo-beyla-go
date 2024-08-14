FROM golang:1.23.0-alpine3.19 AS builder
WORKDIR /app
COPY go.mod .
RUN go mod tidy
COPY . .
RUN go build -o main .

FROM alpine:3.19
WORKDIR /app
COPY --from=builder /app/main .
EXPOSE 8080
CMD ["./main"]
