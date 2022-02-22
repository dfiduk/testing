# syntax=docker/dockerfile:1
FROM alpine:latest  
RUN apk --no-cache add ca-certificates
WORKDIR /root/
COPY app ./
CMD ["./app"] 
