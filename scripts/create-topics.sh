echo "Waiting for Kafka to start topic creation"

cub kafka-ready -b kafka:9092 1 40

kafka-topics \
  --bootstrap-server kafka:9092 \
  --topic sentences \
  --replication-factor 1 \
  --partitions 1 \
  --create

kafka-topics \
  --bootstrap-server kafka:9092 \
  --topic word-count \
  --replication-factor 1 \
  --partitions 1 \
  --create

sleep infinity