### Create our initial database for Vector
`clickhouse-client --query "CREATE DATABASE IF NOT EXISTS vector" --password`{{execute HOST1}}

# Creating the required table for syslog storage

As foundation we will use the 'demo_logs' configuration that we previously used.Below a sample log we store from Vector. As you may see, most fields can be handled as *String*. Exceptions are the *Timestamp*, *procid* and *version*. 

```
{"appname":"shaneIxD","facility":"ntp","hostname":"random.de","message":"Pretty pretty pretty good","msgid":"ID575","procid":6764,"severity":"warning","source_type":"demo_logs","timestamp":"2022-01-02T12:09:24.585Z","version":1}
```

Unluckely for us timestamps that are delived in **ISO8601** format are not stored by default.  We can solve this on both client or server side. For example we chose to enhance our remap code based on [Vector Remap Language (VRL)](https://vector.dev/docs/reference/vrl/)] a little bit.

Trick here is that we convert the timestamp to an Unixbased format, which here by default is in Seconds(since Epoch).

```
.timestamp = to_unix_timestamp(to_timestamp!(.timestamp))
```

### Create actual syslog table
Now let's create the actual *syslog* table.

`clickhouse-client --query "CREATE TABLE IF NOT EXISTS vector.syslog ( \
    timestamp DateTime,\
    appname String,\
    facility String,\
    hostname String,\
    message String,\
    severity String,\
    msgid String,\
    procid UInt16,\
    source_type String,\
    version UInt16\
) ENGINE = MergeTree()\
ORDER BY\
    toYYYYMMDD(timestamp)" --password`{{execute HOST1}}

# Start data ingestion
It's time to start vector again to ingest some data.
`vector --config ~/sample_3.toml`{{execute HOST1}}

Open an additional Terminal tab or break the vector process.
# Quering data from the ClickHouse client
`clickhouse-client --query "SELECT * FROM vector.syslog" --password`{{execute HOST1}}

Great !! You have made it, a simple integration between Vector and ClickHouse. Next thing (we will add later) is creating some awesome dashboards with Grafana.