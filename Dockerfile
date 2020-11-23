FROM java:8u111-jre-alpine

COPY ./target/*.jar /usr/src/
WORKDIR /usr/src
CMD ["java", "-jar", "/usr/src/*.jar"]
