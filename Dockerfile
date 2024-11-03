FROM maven:3-openjdk-17 AS build
WORKDIR /app

COPY . .
RUN mvn clean package -DskipTests


# Run stage

FROM openjdk:17-jdk-slim
WORKDIR /app

COPY --from=build /app/target/Tuan8-1.0-SNAPSHOT.war Tuan7.wargỉ

ENTRYPOINT ["java","-jar","Tuan7.war"]
