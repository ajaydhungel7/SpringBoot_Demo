# Use a base image with JDK for building the application
FROM maven:3.8.6-openjdk-17 AS build

# Set the working directory inside the container
WORKDIR /app

# Copy the pom.xml and download dependencies (to leverage cached layers)
COPY pom.xml .
COPY src ./src

# Build the application
RUN mvn clean package -DskipTests

# Use a smaller base image for running the application
FROM eclipse-temurin:17-jdk-focal

# Set the working directory for the runtime container
WORKDIR /app

# Copy the built jar from the build stage
COPY --from=build /app/target/your-application.jar app.jar

# Expose the application port (default Spring Boot port)
EXPOSE 8080

# Command to run the application
ENTRYPOINT ["java", "-jar", "app.jar"]