# The official Elasticsearch Docker image
FROM bytebase/bytebase:1.0.0

# Directory to store the data, which can be referenced as the mounting point.
RUN mkdir -p /var/opt/bytebase

ARG RENDER_EXTERNAL_URL="unknown"

COPY . /usr/local/bin/

CMD ["/usr/local/bin/start.sh", "$RENDER_EXTERNAL_URL"]

ENTRYPOINT ["sh"]