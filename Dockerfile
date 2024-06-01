#Start with a base image containing Java runtime
FROM openjdk:17-jdk-slim as build

# Add the application's jar to the container
COPY target/devops-nxt-poc.jar devops-nxt-poc.jar

#execute the application
ENTRYPOINT ["java","-jar","/devops-nxt-poc.jar"]