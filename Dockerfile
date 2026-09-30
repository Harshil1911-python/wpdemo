FROM wordpress:php8.2-apache

# Render provides PORT dynamically. Apache listens on 80 by default.
# The entrypoint adjusts Apache to the PORT supplied by Render.
COPY docker-entrypoint-render.sh /usr/local/bin/docker-entrypoint-render.sh
RUN chmod +x /usr/local/bin/docker-entrypoint-render.sh

ENTRYPOINT ["docker-entrypoint-render.sh"]
CMD ["apache2-foreground"]
