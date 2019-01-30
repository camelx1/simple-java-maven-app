FROM java:8u111-jre-alpine
LABEL "Andrey K. my@email.com"
COPY ./target/*.jar /usr/src/
WORKDIR /usr/src
CMD ["java", "-jar", "/usr/src/*.jar"]
