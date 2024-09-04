# Use uma imagem base do OpenJDK
FROM openjdk:17

# Copie o JAR da aplicação para o contêiner
COPY target/cassandra-application.jar /app/cassandra-application.jar

# Defina o diretório de trabalho
WORKDIR /app

# Exponha a porta da aplicação
EXPOSE 8080

# Comando para iniciar a aplicação
ENTRYPOINT ["java", "-jar", "cassandra-application.jar"]
