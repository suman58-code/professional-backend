# Step 1: Use OpenJDK as the base image (Java 17)
FROM openjdk:17-jdk-slim

# Step 2: Set the working directory inside the container
WORKDIR /app

# Step 3: Copy the built JAR file (loanDedmo.jar) from the target folder into the container
COPY target/loan.jar app.jar

# Step 4: Expose port 8080 (default Spring Boot port)
EXPOSE 8089

# Step 5: Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]