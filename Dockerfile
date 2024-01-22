# Use the official OpenJDK base image with Java 21
FROM amazoncorretto:21-alpine

# Set the working directory in the container
WORKDIR /app

# Copy the dependencies file to the working directory
COPY target/springboot_ci_cd-0.0.1-SNAPSHOT.jar /app/app.jar

# Expose the port that your Spring Boot application will run on
EXPOSE 8080

# Run the JAR file
ENTRYPOINT ["java", "-jar", "/app/app.jar"]