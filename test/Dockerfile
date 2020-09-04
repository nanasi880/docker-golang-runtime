FROM golang:1.15 AS build
WORKDIR /build
COPY . .
RUN CGO_ENABLED=0 go build -o test -ldflags '-w -s'

FROM nanasi880/golang-runtime
WORKDIR /bin
COPY --from=build /build/test .

USER nobody
ENTRYPOINT ["/bin/test"]
