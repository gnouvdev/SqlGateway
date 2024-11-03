# Sử dụng image Tomcat
FROM tomcat:9.0-jdk17

# Thư mục làm việc
WORKDIR /usr/local/tomcat/webapps/

# Sao chép file .war vào thư mục webapps của Tomcat
COPY target/Tuan8-1.0-SNAPSHOT.war Tuan8.war

# Mở cổng 8080
EXPOSE 8080

# Tomcat sẽ tự động deploy file .war
