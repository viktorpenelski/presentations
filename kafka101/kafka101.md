# Introduction (personal)

---

# High Level introduction (kafka)

Apache Kafka is a distributed horizontally-scalable, fault-tolerant, commit log.

A streaming platform has three key capabilities:
- Publish and subscribe to streams of record, similar to a message queue or an EMS.
- Store streams of records in a fault-tolerant durable way.
- Process streams of records as they occur.

Kafka is generally used for two broad classes of applications
- Building real-time streaming data pipelines that reliably get data between systems or applications
- Building real-time streaming applications that transform or react to the streams of data.

- Kafka is ran as a cluster on one or more servers (that can span multiple datacenters)
- The kafka cluster stores streams of *records* in categories called *topics*
- Each record consists of a key, a value and a timestamp

Kafka has four core APIs:

- The Producer API - allows an application to publish a stream of records to one or more Kafka topics
- The Consumer API - allows an application to subscribe to one or more topics and process the stream of records produced to them
- The Streams API - allows an application to act as a stream processor - consuming an input stream from one or more topics and producing an output stream to one or more output topics, effectively transforming the input streams to output streams (in the sense of map/reduce)
- The Connector API - allows building and running reusable producers or consumers that connect Kafka topics to existing applications or data systems. For example, a connector to a relational database might capture every change to a table.

Communication between the clients and the server is done with a simple, high-performance, language agnostic TCP protocol. This protocol is versioned and maintains backwards compatibility with older versions. Appache Kafka comes with an official Java client, while the community provides clients for pretty much all of the popular languages.

### 

---

# Kafka Fundamentals

### Terminology
- Cluster
    - Brokers (nodes)
- Topics
    - Partitions (append-only log of data records)

- Producers & Consumers

- Log Storage
    - stored on-disk
    - each broker stores partitions of a topic
    - partitions are (optionally) replicated for fault-tolerance
    - broker can be a leader or a follower for a partition
    - clients only use partition leaders

- Controller Broker
    - one controller per cluster
    - Handles broker death/restart
    - Handles topic creation/deletion
    - Proactively notifies other brokers of metadata changes

- ZooKeeper
    - Broker heartbeats
    - Metadata (partition assignment, controller broker)
    - Notifications

---

# Demo

- Kafka Bootstrap (partition, topic, replicationFactor)
- producer
- consumer