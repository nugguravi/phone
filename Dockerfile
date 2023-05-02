#FROM gradle:4.7.0-jdk8-alpine AS build
FROM openjdk:11
#COPY --chown=gradle:gradle . /home/gradle/src
#WORKDIR /home/gradle/src
#RUN gradle build --no-daemon

EXPOSE 8085
pwd
RUN mkdir app

ADD var/lib/jenkins/workspace/mobile/build/libs/phone-0.0.1-SNAPSHOT.jar app/phone-0.0.1-SNAPSHOT.jar

ENTRYPOINT ["java", "-jar", "/app/phone-0.0.1-SNAPSHOT.jar"]
