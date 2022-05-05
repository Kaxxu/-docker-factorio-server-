FROM centos

WORKDIR /opt/factorio

COPY factorio/ .
COPY server-settings.json ./server-settings.json

RUN sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-Linux-* &&\
    sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-Linux-*

#RUN yum groupinstall "Development Tools" -y
RUN yum install glibc-utils -y
RUN ./bin/x64/factorio --create ./saves/factorio.tar.xz

EXPOSE 34197

ENTRYPOINT ["/bin/sh", "-l", "-c", "/opt/factorio/bin/x64/factorio --start-server /opt/factorio/saves/factorio.tar.zip --server-settings /opt/factorio/server-settings.json"]
