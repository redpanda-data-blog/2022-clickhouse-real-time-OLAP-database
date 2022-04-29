CREATE TABLE IF NOT EXISTS panda_house.agent_reports
(
    agent_id UInt64,
    real_estate_map_url String,
    real_estate_type String,
    real_estate_price Decimal64(2)

) ENGINE = Kafka()
SETTINGS
    kafka_broker_list = 'redpanda-1:9092',
    kafka_topic_list = 'agent-reports',
    kafka_group_name = 'clickhouse-group',
    kafka_format = 'CSV',
    kafka_thread_per_consumer = 0,
    kafka_num_consumers = 1;