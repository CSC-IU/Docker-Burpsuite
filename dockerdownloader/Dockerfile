FROM alpine

RUN apk add --no-cache curl

ENV DOCKERVERSION=19.03.9
RUN curl -o docker.tgz https://download.docker.com/linux/static/stable/x86_64/docker-19.03.9.tgz \
	&& tar xzvf docker.tgz --strip 1 \
		-C /usr/local/bin docker/docker \
	&& rm docker.tgz

COPY entry.sh /

ENTRYPOINT [ "/entry.sh" ]