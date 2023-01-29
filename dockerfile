### STAGE DE CONSTRUCCION
FROM maven:3.8.7-eclipse-temurin-17-alpine as builder
COPY . /app
WORKDIR /app
RUN mvn clean compile -e && mvn clean test -e && mvn clean package -e

### STAGE DE DESPLIEGUE
FROM maven:3.8.7-eclipse-temurin-17-alpine as deploy
COPY --from=builder /app/build /app
WORKDIR /app
EXPOSE 8081
ENTRYPOINT ["java", "-jar", "DevOpsUsach2020-0.0.1.jar"]