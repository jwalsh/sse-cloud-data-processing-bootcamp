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

1. **Exercise 1: Basic Data Transformation with Apache Kafka**

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

2. **Exercise 2: Stream Processing with Google Cloud Pub/Sub and Apache Beam**

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

4. **Exercise 4: Event-Driven Data Processing with AWS Lambda and Kinesis**

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

5. **Exercise 5: Real-Time Data Visualization with Azure Event Hubs and WebSockets**

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
