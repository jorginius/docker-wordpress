FROM wordpress:5.7.2-php7.4 
RUN apt-get update && \
	apt-get install -y --no-install-recommends libmcrypt-dev && \
	docker-php-ext-install mcrypt && \
	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; \
	rm -rf /var/lib/apt/lists/*
