FROM centos
EXPOSE SED_PORT

WORKDIR /opt/factorio
COPY factorio/ .
COPY server-settings.json ./bin/x64/server-settings.json

RUN ./bin/x64/factorio --create ./bin/x64/saves/SED_NAME.zip

CMD ["./opt/factorio/bin/x64/factorio --start-server ./saves/SED_NAME.zip --server-settings ./opt/factorio/bin/x64/server-settings.json"]
