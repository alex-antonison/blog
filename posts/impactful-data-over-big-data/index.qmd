---
title: "Impactful Data > Big Data"
author: "Alex Antonison"
date: "2022-11-22"
categories: [data, data engineering, big data]
image: "funny-big-data.jpeg"
format:
  html:
    toc: true
    toc-location: right
    toc-tile: On this page
---

### Preface

In the world of data, data is categorized as either "big data" or just "data." This can be problematic since when an organization doesn't have "big data," more often than not they do not take time to automate processing their data nor take care in efficiently managing it. On the other hand, an organization may have what they consider "big data" and they spend a significant amount of effort and money managing it, even if there is no clear use-case. Because of this, I think the focus should shift from "big data" to "impactful data."

### What is data?

Before explaining what impactful data is, a quick definition about what is data. As a Data Engineer, to me data is a collection of values to represent a transaction, measurement, or an event along with information to provide context. An example of this could be data coming off sensors placed in a river. The sensor is set to collect measuremetns of pH, Temperature, and Dissolved Oxygen. Each measurement has a time stamp associated with it along with information about when and where the sensor was placed, when it was collected, quality check information about the sensor, etc. For a more detailed definition of data, [Wikipedia](https://en.wikipedia.org/wiki/Data) has a good article around it.

### What is impactful data?

To simply put it, impactful data has a clear use-case that can help solve a problem and/or answer a question that will help inform a decision. This could range from being used to create a KPI metric dashboard, data collected in a scientific study, to data that can help drive Government policy. In the absence of a clear use-case, my recommendation would be to document the data and archive it in cheaper object storage, such as [AWS S3](https://aws.amazon.com/s3/).

### Should you automate processing and management of small volumes of impactful data?

Yes! Regardless of the volume of the impactful data, taking the time to streamline processing and managing the data can have a wide variety of benefits.

#### Automating Data Processing

Automating data processing reduces the time it takes to gain access to the data and insights from it. It also reduces the amount of potential human error when manually processing data. This could start as a simple Python or R script run locally. As the volume and frequency of data increases, this could evolve into building a Serverless Data Pipeline in AWS using services like [AWS Lambda](https://aws.amazon.com/lambda/), [AWS Step Functions](https://aws.amazon.com/step-functions/), and/or [AWS Fargate](https://aws.amazon.com/fargate/). Depending on situation, there are pros and cons between running locally and deploying a data pipeline in a cloud platform. Regardless of the implementation, automating data processing leads to faster access to the data and insights along with less human errors.

#### Data Management

When does it make sense to build a data warehouse and marts? Well..."it depends." If you are pulling in data from multiple desperate sources that you need to normalize together into a single harmonized data model, then a data warehouse and curated data marts may be appropriate. If the data is coming from a single source, it may be sufficient to streamline processing it and serving the results up via a [Quicksight Dashboard](https://aws.amazon.com/quicksight/).

### When does volume of data matter?

There are some cases where the volume data will matter such as when evaluating a data platform architecture or exploring using Machine Learning to solve a problem.

#### Evaluating Data Platform Architecture

When building a data platform, it is important to take into consideration the 3 V's of data (volume, velocity, and variety). This will inform the kinds of technologies a Data Engineer should consider using in order to ensure the data stack can handle the use-case.  An example being a data platform to manage terabytes of data, a Data Engineer should consider frameworks that support parallel computing such as Spark with AWS EMR versus if I am managing gigabytes of data where I could use something simpler to use such Lambda functions to process the data and AWS Athena to query the data.

#### Machine Learning Applications

When Machine Learning came onto the scene, it brought with it the need for large volumes of data in order to have sufficient data to train an algorithm to perform a task such as image classification, natural language processing, etc. In these cases, the larger the training dataset, more often than not the better the trained algorithm will perform. This is of course assuming the training dataset is well suited for the problem to be solved but that would deserve it's own blog post.

### Conclusion

It is important to think critically about the actual value of a dataset over the perceived value. Also, any dataset that is considered valuable, there are numerous benefits to invest time and energy into automating the processing and management of the data. This will help improve data quality and ensure data is accessible in a timely manner.