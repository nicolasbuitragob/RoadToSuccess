# ETL (Extract, Transform, Load) 🗒️

<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li><a href="#extract">Extract</a></li>
    <li><a href="#transform">Transform</a></li>
    <li><a href="#load">Load</a></li>
    <li><a href="#benefits-and-challenges-of-etl">Benefits and challenges of ETL</a></li>
    <li><a href="#other-integration-methods">Other integration methods</a></li>
    <li><a href="#etl-pipeline">ETL Pipeline</a></li>
    <li><a href="#references">References</a></li>
  </ol>
</details>

ETL is a process that extracts, transforms, and loads data from multiple sources to a data warehouse or other unified data repository. 

ETL provides the foundation for data analytics and machine learning workstreams. Through a series of “business” rules, ETL cleanses and organizes data in a way that addresses specific business intelligence needs,  e.g monthly reporting. ETL is often used by an organization to:

- Extract data usually from legacy systems (A legacy system is an informatics system that is antique but is still being used) or from other sources.
- Cleanse the data to improve data quality and establish consistency
- Load data into a target database

In short, the ETL process allows leaving the data in the desired format.

Now, we will talk about what happens in each step of the ETL process.

## Extract

During extraction, raw data is copied or exported from source locations to a staging area. This data can be extracted from a variety of data sources, which can be structured or unstructured. Those sources include but are not limited to:

- SQL or NoSQL servers
- CRM (Customer Relationship Management) and ERP (Enterprise Resource Planning) systems
- Flat files
- Email
- Web pages

There exist three data extraction methods:

1. Full extraction
2. Partial extraction without update notification
3. Partial extraction with an update notification

Independent of the methods used, extraction should not affect the performance and response time of the source systems. These source systems are live production databases (So not legacy systems all the time).

## Transform

In the staging area, the raw data undergoes data processing. Here, the data is transformed and consolidated for its intended analytical use case. This phase can involve the following tasks.

- Filtering, cleansing, de-duplicating, validating and authenticating the data.
- Performing calculations, translations, or summarizations based on the raw data. This can include changing row and column headers for consistency, converting currencies or other units of measurement, editing text strings, and more. i.e Homogenizing the data.
- Conducting audits to ensure the quality and compliance of the data.
- Removing, encrypting, or protecting sensible data.
- Formatting the data into data tables or joined tables to match the schema of the target data warehouse

## Load

In this step, the transformed data is moved from the staging area into a target data warehouse. Typically this involves an initial loading of all data, followed by periodic loading of incremental data changes. Usually, this process is fully automated, well-defined, continuous, and batch-driven. Typically, ETL takes place during off-hours when traffic on the source systems and the data warehouse is at its lowest.

A proper time slot has to be decided to perform the loading.

Types of loading:

- Initial load: populating all the data warehouse tables
- Incremental load: Applying ongoing changes when needed periodically.
- Full refresh: Erasing the contents of one or more tables and reloading with fresh data.


## Benefits and challenges of ETL

ETL solutions improve quality by performing data cleansing before loading the data to a different repository. ETL is a time-consuming batch operation so is recommended for creating smaller target data repositories that require less frequent updating, while other data integration methods are used to integrate increasingly larger volumes of data that change or real-time data streams.

Awareness of data duplication from the source to the destination increments the complexity of the process.


## Other integration methods

- Change Data Capture (CDC)
- Data replication
- Data virtualization
- Stream Data Integration (SDI)

## ETL Pipeline

<br />
<div align="center">
    <img src="images/etl_pipeline.png" alt="etl_pipeline">
</div>


# Data warehouse and data lake.

## Data warehouse

Data warehousing is a process for collecting and managing data from varied sources to provide meaningful business insights. A data warehouse is a central repository of information that can be analyzed to make more informed decisions. Data flows into a data warehouse from transactional systems, relational databases, and other sources, typically on a regular cadence.

Business analysts, data engineers, data scientists, and decision-makers access the data through business intelligence (BI) tools, SQL clients, and other analytics applications.

Data and analytics have become indispensable to businesses to stay competitive. Business users rely on reports, dashboards, and analytics tools to extract insights from their data, monitor business performance, and support decision-making. Data warehouses power these reports, dashboards, and analytics tools by storing data efficiently to minimize the input and output (I/O) of data and deliver query results quickly to hundreds and thousands of users concurrently.

