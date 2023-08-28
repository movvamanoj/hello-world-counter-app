FROM openjdk:8-jdk-alpine

WORKDIR /app

COPY target/*.jar app.jar

EXPOSE 9090

CMD ["java", "-jar", "app.jar"]

