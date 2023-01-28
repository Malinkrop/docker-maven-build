FROM java:9 as builder
ENV APP_HOME=/root/myapp/
WORKDIR $APP_HOME
COPY ./ $APP_HOME
RUN ./mvnw clean compile -e && ./mvnw clean test -e && ./mvnw clean package -e

FROM openjdk:8-alpine
WORKDIR /root/myapp/
RUN ./mvnw spring-boot:run


### Run Jar
### * Local:       
### * Background: nohup bash mvnw spring-boot:run &