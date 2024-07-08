FROM alpine:latest

RUN apk --no-cache add bash jq curl

COPY create_topics.sh /opt/create_topics.sh
COPY topics.json /opt/topics.json

CMD ["/bin/bash", "/opt/create_topics.sh"]
