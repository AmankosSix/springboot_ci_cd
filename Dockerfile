# Stage 1: Build the application
FROM amazoncorretto:21-alpine AS builder

WORKDIR /app

COPY . .

RUN ./mvnw clean install -DskipTests

# Stage 2: Create the final image
FROM amazoncorretto:21-alpine

WORKDIR /app

COPY --from=builder /app/target/springboot_ci_cd-0.0.1-SNAPSHOT.jar /app/app.jar

EXPOSE 8080

HEALTHCHECK CMD wget --quiet --tries=1 --spider http://localhost:8080/actuator/health || exit 1

ENTRYPOINT ["java", "-jar", "/app/app.jar"]
