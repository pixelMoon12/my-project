FROM openjdk:17-oracle
EXPOSE 8080
COPY target/demo-0.0.1-SNAPSHOT-jar-with-dependencies.jar app.jar
ENTRYPOINT ["java","-jar","app.jar"]