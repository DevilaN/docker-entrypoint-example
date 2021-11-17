FROM mariadb:latest
COPY ./docker/entrypoint /
# Second argument is original entrypoint in image
ENTRYPOINT ["/docker-entrypoint.sh", "docker-entrypoint.sh"]
CMD ["mysqld"]
