FROM listmonk/listmonk:v6.1.0

COPY config.toml /listmonk/config.toml
COPY start.sh /start.sh
RUN chmod +x /start.sh

EXPOSE 9000
CMD ["/start.sh"]
