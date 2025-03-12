# Use a base image with JDK 17 (or switch to JDK 17 if needed)
FROM eclipse-temurin:17-jre

# Set the working directory
WORKDIR /target

# Copy the JAR file into the container (fixed file name)
COPY target/demo-0.0.1-SNAPSHOT.jar /target/demo-0.0.1-SNAPSHOT.jar

# Expose the application port
EXPOSE 8080

# Use CMD instead of ENTRYPOINT and fix JAR name
CMD ["java", "-jar", "demo-0.0.1-SNAPSHOT.jar"]