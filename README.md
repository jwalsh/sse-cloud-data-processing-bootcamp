# SSE Cloud Data Processing Bootcamp
Welcome to the SSE Cloud Data Processing Bootcamp! This bootcamp aims to provide a foundation in streaming data, event-driven systems, and data processing pipelines so that you can better understand, architect, and develop solutions in this domain using Apache Beam and various cloud technologies. Please visit https://github.com/jwalsh/sse-cloud-data-processing-bootcamp for the latest updates and information.

## Goal of the Bootcamp

This bootcamp is designed for staff engineers to:

1. Understand the fundamentals of streaming data and eventing systems.
2. Gain hands-on experience with tools and services that help build, manage, and scale streaming data systems.
3. Learn best practices for architecting, building, and deploying modern data systems in the cloud.
4. Develop skills in debugging and performance tuning of streaming data systems.

## Components

The exercises in this bootcamp cover the following core components:

1. Apache Kafka: Learn how to use Apache Kafka for stream processing.
2. Google Cloud Pub/Sub: Get hands-on experience with the Google Cloud Pub/Sub system.
3. Kubernetes: Understand how to manage and scale your infrastructure with Kubernetes.
4. Apache Beam: Learn how to process data in parallel using Apache Beam and discover how it integrates with other streaming data systems.
5. Python: Practice building and deploying Python scripts that interact with streaming data systems.
6. Clojure: Experiment with the Clojure programming language for handling streaming data applications.

The exercises serve as a starting point to immerse you in the world of streaming data systems. We encourage you to explore each exercise, learn from it, and adapt it to your specific needs, building upon your existing expertise as a staff engineer.


## Exercises

### Exercise 1: Basic Data Transformation with Apache Kafka

   Objective: Learn how to use Apache Kafka locally to consume and produce messages while transforming data.

   Tasks:

   - Set up and start Apache Kafka locally.
   - Create a Kafka topic.
   - Write a standalone Python/Clojure script that uses Kafka's producer and consumer APIs.
   - Script should consume messages from the input topic, perform basic data transformation (e.g., converting data to uppercase), and produce the transformed messages to the output topic.
   - Start the script and observe the transformed messages in the output topic.

   Cloud Deployment:

   - Deploy a managed Kafka service on the cloud provider of your choice (e.g., Confluent Cloud on AWS and Google Cloud, or Azure Event Hubs).
   - Update the Python/Clojure script configurations to target the cloud Kafka instance.
   - Deploy the script in a managed environment (AWS Lambda, Google Cloud Functions, or Azure Functions) to perform the transformation.

### Exercise 2: Stream Processing with Google Cloud Pub/Sub and Apache Beam

   Objective: Learn how to use Google Cloud Pub/Sub and Apache Beam locally to process streaming data and implement windowed processing.

   Tasks:

   - Set up and start Google Cloud Pub/Sub emulator.
   - Create input and output Pub/Sub topics.
   - Write a Python script to generate streaming data and publish it to the input Pub/Sub topic.
   - Write an Apache Beam pipeline in Python/Clojure, consuming messages from the input topic, processing them (e.g., counting words), and producing results to the output topic.
   - Test the pipeline locally using the DirectRunner.
   - Start the data generation script and pipeline, observing the processed results in the output topic.

   Cloud Deployment:

   - Create input and output Pub/Sub topics in Google Cloud Pub/Sub.
   - Update the data generation script to target the cloud instance of the input topic and deploy it in a managed environment (Google Cloud Functions).
   - Deploy the Apache Beam pipeline using the DataflowRunner to process messages from the cloud input topic and write results to the cloud output topic.

