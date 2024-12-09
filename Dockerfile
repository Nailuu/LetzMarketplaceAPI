FROM eclipse-temurin:21-jre

WORKDIR /app

ARG JAR_FILE_PATH
ARG JAR_FILE_NAME

COPY ${JAR_FILE_PATH} .

ENV JAR_FILE_NAME=${JAR_FILE_NAME}

EXPOSE 8080

CMD ["sh", "-c", "java -jar $JAR_FILE_NAME"]
