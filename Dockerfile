FROM openjdk:17-alpine

# Establecer el directorio de trabajo en la carpeta del proyecto
WORKDIR /configserver
# Copiar el código fuente de Accounts al contenedor
COPY  ./target/configserver-0.0.1-SNAPSHOT.jar .

# Comando para ejecutar Accounts cuando se inicie el contenedor
ENTRYPOINT ["java", "-jar", "configserver-0.0.1-SNAPSHOT.jar"]