3. **Exercise 3: Stateless API with Kubernetes**

   Objective: Build a stateless REST API using Python (e.g., Flask) or Clojure (e.g., Ring), then deploy and scale it on a local Kubernetes cluster.

   Tasks:

   - Develop a stateless REST API using Python or Clojure that performs basic CRUD operations on data stored in memory.
   - Test the API locally.
   - Package the API in a Docker container.
   - Set up and start a local Kubernetes cluster (e.g., Minikube or Docker Desktop's Kubernetes).
   - Deploy the API container on the local Kubernetes cluster and scale it with multiple replicas.
   - Test the deployed API on the local cluster.

   Cloud Deployment:

   - Push the Docker container to a container registry (Docker Hub, Google Container Registry, or AWS Elastic Container Registry).
   - Deploy the container on a managed Kubernetes service (Google Kubernetes Engine, AWS EKS, or Azure AKS).
   - Update the deployment configuration to scale and ensure fault tolerance.
   - Test the deployed API by accessing the cloud endpoint.

### Exercise 4: Event-Driven Data Processing with AWS Lambda and Kinesis

   Objective: Create an event-driven data processing pipeline using AWS Kinesis and Lambda functions.

   Tasks:

   - Set up AWS Kinesis streams for input and output.
   - Write a Python script to generate streaming data and publish it to the AWS Kinesis input stream.
   - Write an AWS Lambda function in Python to process the input Kinesis records (e.g., perform data enrichment).
   - Configure the Lambda function to produce the processed records to the output Kinesis stream.
   - Test the entire pipeline locally using the AWS SAM CLI.

   Cloud Deployment:

   - Create and configure the AWS Kinesis input and output streams, as well as the AWS Lambda function, in the AWS Management Console.
   - Update the data generation script to target the cloud instance of the input Kinesis stream and deploy it in a managed environment (AWS Lambda).
   - Test the deployed pipeline and observe the results in the output Kinesis stream.

### Exercise 5: Real-Time Data Visualization with Azure Event Hubs and WebSockets

   Objective: Collect streaming data from Azure Event Hubs and visualize it in real-time using WebSockets.

   Tasks:

   - Set up an Azure Event Hub.
   - Write a Python script to generate streaming data and send it to the Azure Event Hub.
   - Develop a WebSocket server and a simple web page to visualize real-time streaming data using JavaScript.
   - Write a Python/Clojure script to consume messages from the Event Hub and broadcast them via the WebSocket server.
   - Test the entire pipeline locally.

   Cloud Deployment:

   - Create and configure the Azure Event Hub in the Azure portal.
   - Update the data generation script to target the cloud instance of the Event Hub and deploy it in a managed environment (Azure Functions).
   - Deploy the WebSocket server using Azure Web Apps or a similar PaaS offering.
   - Access the hosted web page in a browser to visualize the real-time streaming data from the Event Hub.

These exercises are designed to run locally first and then be deployed to cloud providers. Each exercise has instructions for local setup and cloud deployment. The exercises target different aspects of streaming data and event-driven systems and enable staff engineers to build and deploy solutions on various platforms.


### Exercise 6: Enriching Streaming Data with Google Cloud Pub/Sub and Bookstore API

Objective: Learn how to consume messages from a Google Cloud Pub/Sub subscription, enrich the data using a Bookstore API, and produce enriched messages to another Pub/Sub topic.

Tasks:

- Set up a Google Cloud Pub/Sub topic and create two subscriptions: one for raw book data and one for enriched book data.
- Write a Python script to simulate the streaming data, sending messages containing book IDs to the raw data subscription.
- Set up a REST API (e.g., using Flask or FastAPI) that simulates a Bookstore API and returns book details for a given book ID.
- Write a Python script to consume messages from the raw data subscription, call the Bookstore API to enrich the data with book details, and send the enriched messages to the enriched data subscription.
- Test the pipeline locally using the Google Cloud Pub/Sub emulator.

Cloud Deployment:

- Deploy the Google Cloud Pub/Sub topic with both subscriptions in place.
- Update the data streaming script to target the cloud instance of the raw data subscription, and deploy it (e.g., using Google Cloud Functions).
- Deploy the Bookstore API to a cloud provider (e.g., Google App Engine).
- Update the data enrichment script to target the cloud instances of the raw data and enriched data subscriptions and deploy it (e.g., using Google Cloud Run).

### Exercise 7: Converting a Spark Data Processing Pipeline to Apache Beam 

Objective: Learn how to convert an Apache Spark-based data processing pipeline to an Apache Beam pipeline.

Tasks:

- Set up a sample Spark pipeline that reads a data source (e.g., a CSV file), performs transformation operations (e.g., filtering, mapping), and writes the output to a destination sink (e.g., another CSV file).
- Run the Spark data processing pipeline.
- Develop an Apache Beam pipeline that performs similar transformation operations as the Spark pipeline, reading from and writing to the same data source and destination.
- Test the Apache Beam pipeline using the DirectRunner.

Cloud Deployment:

- For the Apache Beam pipeline, update the input and output sources to cloud-based storage (e.g., Google Cloud Storage).
- Deploy the Apache Beam pipeline using the DataflowRunner or other available runner options based on your cloud provider (e.g., Flink on AWS or Azure Data Factory).

### Exercise 8: Auctions in Clojure 

#### Components

1. **REST API**: Create a REST API using the Clojure Ring library to handle requests related to user registration, item listing, and bid placement.

2. **WebSocket Server**: Implement a WebSocket server using the Sente library (Clojure). The server will be responsible for broadcasting real-time bidding updates to all connected clients.

3. **Database**: Use a database (e.g., PostgreSQL) for storing user data, auction items, and bid history. Interact with the database using the HugSQL library for Clojure.

4. **Frontend**: Develop a simple web page using HTML and JavaScript, allowing users to interact with the auction system: browse items, place bids, and view the highest bid in real-time via WebSockets.

#### Implementation Steps

1. Develop the REST API using the Ring library. Create endpoints for user registration (sign up, log in), listing auction items, adding new items, and submitting bids on items.

2. Create the WebSocket server with the Sente library. The server should handle bid updates and broadcast new highest bids to all connected clients in real-time.

3. Set up the database and use HugSQL to define and manage SQL queries for data manipulation. Design the schema with tables for users, items, and bids.

4. Develop the simple web page that interacts with the REST API for user registration, item listing, and bid placement. Use JavaScript to connect to the WebSocket server and listen for bid updates.

5. Test the auction system locally, verifying that users can register, browse items, submit bids, and receive real-time highest bid updates.

#### Deployment

1. Deploy the REST API and WebSocket server using a cloud PaaS (e.g., Heroku, Google App Engine, or AWS Elastic Beanstalk). Use environment variables for configuration, such as database connection settings.

2. Configure the database to run on a managed service provided by your cloud platform (e.g., Amazon RDS, Google Cloud SQL, or Azure Database).

3. Host the frontend on a web hosting service like GitHub Pages or Google Cloud Storage.

By following this outline, you can build a real-world auction system using Clojure, with REST API and WebSocket components to provide a seamless and real-time interactive bidding experience for users.

### Exercise 9: Sentiment Analysis with Apache Flink and Twitter API

Objective: Build an Apache Flink pipeline that consumes tweets from the Twitter API, performs sentiment analysis on the tweet text, and produces the sentiment score to an output sink (e.g., file, Kafka, console).

Tasks:

- Set up a Twitter Developer account and create an app to obtain API keys and access tokens.
- Develop a Python or Java script that connects to the Twitter API and consumes tweets based on keywords or hashtags using the Tweepy library (Python) or Twitter4J library (Java).
- Write an Apache Flink pipeline that reads the tweets from the Twitter API script, extracts the tweet text, and performs sentiment analysis using the TextBlob library (Python) or Stanford CoreNLP (Java).
- Produce the sentiment score (e.g., positive, negative, neutral) for each tweet to an output sink (e.g., file, Kafka, console).
- Run the Flink pipeline using the local Flink cluster.

Cloud Deployment:

- Set up a managed Apache Flink service on a cloud provider (e.g., Amazon Kinesis Data Analytics, Google Cloud Dataflow, or Azure Stream Analytics).
- Update the Flink pipeline code to read tweets from a cloud-based message broker (e.g., Kafka, Google Cloud Pub/Sub) instead of directly from the Twitter API script.
- Deploy the Twitter API script as a separate service (e.g., AWS Lambda, Google Cloud Functions, Azure Functions) to publish tweets to the message broker.
- Run the Flink pipeline on the managed service, consuming tweets from the message broker, performing sentiment analysis, and writing the results to a cloud-based sink.

### Exercise 10: Anomaly Detection with Apache Cassandra and InfluxDB

Objective: Detect anomalies in time series data stored in Apache Cassandra and write the detected anomalies to InfluxDB.

Tasks:

- Set up an Apache Cassandra cluster locally or in the cloud (e.g., using the managed service provided by Aiven for Apache Cassandra).
- Create a table in Apache Cassandra to store time series data, including columns for timestamp, metric values, and metadata (e.g., device ID, location).
- Use a Python or Java script to generate synthetic time series data with different patterns (e.g., sudden spikes or drops, cyclic trends), and persist the data to the Cassandra table.
- Develop an Apache Beam pipeline that reads time series data from the Cassandra table, detects anomalies using an anomaly detection algorithm (e.g., using the S-H-ESD method, LOF-based outliers, or IQR method), and writes the detected anomalies to an InfluxDB instance.
- Run the Apache Beam pipeline with the appropriate runner (e.g., DirectRunner for local development, DataflowRunner for cloud deployment).

Cloud Deployment:

- Set up a managed InfluxDB instance on a cloud provider (e.g., using InfluxDB Cloud) and create an InfluxDB database.
- Deploy the Apache Beam pipeline to cloud providers like Google Cloud Dataflow, Apache Flink on Amazon EMR, or Azure Stream Analytics, ensuring it reads time series data from the managed Apache Cassandra service and writes detected anomalies to the managed InfluxDB instance.


### Exercise 11: Exploring Apache Beam Runners

Objective: Gain a deep understanding of Apache Beam runners and learn how to switch between different runners for executing Beam pipelines.

Tasks:

1. Create an Apache Beam pipeline that reads data from a source (e.g., a CSV file), transforms the data (e.g., applying filters, mapping, and aggregations), and writes the results to an output sink (e.g., another CSV file or a database).

2. Test the pipeline locally using the DirectRunner.

3. Explore other available runners such as DataflowRunner (Google Cloud Dataflow), FlinkRunner (Apache Flink), SamzaRunner (Apache Samza), and SparkRunner (Apache Spark).

4. Set up and configure the appropriate environments for each chosen runner (e.g., a Flink or Spark cluster, a Google Cloud Dataflow project).

5. Update the Apache Beam pipeline to run with each chosen runner and validate that the pipeline behaves consistently across different runners (i.e., produces the same results).

Real-world example: An organization processing log data wants to migrate its data processing pipelines from running on their current batch processing system to a more flexible and scalable streaming platform. They want to test and compare the performance of different runners before making a final decision.

### Exercise 12: Working with Side Inputs in Apache Beam

Objective: Learn how to use side inputs in Apache Beam to perform operations that require additional secondary input data.

Tasks:

1. Create an Apache Beam pipeline that reads primary data from a source (e.g., a CSV file containing user data).

2. Prepare a secondary dataset (e.g., a CSV file containing user scores) and read it into a PCollection.

3. Use side inputs in a ParDo or FlatMap transform to perform operations that require the secondary dataset (e.g., join user data with their corresponding user scores).

4. Write the combined output to a suitable sink (e.g., another CSV file or a database).

5. Test the pipeline locally using the DirectRunner.

Real-world example: A company has two datasets stored in separate CSV files: one contains customer profile information, and the other contains customers' purchase history. The company wants to combine these datasets to derive insights into their customer base and tailor their marketing efforts.

### Exercise 13: Leveraging Schemas in Apache Beam

Objective: Learn how to use schemas in Apache Beam to define the structure of the data, making it easier to work with structured data sources and transformations.

Tasks:

1. Create an Apache Beam pipeline that reads structured data from a source (e.g., a CSV file containing user data with columns such as user ID, name, and age).

2. Define a schema for the structured data using Python NamedTuple, Java POJO, or Avro schema.

3. Modify the pipeline's source to read data with the defined schema, allowing Beam to automatically project the data onto the schema.

4. Perform a transformation (e.g., filtering, mapping) on the data using the schema fields.

5. Write the transformed data to a suitable sink (e.g., another CSV file, a database) while preserving the schema.

6. Test the pipeline locally using the DirectRunner.

Real-world example: An organization obtains a dataset of customer reviews from an e-commerce website. The dataset includes information such as user ID, product ID, rating, and review text. Using schemas, the organization wants to apply various transformations to the data before ingesting it into their data warehouse for further analysis.

### Exercise 14: Monitoring Developer Productivity with Apache Beam

Objective: Develop an end-to-end data processing pipeline using Apache Beam that combines different runners, side inputs, and schemas to monitor developer productivity metrics using data from various sources (e.g., GitHub, Jira, and Slack).

Tasks:

1. Set up data sources to collect data from GitHub (e.g., commits, pull requests), Jira (e.g., issue creation and resolution times), and Slack (e.g., message counts, reactions).

2. Define schemas for the data collected from each source.

3. Create an Apache Beam pipeline to read data from each source using the defined schemas.

4. Use side inputs to combine data from different sources in the pipeline to derive developer productivity metrics (e.g., commits per day, average time to resolve issues, active communication in Slack).

5. Transform and aggregate the combined data, generating summaries of developer productivity metrics for a given time frame.

6. Write the summary output to a suitable sink (e.g., a CSV file or a database).

7. Test the pipeline locally using the DirectRunner.

8. Deploy and run the pipeline using different runners (e.g., DataflowRunner, FlinkRunner, SparkRunner) and compare their performance.

Real-world example: A company wants to track and monitor its development team's productivity over time by analyzing data from various sources, including GitHub, Jira, and Slack. By leveraging Apache Beam, side inputs, and schemas, the company can create an efficient, flexible, and scalable pipeline that delivers valuable insights into their team's performance and productivity.

### Exercise 15: Creating a Multilingual Machine Learning Pipeline with Apache Beam

Objective: Develop an end-to-end machine learning pipeline using Apache Beam to train and deploy language models for Dutch, Spanish, and English, with a focus on updating the models per entity (e.g., per document, user, or topic).

Tasks:

1. Extract per entity offline data for training and evaluation by developing an Apache Beam pipeline that reads multilingual data with entity-level information from various sources (e.g., CSV files, databases) and preprocesses it (e.g., tokenization, removing stop words).

2. Split data by language, ensuring you have separate datasets for Dutch, Spanish, and English.

3. Train language models for Dutch, Spanish, and English on the respective processed datasets (e.g., using TensorFlow, PyTorch, or Hugging Face Transformers), emphasizing per-entity updates (e.g., fine-tuning the model for specific entities like documents, users, or topics).

4. Evaluate the performance of each language model using suitable metrics (e.g., perplexity, F1 score) and record the evaluations for future comparison.

5. Serialize and save each trained language model to a model registry (e.g., MLflow Model Registry, TensorFlow Model Registry, or an object storage service like Amazon S3) along with metadata specifying the language and the entity type.

6. Create a CI/CD pipeline to automate the steps from multilingual data extraction to model deployment for each language (e.g., using Jenkins, GitLab CI/CD, or GitHub Actions).

7. Implement a model serving service (e.g., TensorFlow Serving, MLflow Model Serving, or a custom REST API) that loads the respective language models and serves predictions on new per-entity data.

8. Deploy the model serving service on a suitable platform (e.g., Google Cloud AI Platform, Amazon SageMaker, or Azure Machine Learning).

9. Test the deployed multilingual models by making requests to the serving service with new per-entity data in Dutch, Spanish, and English, examining the predictions.

Real-world example: A multinational company wants to create a pipeline for training and deploying language models that can process and analyze textual data in Dutch, Spanish, and English at an entity level, such as per document or user. They choose to use Apache Beam for its flexibility and scalability in processing multilingual and per-entity data and automate the end-to-end pipeline, including deploying the trained models for serving predictions.

### Exercise 16: Predicting Incomes by Education Level with Apache Beam

Objective: Develop an Apache Beam pipeline to predict incomes by education level, leveraging per-entity model training for per education level model creation and updating.

Tasks:

1. Load and clean data from a source (e.g., a CSV file containing information on individuals' incomes, education levels, and other demographic data) using an Apache Beam pipeline.

2. Preprocess the data (e.g., one-hot encoding categorical features, normalizing continuous features).

3. Group the cleaned data records by education level and create a separate dataset for each education level entity.

4. Train income prediction models for each education level entity (e.g., using scikit-learn, TensorFlow, or PyTorch), and evaluate their performances using suitable metrics (e.g., mean squared error, R-squared).

5. Serialize and save the trained models with metadata specifying the education level entity details in a model registry (e.g., MLflow Model Registry, TensorFlow Model Registry, or an object storage service like Amazon S3).

6. Test the pipeline locally using the DirectRunner.

DOT File Representation:

```dot
digraph G {
    rankdir=LR;
    a [label = "Load Data"]
    b [label = "Clean Data"]
    c [label = "Group Per Education Level"]
    d [label = "Train Models Per Education Level"]
    e [label = "Save Models"]

    a -> b -> c -> d -> e;
}
```

The DOT file representation illustrates the flow of the pipeline steps from loading data through to saving the trained models. The jobs include loading and cleaning the data, grouping by education level, training income prediction models per education level, and finally saving the trained models.

By completing this exercise, engineers will learn how to create an Apache Beam pipeline for processing and grouping data by education level entities. They will gain experience in training machine learning models per entity, in this case, education level, and deploying the models in a registry. This knowledge will equip them with the skills to tackle similar data processing challenges and develop effective and efficient solutions for real-world problems.

# Resources 

## Relational Algebra

1. **Books**

   - "An Introduction to Database Systems" by C. J. Date
   - "Database System Concepts" by Avi Silberschatz, Henry F. Korth, and S. Sudarshan

2. **Online Courses**

   - [Relational Algebra in Database Management Systems - Udemy](https://www.udemy.com/course/relational-algebra-in-database-management-systems/)
   - [Introduction to Relational Algebra - Khan Academy](https://www.khanacademy.org/computing/computer-science/algorithms/sql/p/databases)

3. **Selected Articles and Guides**

   - [Relational Algebra - GeeksforGeeks](https://www.geeksforgeeks.org/relational-algebra-dbms/)
   - [A Beginner's Guide to the Relational Algebra - Cal Poly Computer Science](https://users.csc.calpoly.edu/~dekhtyar/345-Fall2010/lectures/lec02.pdf)

## Streaming

1. **Books**

   - "Streaming Systems" by Tyler Akidau, Slava Chernyak, and Reuven Lax
   - "Kafka: The Definitive Guide" by Neha Narkhede, Gwen Shapira, and Todd Palino

2. **Online Courses**

   - [Stream Processing with Apache Kafka - Confluent](https://www.confluent.io/stream-processing-apache-kafka)
   - [Streaming Analytics on Google Cloud - Coursera](https://www.coursera.org/specializations/streaming-analytics-google-cloud)

3. **Selected Articles and Guides**

   - [Introduction to Stream Processing - Confluent](https://www.confluent.io/intro-to-stream-processing/)
   - [Streaming 101: An Introduction to Streaming Data and Stream Processing - O'Reilly](https://www.oreilly.com/data/free/files/streaming-data.pdf)

## Analytics

1. **Books**

   - "Python for Data Analysis" by Wes McKinney
   - "Data Science for Business" by Foster Provost and Tom Fawcett

2. **Online Courses**

   - [Data Science and Machine Learning Bootcamp with R - Udemy](https://www.udemy.com/course/data-science-and-machine-learning-bootcamp-with-r/)
   - [Data Analysis and Visualization with Python - University of Michigan (Coursera)](https://www.coursera.org/learn/data-analysis-with-python)

3. **Selected Articles and Guides**

   - [A Comprehensive Guide to Data Exploration - Analytics Vidhya](https://www.analyticsvidhya.com/blog/2016/01/guide-data-exploration/)
   - [The 7 Steps of Exploratory Data Analysis - Towards Data Science](https://towardsdatascience.com/the-7-steps-of-exploratory-data-analysis-87e7c34d911b)
# Historical Context

## Relational Algebra

Relational Algebra forms the basis of relational databases, which have been the backbone of traditional data storage and management systems since the 1970s. Proposed by Edgar F. Codd, relational algebra is a formal theoretical foundation for manipulating data using tuples, attributes, and relations. It introduces operations like selection, projection, and join that allow developers and analysts to interact with structured data sets.

Over time, relational databases have evolved to adapt to the growing data needs and provide greater efficiency, scalability, and robustness. However, as our systems generate enormous amounts of streaming data from IoT devices, social media, and other real-time sources, the need for event-driven architectures and streaming data systems has become more critical than ever.

