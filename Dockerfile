# Use official Golang image
FROM golang:1.23

# Set working directory
WORKDIR /app

# Copy Go modules and dependencies
COPY go.mod go.sum ./
RUN go mod download

# Copy the entire project
COPY . .

# Build the Go app
RUN go build -o main .

# Expose the application port
EXPOSE 8080

# Run the executable
CMD ["/app/main"]
