---
title: "Tool Selection Framework"
author: "Alex Antonison"
date: "2023-03-01"
format:
  html:
    toc: true
    toc-location: right
    toc-title: On this page
---

### Overview

The goal of the Data Tools Conceptual Framework is to highlight various tools that can be used to process and analyze data and data storytelling. While most tools can be used to accomplish a task, there are instances where some tools may be better suited to complete a given project.

To distill down a project down into something that can be evaluated, a project can be broken down into individual work units. A project will be evaluated based on the volume and complexity of work units. For projects that have either a combination of complex work units or a large volume of work units will notably impact the type of tools that would be better suited.

The key metrics that will be used when evaluating data tools will be the learning curve and how productive a person can be with a tool. While some tools may have a lower learning curve making them easier to pick up, if a project is large and/or complex, a tool that allows a person to be more productive could allow for the project to be done faster and with higher quality.

### Defining a Project

A project consists of one or many work units. A work unit is a loose concept meant to represent the steps taken to complete a part of a project. When evaluating work units, it is important to keep in mind the volume and complexity of work units for a project.

#### Complexity

The complexity of a work unit is a function of how many steps there are in a single work unit as well as if there are nuances in a work unit based on the input. Work units that have higher complexity will result in each individual unit taking longer to complete and increasing the opportunity for human error.

#### Volume

The volume of work units in a project is how many items need to be processed. This could range from either working with a single data file downloaded from a data platform or having to process three hundred sensor data files. Volume is important to keep in mind since even for projects where the individual work complexity is low, if there is a significant volume of units it could lead to the overall project taking a long time and increasing the likelihood of errors.

### Data Tool Metrics

When looking at data tools, a comparison will be made between the learning curve of the tool and how productive a person can be with that tool.

#### Learning Curve

The learning curve represents how long it will take to initially learn the tool.

For scoring, a high score represents a lower learning curve, and a low score represents a higher learning curve.

#### Productivity

Productivity is determined by how efficiently a person can complete an individual work unit. This is important since there could be instances where a person may have a large volume of work units for a given project or they may have to repeat a work unit because either an error was discovered or a step was missed.

For scoring, a high score represents a tool that allows a person to be very productive with the tool versus a low score meaning the tool is more manual.

### Data Tools

Data Tools will be evaluated from the following categories: Spreadsheet, Programming Language, and Data Storytelling. An overview will be provided for where the tool excels and struggles in relation to the score.

#### Spreadsheet

##### Overview

|                |              |
|----------------|--------------|
| Learning Curve | Productivity |
| 10             | 1            |

Excel and Google Sheets are both good examples of a spreadsheet tool. What is great about Excel and Google Sheets is that both have a low learning curve to get started and over the years have added many features that make it easy to go from structured data to insights. This could involve creating a pivot table that allows for easily aggregating and summarizing data to creating a variety of pre-baked charts that allow for a decent amount of customization.

However, with the lower learning curve also comes with low Productivity. Since spreadsheet tools only allow manual input, each work unit must be done manually. This can become an issue with projects that have a large amount of work units or if a project has work units with high complexity.

One caveat is that there is the ability to write macros in a spreadsheet tool to enhance the functionality but at that point, it would be more beneficial to take a step back to evaluate whether a Data Preparation Tool or Programming Language would be better suited for the project.

##### Capabilities

-   Data Preparation
-   Data Storytelling

##### Ideal Project

Where Excel and Google Sheets excel are when you have a project that has a low volume of work units, and the complexity of the work units is low. In this scenario, the amount of time it takes to complete the project is low and additional time can be spent ensuring the quality of the project.

##### Cost and Availability

Where Google Sheets is free with a Google Account, Microsoft Excel has to be purchased if you are not in a setting where you are working at a company or are in school where Excel is provided. Additionally, Microsoft Excel works best on a Windows PC where Google Sheets is browser based and works in any operating System.

#### Data Visualization Tools

##### Overview

|                |              |
|----------------|--------------|
| Learning Curve | Productivity |
| 6              | 2            |

Data Visualization Tools such as Tableau, Juicebox, and PowerBI allow for creating Data Visualizations with structured and cleansed data. Data Visualization Tool's will allow for being more productive than using a Spreadsheet tool because of the additional features.

##### Capabilities

-   Data Visualization

##### Ideal Project

Data Visualization tools will excel at instances where there is a project where data has already been prepared. This will work better with low work units and lower complexity. However, because it has more features, it allows for some additional complexity. Will still struggle with higher volume of work.

##### Cost and Availability

Data Storytelling Tools must be purchased. This makes them more costly and less accessible.

#### Programming Language

##### Overview

Where Programming Languages like R and Python have the greatest learning curve, they also allow for a person to be the most productive and makes it easier to produce higher quality end products. Additionally, as R and Python are both open source, that makes them free and very accessible.

One of the greatest challenges to getting started with R and Python has been setting them up on a computer. However, there are free offerings for both R and Python allowing for them to be run in a browser without the need for setting up a personal computer.

##### Capabilities

-   Data Preparation
-   Data Visualization

##### Ideal Project

Programming Languages have packages that support a wide variety of project types. However, taking into consideration the learning curve and the amount of time it takes to set up a project, an ideal projects for Programming Languages are ones that require reproducibility, processing a large amount of items, and have complex steps.

##### Cost and Accessibility

There is no cost to using R and Python. It is accessible for anyone to use that has access to a computer with internet.

##### Overall Scoring

Below is a list of scores for several types of tools.

|                                                 |                |              |
|-------------------------------------------------|----------------|--------------|
| Tool                                            | Learning Curve | Productivity |
| Spreadsheet Tool (Excel, Google Sheets)         | 10             | 1            |
| Data Visualization (Tableau, Juicebox, PowerBI) | 6              | 5            |
| Programming Language (Python, R)                | 1              | 10           |

### Conclusion

For projects that have a low volume of work with low complexity, a Spreadsheet Tool will be sufficient. However, if either the complexity or volume of work is high, over the lifetime of a project it would be beneficial to explore using a combination of programming languages and data visualization tools.
