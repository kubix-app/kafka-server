# Kafka Server with Docker Compose

This repository provides a Docker Compose setup for Kafka with topics initialized from a `topics.json` file.

## Prerequisites

Ensure you have Docker and Docker Compose installed on your system:

- [Install Docker](https://docs.docker.com/get-docker/)
- [Install Docker Compose](https://docs.docker.com/compose/install/)

## Getting Started

### Clone the Repository

```bash
git clone https://github.com/kubixapp/kafka-server.git
cd kafka-server
```

### Add topics.json File
Place your topics.json file containing Kafka topics configuration in the root of the project.

### Configure Docker Compose
Update docker-compose.yml if necessary, ensuring it matches your Kafka configuration needs.

### Start Kafka Server
Run Docker Compose to start the Kafka server:
```bash
docker-compose up --build -d
```
This command starts Kafka in detached mode (-d), running in the background.

### Verify Kafka Container
Verify that Kafka container is running:
```bash
docker ps
```
You should see containers for Kafka and Zookeeper running.

### Access Kafka Shell
You can access the Kafka shell using:
```bash
docker-compose exec kafka /bin/bash
```
From here, you can use Kafka command-line tools like kafka-topics.sh, kafka-console-producer.sh, and kafka-console-consumer.sh.

### Publish and Consume Messages
Use the Kafka command-line tools or integrate Kafka with your application to publish and consume messages.

### Stop Kafka Server
To stop the Kafka server and remove containers, run:
```bash
docker-compose down
```

### Additional Notes
- Customize Kafka Configuration: Modify docker-compose.yml to customize Kafka and Zookeeper configurations.
- Security: Consider security aspects such as access controls and network configuration depending on your deployment environment.

### Contributing
Contributions are welcome! Feel free to open issues or pull requests for improvements or bug fixes.

### License
This project is licensed under the [Apache-2.0 license](https://github.com/kubixapp/kafka-server?tab=Apache-2.0-1-ov-file#readme).
