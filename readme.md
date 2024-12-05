Project Overview
This project focuses on deploying a Spring Boot application that interacts with an Amazon DocumentDB (MongoDB-compatible) database. It leverages Terraform for provisioning AWS resources, GitHub Actions for continuous integration (CI), and Kubernetes for deployment. A significant aspect of this project is the use of AWS Secrets Manager for managing application configuration properties securely.
Key Components
Spring Boot Application
The core application is built using Spring Boot, which fetches and stores data in Amazon DocumentDB, providing a robust backend service.
AWS Resources
Terraform is utilized to automate the provisioning of necessary AWS resources, including:
Amazon DocumentDB: The NoSQL database service for data storage.
IAM Roles: To manage permissions securely.
CI/CD with GitHub Actions
GitHub Actions is employed to automate the build, test, and deployment processes. This ensures that any changes made to the codebase are continuously integrated and deployed to the Kubernetes cluster.
Kubernetes Deployment
The application is deployed in a Kubernetes cluster, allowing for efficient scaling and management of containerized applications.
AWS Secrets Manager Integration
A standout feature of this project is the integration with AWS Secrets Manager. Using the Secrets Store CSI Driver, the application can securely fetch secrets from AWS Secrets Manager and mount them into Kubernetes pods. This allows for sensitive information, such as database credentials and API keys, to be managed securely without hardcoding them into the application.
Conclusion
This project exemplifies a modern cloud-native architecture that emphasizes security, scalability, and automation. By utilizing Terraform, GitHub Actions, Kubernetes, and AWS Secrets Manager, it provides a comprehensive solution for deploying a Spring Boot application in a secure and efficient manner.
