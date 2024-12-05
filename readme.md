# Project Overview

This project demonstrates a modern cloud-native architecture for deploying a Spring Boot application that interacts with Amazon DocumentDB. It emphasizes security, scalability, and automation through the use of Terraform, GitHub Actions, Kubernetes, and AWS Secrets Manager.

## Key Components

### Spring Boot Application

The core of the project is a Spring Boot application that fetches and stores data in Amazon DocumentDB. This provides a robust backend service capable of handling MongoDB-compatible operations.

### AWS Resources

Terraform is used to automate the provisioning of AWS resources, including:

- **Amazon DocumentDB**: A fully managed, MongoDB-compatible database service.
- **IAM Roles**: For secure management of permissions.

### CI/CD with GitHub Actions

The project utilizes GitHub Actions to automate the build, test, and deployment processes, ensuring continuous integration and deployment to the Kubernetes cluster.

### Kubernetes Deployment

The application is deployed in a Kubernetes cluster, which allows for efficient scaling and management of containerized applications.

### AWS Secrets Manager Integration

A standout feature is the integration with AWS Secrets Manager using the Secrets Store CSI Driver. This allows the application to:

- Securely fetch secrets from AWS Secrets Manager
- Mount secrets into Kubernetes pods
- Manage sensitive information like database credentials and API keys without hardcoding

## Implementation Details

1. **Spring Boot Configuration**: The application's `application.properties` file is configured to connect to Amazon DocumentDB using a connection URI string.

2. **Terraform for AWS Resources**: Terraform scripts define and provision the necessary AWS resources, including the DocumentDB cluster and associated IAM roles.

3. **Kubernetes Secrets Management**: The project uses the AWS Secrets Manager integration with Kubernetes to securely manage and inject secrets into the application pods.

4. **CI/CD Pipeline**: GitHub Actions workflows are set up to automate the build and deployment process, ensuring that code changes are continuously integrated and deployed.

## Conclusion

This project exemplifies a secure and efficient approach to deploying a Spring Boot application in a cloud-native environment. By leveraging Terraform, GitHub Actions, Kubernetes, and AWS Secrets Manager, it provides a comprehensive solution that prioritizes security, scalability, and automation in modern application deployment.