- Data warehouse system is also known by the following names:
- Decison support system (DSS)
- Executive information system,
- Management information system
- Business intelligence solution
- Analytic Applications

### How does it work?

A data warehouse works as a central repository where information arrives from one or more data sources. Data flows into a data warehouse from the transactional system and other relational databases.

The data is processed, transformed, and ingested (ETL) so that users can access the processed data in the Data warehouse through business intelligence tools, SQL clients, and spreadsheets. A data warehouse merges information coming from different sources into one comprehensive database.

Data warehousing makes data mining possible. Data mining is looking for patterns in the data that may lead to higher sales and profits.

### How is a data warehouse structured?

A data warehouse is made of tiers.

The top tier is the front-end client that presents results through reporting, analysis, and data mining tools.

The middle tier consists of the analytics engine that is used to access and analyze the data

The bottom tier of the architecture is the database server, where data is loaded and stored.

The data is stored in two different types of ways, the first one is data that is accessed frequently is stored in very fast storage (SSD) and the second one is the data that is infrequently accessed and is stored in a cheap object-store. The data warehouse will automatically make sure that frequently accessed data is moved into the fast storage so query speed is optimized.

### Types of data warehousing tools

- MarkLogic
- Oracle
- Amazon Redshift

## Data Lake

A data lake is a centralized repository that allows you to store all your structured and unstructured data at any scale. You can store your data as-is without having to first structure the data, and run different types of analytics, from dashboards and visualizations to big data processing, real-time analytics, and machine learning to guide better decisions.

### The essential elements of a Data Lake and analytics solution.

- Data movement: Data lakes allow you to import any amount of data that can come in real-time. Data is collected from multiple sources and moved into the data lake in its original format. This process allows you to scale to data of any size while saving time for defining data structures, schema, and transformations.
- Analytics. Data lakes allow various roles in organizations like data scientists, data developers, and business analysts to access data with their choice of analytic tools and frameworks. This includes open-source frameworks such as Apache Hadoop, Presto, and Apache Spark,  and commercial offerings from data warehouse and business intelligence vendors. Data lakes allow you to run analytics without the need to move your data to a separate analytics system.
- Securely store, and catalog data. Data lakes allow you to store relational data like operational databases and data from lines of business applications and non-relational data. They also give you the ability to understand what data is in the lake through crawling, cataloging, and indexing of data. Finally, data must be secured to ensure your data assets are protected.
- Machine learning. Data lakes will allow generating different types of insights including reporting on historical data and doing machine learning where models are built to forecast likely outcomes and suggest a range of prescribed actions to achieve the optimal result.


## Data warehouse vs Data lake

A data warehouse is a database optimized to analyze relational data coming from transactional systems and lines of business applications. The data structure and schema are defined in advance to optimize for fast SQL queries, where the results are typically used for operational reporting and analysis. Data is cleaned, enriched, and transformed so it can act as the single source of truth.

A data lake is a store full of unstructured and structured data, stored as-is, without a specific purpose in mind, that can be built on multiple technologies such as Hadoop, NoSQL, Amazon Simple Storage Service, a relational database, or various combinations and different formats


## When to use what?

- The data warehouse: is designed for slowly changing data:
    - daily summaries, weekly summaries, and monthly summaries of known structured data.
    - Easy and fast access to many operational business users.  

- The data lakes: is designed for quickly changing data
    - Data that tells you what happened one minute or five minutes ago
    - raw, unstructured, semi-structured, and structured data.
    - easy and fast access to a few users and Data scientists papa.

## Conclusion

As I see it, a data lake is a vast quantity of raw data (structured, semi-structured, or even non-structured data) that has not a purpose defined yet. A data warehouse is a repository for structured, filtered data that has already been processed for a specific purpose.

## References

- https://www.ibm.com/cloud/learn/etl#toc-what-is-et-xeCDpL69
- https://www.youtube.com/watch?v=7MOU1l30lXs&t=1800s
- https://www.guru99.com/data-warehousing.html
- https://www.guru99.com/etl-extract-load-process.html#3
- https://aws.amazon.com/data-warehouse/
- https://aws.amazon.com/big-data/datalakes-and-analytics/what-is-a-data-lake/
- https://www.sspaeti.com/blog/data-warehouse-vs-data-lake-etl-vs-elt/