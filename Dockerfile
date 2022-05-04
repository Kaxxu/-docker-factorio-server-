FROM centos

WORKDIR /opt/factorio

COPY factorio/ .
COPY server-settings.json ./server-settings.json

RUN ./bin/x64/factorio --create ./saves/factorio.tar.xz

EXPOSE 34197

ENTRYPOINT ["/bin/bash", "-l", "-c", "/opt/factorio/bin/x64/factorio --start-server /opt/factorio/saves/factorio.tar.zip --server-settings /opt/factorio/server-settings.json"]
