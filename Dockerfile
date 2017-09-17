FROM openjdk:8

COPY target/spark-java-poc-1.0-SNAPSHOT-jar-with-dependencies.jar /usr/bin/spark-java-poc.jar

EXPOSE 4567

WORKDIR /usr/bin

CMD ["java", "-jar", "/usr/bin/spark-java-poc.jar"]