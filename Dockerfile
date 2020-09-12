FROM golang:latest 
RUN mkdir /app
WORKDIR /app
ADD go.mod go.sum /app/
RUN go mod download
ADD . /app/ 
RUN go build -o main . 
CMD ["/app/main"]
EXPOSE 8000
