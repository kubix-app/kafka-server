FROM wurstmeister/kafka:latest

# Install additional tools if needed
RUN apt-get update && apt-get install -y \
    jq \
    curl \
    && rm -rf /var/lib/apt/lists/*

COPY create_topics.sh /opt/create_topics.sh
COPY topics.json /opt/topics.json

CMD ["/bin/bash", "/opt/create_topics.sh"]
