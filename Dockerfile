#FROM gradle:4.7.0-jdk8-alpine AS build
FROM openjdk:11
#COPY --chown=gradle:gradle . /home/gradle/src
#WORKDIR /home/gradle/src
#RUN gradle build --no-daemond

EXPOSE 8086

ARG JAR_FILE=build/libs/phone-0.0.1-snapshot.jar
COPY ${JAR_FILE} phone-0.0.1-snapshot.jar
ENTRYPOINT ["java", "-jar", "/phone-0.0.1-snapshot.jar"]