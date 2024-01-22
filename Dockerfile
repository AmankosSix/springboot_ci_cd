# Use the official OpenJDK base image with Java 21
FROM amazoncorretto:21-alpine

# Set the working directory in the container
WORKDIR /app

# Copy the dependencies file to the working directory
COPY target/shop-0.0.1-SNAPSHOT.jar /app

# Expose the port that your Spring Boot application will run on
EXPOSE 8080

# Run the JAR file
ENTRYPOINT ["java", "-jar", "shop-0.0.1-SNAPSHOT.jar"]