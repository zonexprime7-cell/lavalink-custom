FROM eclipse-temurin:17-jre

WORKDIR /opt/Lavalink

RUN mkdir -p plugins

RUN apt-get update && apt-get install -y curl

RUN curl -L https://github.com/lavalink-devs/Lavalink/releases/latest/download/Lavalink.jar -o Lavalink.jar

RUN curl -L https://github.com/lavalink-devs/youtube-source/releases/latest/download/youtube-plugin.jar -o plugins/youtube-plugin.jar

COPY application.yml .

CMD ["java","-jar","Lavalink.jar"]
