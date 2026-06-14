FROM eclipse-temurin:17-jre

WORKDIR /opt/Lavalink

ADD https://github.com/lavalink-devs/Lavalink/releases/latest/download/Lavalink.jar Lavalink.jar
ADD https://github.com/lavalink-devs/youtube-source/releases/latest/download/youtube-plugin.jar plugins/youtube-plugin.jar

COPY application.yml .

CMD ["java","-jar","Lavalink.jar"]
