# use openjdk 11 image as base image from docker hub
FROM openjdk:11
ADD target/docker-spring-boot.jar docker-spring-boot.jar
EXPOSE 8090
ENTRYPOINT ["java", "-jar", "docker-spring-boot.jar"]