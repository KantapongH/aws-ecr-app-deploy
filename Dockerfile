FROM eclipse-temurin:17-jdk-alpine
RUN apk add curl
VOLUME /temp
EXPOSE 8080
ADD target/aws_ecr_app_deploy-service.jar aws_ecr_app_deploy-service.jar
ENTRYPOINT ["java", "-jar", "/aws_ecr_app_deploy-service.jar"]
