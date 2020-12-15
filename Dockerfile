FROM golang:1.15.6-alpine3.12
WORKDIR /go/src/hapoon/gbatch
COPY . .
RUN CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o gbatch .

FROM scratch
COPY --from=0 /go/src/hapoon/gbatch .
CMD ["./gbatch"]
