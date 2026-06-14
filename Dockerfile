FROM eclipse-temurin:17-jre

WORKDIR /opt/Lavalink

RUN mkdir -p plugins

RUN apt-get update && apt-get install -y curl

RUN curl -L https://github.com/lavalink-devs/Lavalink/releases/download/4.2.2/Lavalink.jar -o Lavalink.jar

RUN curl -L https://maven.lavalink.dev/releases/dev/lavalink/youtube/youtube-plugin/1.18.0/youtube-plugin-1.18.0.jar -o plugins/youtube-plugin.jar

COPY application.yml .

CMD ["java","-jar","Lavalink.jar"]
