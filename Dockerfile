# Use the official OpenJDK base image
FROM openjdk:11-jre-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the compiled JAR file into the container
COPY target/hello-world-counter-app-1.0.0.jar app.jar

# Expose the port that the application will run on
EXPOSE 9090

# Command to run the application
CMD ["java", "-jar", "app.jar"]
