# Introduction to this playground

This playground can be used to get familiar with Vector (currently 0.19.x), Clickhouse (currently 22.x) and their capabilities.

Vector is an open source data collection engine with real-time pipelining capabilities. Vector can dynamically unify data from disparate sources and normalize the data into destinations of your choice. Cleanse and democratize all your data for diverse advanced downstream analytics and visualization use cases.

Vector is a high-performance observability data pipeline. Any type of data can be collected, transformed with the Vector Remap Language (VRL) and routed to the desired Sink. Vector supports logs, metrics and traces. Vector accelerates your insights by harnessing a greater volume and variety of data.

if you want to learn more about vector, please visit the [Vector reference site](https://vector.dev/docs/about/concepts/)

For storing the actual Observability data we will use ClickHouse Columnar Database. ClickHouse is a high-speed columnn-oriented database.
By nature ClickHouse is very efficient in storing high data volumes. ClickHouse is using well-known SQL language, so easy to adopt.

if you want to learn more about ClickHouse, please visit [ClickHouse reference site](https://clickhouse.com/docs/en/)

During this tutorial we will
- Do a quickstart with Vector
- Do a quickstart with ClickHouse
- Setup the integration between Vector and ClickHouse