FROM alpine as downloader

WORKDIR /download

RUN wget -O burpsuite.sh "https://portswigger.net/burp/releases/download?product=community&type=Linux"

FROM lsiobase/rdesktop-web:bionic

RUN \
	echo "**** install packages ****" && \
	apt-get update && \
	DEBIAN_FRONTEND=noninteractive \
	apt-get install --no-install-recommends -y \
		firefox \
		pavucontrol \
		terminator \
		xfce4 \
		xfce4-goodies \
		xubuntu-default-settings \
		xubuntu-icon-theme && \
	echo "**** cleanup ****" && \
	apt-get clean && \
	rm -rf \
		/tmp/* \
		/var/lib/apt/lists/* \
		/var/tmp/*

COPY response.varfile /tmp
COPY --from=downloader /download/burpsuite.sh /tmp/
RUN \
	echo "**** install burpsuite ****" && \
	cd /tmp && \
	chmod +x burpsuite.sh && \
	./burpsuite.sh -q -varfile response.varfile && \
	rm -rf /tmp/*

# add local files
COPY /root /
COPY /desktop /config/Desktop
RUN chmod +x /config/Desktop/burpsuite.sh

# ports and volumes
EXPOSE 3000
VOLUME /config