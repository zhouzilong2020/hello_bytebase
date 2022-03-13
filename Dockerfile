# The official Elasticsearch Docker image
FROM bytebase/bytebase:1.0.0

# Copy our config file over
COPY ./start.sh /usr/local/bin/

# Directory to store the data, which can be referenced as the mounting point.
RUN mkdir -p /var/opt/bytebase

CMD sh /user/local/bin/start.sh