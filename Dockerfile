# Container image that runs your code
FROM lscr.io/linuxserver/libreoffice:latest

RUN apk add --no-cache msttcorefonts-installer fontconfig wget
RUN update-ms-fonts

RUN mkdir -p "/usr/local/share/fonts/Microsoft/TrueType/Segoe UI/" && \
    wget -q https://github.com/mrbvrz/segoe-ui/raw/master/font/segoeui.ttf?raw=true -O "/usr/local/share/fonts/Microsoft/TrueType/Segoe UI/segoeui.ttf"  && \
    wget -q https://github.com/mrbvrz/segoe-ui/raw/master/font/segoeuib.ttf?raw=true -O "/usr/local/share/fonts/Microsoft/TrueType/Segoe UI/segoeuib.ttf" && \
    wget -q https://github.com/mrbvrz/segoe-ui/raw/master/font/segoeuii.ttf?raw=true -O "/usr/local/share/fonts/Microsoft/TrueType/Segoe UI/segoeuii.ttf" && \
    wget -q https://github.com/mrbvrz/segoe-ui/raw/master/font/segoeuiz.ttf?raw=true -O "/usr/local/share/fonts/Microsoft/TrueType/Segoe UI/segoeuiz.ttf" && \
    wget -q https://github.com/mrbvrz/segoe-ui/raw/master/font/segoeuil.ttf?raw=true -O "/usr/local/share/fonts/Microsoft/TrueType/Segoe UI/segoeuil.ttf" && \
    wget -q https://github.com/mrbvrz/segoe-ui/raw/master/font/seguili.ttf?raw=true -O "/usr/local/share/fonts/Microsoft/TrueType/Segoe UI/seguili.ttf" && \
    wget -q https://github.com/mrbvrz/segoe-ui/raw/master/font/segoeuisl.ttf?raw=true -O "/usr/local/share/fonts/Microsoft/TrueType/Segoe UI/segoeuisl.ttf" && \
    wget -q https://github.com/mrbvrz/segoe-ui/raw/master/font/seguisli.ttf?raw=true -O "/usr/local/share/fonts/Microsoft/TrueType/Segoe UI/seguisli.ttf" && \
    wget -q https://github.com/mrbvrz/segoe-ui/raw/master/font/seguisb.ttf?raw=true -O "/usr/local/share/fonts/Microsoft/TrueType/Segoe UI/seguisb.ttf" && \
    wget -q https://github.com/mrbvrz/segoe-ui/raw/master/font/seguisbi.ttf?raw=true -O "/usr/local/share/fonts/Microsoft/TrueType/Segoe UI/seguisbi.ttf" && \
    fc-cache -f "/usr/local/share/fonts/Microsoft/TrueType/Segoe UI"

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh
# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]