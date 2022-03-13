#!/bin/sh

# we use this script to start our service (publish version) render

HOST='https://localhost'
PORT='80'

echo "Starting Bytebase in at ${HOST}:${PORT}..."

bytebase --host ${HOST} --port ${PORT} --data /var/opt/bytebase
