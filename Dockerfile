# Use an official OpenJDK runtime as a parent image
FROM openjdk:17-jdk-alpine

# Set a working directory inside the container
WORKDIR /app

# Copy the jar file from the build context into the container
COPY target/demo-app.jar /app/demo-app.jar

# Expose the port your app listens on
EXPOSE 8080

# Run the jar file
ENTRYPOINT ["java", "-jar", "demo-app.jar"]
# Placeholder for Dockerfile
