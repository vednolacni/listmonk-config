FROM listmonk/listmonk:v3.0.0

# Prepiši config
COPY config.toml /listmonk/config.toml

# Uporabi config
ENV LISTMONK_CONFIG=/listmonk/config.toml

EXPOSE 9000

# Zaženi listmonk
CMD ["./listmonk", "--config", "/listmonk/config.toml"]
