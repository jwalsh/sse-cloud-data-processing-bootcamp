# SSE Cloud Bootcamp

Welcome to the SSE Cloud Bootcamp targeted to staff engineers! This bootcamp aims to provide a foundation in streaming data and eventing systems so that you can better understand, architect, and develop solutions in this domain. Please visit [https://github.com/jwalsh/sse-cloud-bootcamp](https://github.com/jwalsh/sse-cloud-bootcamp) for the latest updates and information.

## Historical Context: Relational Algebra

Relational Algebra forms the basis of relational databases, which have been the backbone of traditional data storage and management systems since the 1970s. Proposed by Edgar F. Codd, relational algebra is a formal theoretical foundation for manipulating data using tuples, attributes, and relations. It introduces operations like selection, projection, and join that allow developers and analysts to interact with structured data sets.

Over time, relational databases have evolved to adapt to the growing data needs and provide greater efficiency, scalability, and robustness. However, as our systems generate enormous amounts of streaming data from IoT devices, social media, and other real-time sources, the need for event-driven architectures and streaming data systems has become more critical than ever.

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
