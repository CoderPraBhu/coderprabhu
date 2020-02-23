FROM golang:1.8-alpine
ADD . /go/src/codeprabhu-ui-app
RUN go install codeprabhu-ui-app

FROM alpine:latest
COPY --from=0 /go/bin/codeprabhu-ui-app .
ENV PORT 8080
CMD ["./codeprabhu-ui-app"]
