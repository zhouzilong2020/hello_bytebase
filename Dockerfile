# The official Elasticsearch Docker image
FROM bytebase/bytebase:1.0.0

# Directory to store the data, which can be referenced as the mounting point.
RUN mkdir -p /var/opt/bytebase

ARG RENDER_EXTERNAL_URL

ENV RENDER_EXTERNAL_URL=$RENDER_EXTERNAL_URL

CMD ["--host", "$RENDER_EXTERNAL_URL", "--port", "8000", "--data", "/var/opt/bytebase"]

ENTRYPOINT ["bytebase"]