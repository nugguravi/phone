#FROM gradle:4.7.0-jdk8-alpine AS build
FROM openjdk:11
#COPY --chown=gradle:gradle . /home/gradle/src
#WORKDIR /home/gradle/src
#RUN gradle build --no-daemon

EXPOSE 8085

ARG JAR_FILE
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java", "-jar", "/app.jar"]
