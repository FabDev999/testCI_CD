# Use a base image with JDK 17 (or switch to JDK 11 if needed)
FROM openjdk:17-jre-slim

# Set the working directory
WORKDIR /app

# Copy the JAR file into the container (fixed file name)
COPY target/demo-0.0.1-SNAPSHOT.jar /app/demo-0.0.1-SNAPSHOT.jar

# Expose the application port
EXPOSE 8080

# Use CMD instead of ENTRYPOINT and fix JAR name
CMD ["java", "-jar", "demo-0.0.1-SNAPSHOT.jar"]