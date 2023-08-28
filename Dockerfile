# Use an official OpenJDK runtime as a parent image
FROM openjdk:11-jre-slim

# Set the working directory in the container
WORKDIR /app

ARG JAR_FILE=target/hello-world-counter-app-1.0.0.jar

COPY ${JAR_FILE} app.jar

EXPOSE 9090

# Specify the command to run your application
CMD ["java", "-jar", "app.jar"]
