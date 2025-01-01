# Usando uma imagem base com Java 17
FROM openjdk:17-jdk-slim

# Definir o diretório de trabalho no contêiner
WORKDIR /app

# Copiar o JAR gerado para o contêiner
COPY target/hello-world-rest-0.0.1-SNAPSHOT.jar /app/hello-world-rest.jar

# Expôr a porta 8080
EXPOSE 8080

# Comando para rodar o aplicativo
ENTRYPOINT ["java", "-jar", "/app/hello-world-rest.jar"]
