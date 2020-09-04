FROM alpine AS alpine
RUN apk add --update --no-cache ca-certificates
#RUN apk add --update --no-cache ca-certificates tzdata
WORKDIR /workspace
COPY ./passwd ./passwd
RUN chmod 644 ./passwd 
RUN chown root:root ./passwd

FROM scratch
COPY --from=alpine /etc/ssl/certs/ca-certificates.crt /etc/ssl/certs/ca-certificates.crt
#COPY --from=alpine /usr/share/zoneinfo /usr/share/zoneinfo
COPY --from=alpine /workspace/passwd /etc/passwd

