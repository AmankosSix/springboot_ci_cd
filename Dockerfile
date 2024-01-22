FROM maven:3.9.6-amazoncorretto-21 as builder
COPY src /home/app/src
COPY pom.xml /home/app

RUN mvn -f /home/app/pom.xml clean package -DskipTests

FROM amazoncorretto:21-alpine

COPY --from=builder /home/app/target/*.jar /usr/local/lib/app.jar

EXPOSE 8080

ENTRYPOINT ["java","-jar","/usr/local/lib/app.jar"]