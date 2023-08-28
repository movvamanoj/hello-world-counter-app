FROM adoptopenjdk:11-jre-hotspot
ARG JAR_FILE=target/hello-world-counter-app.jar
#ARG JAR_FILE=target/hello-world-counter-app-1.0.0.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java", "-jar", "/app.jar"]
