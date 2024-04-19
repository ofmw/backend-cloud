FROM openjdk:17-alpine
COPY target/employee-management-backend-0.0.1-SNAPSHOT.jar /app/backend.jar
ENV APP_HOME /app
EXPOSE 8080
VOLUME /app/upload
WORKDIR $APP_HOME
ENTRYPOINT ["java"]
CMD ["-jar", "backend.jar"]