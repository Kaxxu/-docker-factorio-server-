FROM alpine

WORKDIR /opt/factorio
COPY factorio/ .
COPY server-settings.json data/server-settings.json

RUN ./factorio --create ./saves/my-save.zip
RUN ./factorio --start-server ./saves/Factorio_server.zip

EXPOSE 34197

CMD ["./factorio --start-server ./saves/Factorio_server.zip"]