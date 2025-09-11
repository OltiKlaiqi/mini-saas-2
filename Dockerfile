# Build Stage
FROM maven:3.9.4-eclipse-temurin-21 AS build

WORKDIR /workspace

COPY pom.xml .

COPY src ./src

RUN mvn -B -Dmaven.test.skip=true package


# Runtime Stage
FROM eclipse-temurin:21-jre

WORKDIR /app

COPY --from=build /workspace/target/mini-saas-0.1.0.jar /app/app.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "/app/app.jar"]