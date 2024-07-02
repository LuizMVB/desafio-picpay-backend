# Use the generated image as the base image
FROM openjdk:17-jdk-slim-buster

ARG SPRING_PROFILE_ACTIVE
ARG ADDITIONAL_OPTS

ENV SPRING_PROFILE_ACTIVE=${SPRING_PROFILE_ACTIVE}
ENV ADDITIONAL_OPTS=${ADDITIONAL_OPTS}

# Copy your application jar and set the working directory
WORKDIR /opt/app
COPY /target/*.jar app.jar

# Use bash as the shell
SHELL ["/bin/bash", "-c"]

# Expose ports and define the command to run your Spring Boot app
EXPOSE 8080
EXPOSE 5005
CMD java ${ADDITIONAL_OPTS} -jar app.jar --spring.profile.active=${SPRING_PROFILE_ACTIVE}
