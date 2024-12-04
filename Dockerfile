# Use a base image with JDK for building the application
FROM maven:3.8.3-openjdk-17 AS build
WORKDIR /app
RUN mvn clean package
COPY target/*.jar app.jar
ENTRYPOINT ["java", "-jar", "app.jar"]