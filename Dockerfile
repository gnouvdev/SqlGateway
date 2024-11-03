FROM maven:3-openjdk-17
WORKDIR /app

COPY . .
RUN mvn clean package -DskipTests

EXPOSE 8080
ENTRYPOINT ["java","-jar","target/Tuan7.war"]
