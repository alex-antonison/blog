---
title: "Introduction to a Data Lakehouse with AWS Athena, dbt, and Apache Iceberg - Part 1"
author: "Alex Antonison"
date: "2025-04-04"
format:
  html:
    toc: true
    toc-location: right
    toc-title: On this page
---

### Introduction

The concept of a Data Lakehouse has been around for a few years now but the barrier to entry for building a Data Lakehouse can seem fairly high. In this blog post series, I will talk through the pros and cons of a Data Lakehouse and then step through how to stand a Data Lakehouse up and then finally how to maintain it.

In this post, I am introducing what is Data Lakehouse, contrasting it against a Data Lake and a Cloud Data Warehouse, and then talking about pros and cons. In Part 2 I will dive into setting up a Data Lakehouse using AWS Athena, Apache Iceberg, and dbt. In Part 3, I will dig into tasks around how to maintain a Data Lakehouse in order to maintain costs and performance.

### What is a Data Lakehouse?

A Data Lakehouse is effectively Data Lake except that it uses an Open Table Format (such as Apache Iceberg, Hudi, or Delta Lake) which allows you to perform [CRUD (Create, Read, Update, Delete)](https://en.wikipedia.org/wiki/Create,_read,_update_and_delete) operations with [ACID (Atomicity, Consistency, Isolation, and Durability)](https://en.wikipedia.org/wiki/ACID) transactions within a Data Lake. Prior to Open Table Formats, in a Data Lake it was only possible to work within the context of partitions where you could append to an existing partition, overwrite the whole partition, or delete it. If you wanted to perform CRUD operations at the row level, you had to use a Cloud Data Warehouse which in the context of AWS, is most commonly AWS Redshift or Snowflake. However, with Open Table Formats like Apache Iceberg, you can now use any popular computing framework such as Trino and Spark via AWS EMR or AWS Athena to perform CRUD operations with ACID transactions directly in the Data Lake(house).

### Data Lakehouse vs Cloud Data Warehouse

First, I would like to say it is entirely possible for an organization to use both a Data Lakehouse in combination with a Cloud Data Warehouse. One possible scenario is to have a Data Platform team that manages a Data Lakehouse where an organization’s data is centralized and then smaller Data Analytic or Science teams can then use a Cloud Data Warehouse such as Snowflake or AWS Redshift to read in the data they need for building data products.

#### Where a Data Lakehouse Excels

##### Storage Costs

Even though Cloud Data Warehouses have made great efforts to reduce the cost of storing data, they are still much more expensive than S3 especially considering the different storage tiers that AWS S3 provides.

##### Bring your own Compute Framework

Any group can choose the compute framework to use such as Spark or Trino via AWS EMR, AWS Athena, or even a Cloud Data Warehouse to pull data from a Data Lakehouse. Outside of the S3 API get requests (which I will discuss later how to minimize), the bulk of the cost is on the data consumer in whatever compute solution they decide to use.

##### Data Governance and Access

Data Governance tools like AWS Lake Formation have come a long way in streamlining granting fine grained access (both column and row level) to datasets in a Data Lakehouse.

#### Challenges of a Data Lakehouse

##### Complexity

A Data Lakehouse just like a Data Lake, is much more complex to build and maintain than a Cloud Data Warehouse. First, it requires using a metastore like the AWS Glue Data Catalog to manage the metadata about the files and partitions stored within AWS S3.  Then, to interact with a Data Lakehouse, you have to bring your own compute framework such as Spark, Trino, AWS Athena, or even a Cloud Data Warehouse to access or modify the data.

##### Regular Maintenance

Regular maintenance operations are required in order to manage cost and performance. In most Cloud Data Warehouses, maintenance operations are are either handled behind the scenes or are at least very streamlined.

### There is always a tradeoff

Like all things in the world of data, the trade off between a Data Lakehouse and Cloud Data Warehouse is that while a Data Lakehouse is cheaper to run (if well maintained), it requires specific sets of skills to stand up and operate versus a Cloud Data Warehouse which may carry a larger upfront cost but is easier to stand up, operate, and maintain.

### Stay tuned!

In my next post, I will be talking through tools you can use to stand up your first Data Lakehouse! These tools will include the following:

1. [awswrangler aka AWS SDK for Pandas](https://aws-sdk-pandas.readthedocs.io/en/stable/#): This is a handy python package built and maintained by the AWS Professional Services team that makes building solutions in AWS much easier.
2. [dbt-athena](https://github.com/dbt-labs/dbt-adapters/tree/main/dbt-athena): This is the dbt adapter for AWS Athena that makes doing transformations with Athena and Iceberg much more streamlined.
3. AWS Services: [Athena](https://aws.amazon.com/athena/), [Glue](https://aws.amazon.com/glue/), [S3](https://aws.amazon.com/s3/)
4. [Apache Iceberg](https://iceberg.apache.org/): In the AWS ecosystem, Apache Iceberg has come out on top as one of the better supported Open Table Formats over Hudi and Delta Lake.

Note: The scope of this blog post series will not include how to run this in production as it could be its won blog post series. Popular solutions include using [Dagster](https://dagster.io/), [Airflow](https://airflow.apache.org/) with [Cosmos](https://www.astronomer.io/docs/learn/airflow-dbt/), or [AWS Step Functions](https://aws.amazon.com/step-functions/) with [ECS Fargate Tasks](https://aws.amazon.com/ecs/).