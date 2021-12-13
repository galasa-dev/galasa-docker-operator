ARG dockerRepository

FROM ${dockerRepository}/common/openjdk:8-jdk

ENV CONFIG=/config.yaml

COPY build/libs/operator.jar /operator.jar
COPY config.yaml /config.yaml

CMD ["java","-jar","/operator.jar"]