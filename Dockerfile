FROM maven:3-openjdk-17 AS build
WORKDIR /app

COPY . .
RUN mvn clean package -DskipTests


# Run stage

FROM openjdk:17-jdk-slim
WORKDIR /app

COPY --from=build /app/target/Tuan7.war Tuan7.war

ENTRYPOINT ["java","-jar","Tuan7.war"]
