#FROM gradle:4.7.0-jdk8-alpine AS build
FROM openjdk:11
#COPY --chown=gradle:gradle . /home/gradle/src
#WORKDIR /home/gradle/src
#RUN gradle build --no-daemon

EXPOSE 8086

ARG JAR_FILE=build/libs/phone-0.0.1-SNAPSHOT.jar
COPY ${JAR_FILE} phone-0.0.1-SNAPSHOT
ENTRYPOINT ["java", "-jar", "/phone-0.0.1-SNAPSHOT.jar"]
