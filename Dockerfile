# Use the official Golang image as the base image
FROM golang:1.16-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the go.mod and go.sum files
COPY src/go.mod ./

# Download the Go modules
RUN go mod download

# Copy the source code into the container
COPY src/ .

# Build the Go application
RUN go build -o app .

# Expose the port the application will run on
EXPOSE 8080

# Run the application
CMD ["./app"]
