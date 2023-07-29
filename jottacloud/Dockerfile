FROM ghcr.io/hassio-addons/debian-base:6.2.0

ENV STARTUP_TIMEOUT=15 \
	JOTTAD_SYSTEMD=0 \
  HOME="/app"

RUN apt-get update -y &&\
	apt-get upgrade -y &&\
	apt-get -y install wget gnupg apt-transport-https ca-certificates expect systemctl &&\
	wget -O - https://repo.jotta.us/public.gpg | apt-key add - &&\
	echo "deb https://repo.jotta.us/debian debian main" | tee /etc/apt/sources.list.d/jotta-cli.list &&\
	apt-get update -y &&\
	apt-get install jotta-cli psmisc -y &&\
	apt-get autoremove -y --purge &&\
	apt-get clean &&\
	rm -rf /var/lib/lists/*


WORKDIR /app

COPY ./rootfs/ /

EXPOSE 8080
