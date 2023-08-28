FROM openjdk:8-jdk-alpine

WORKDIR /app

COPY target/hello-world-counter-app-1.0.0.jar app.jar

EXPOSE 9090

CMD ["java", "-jar", "app.jar"]


