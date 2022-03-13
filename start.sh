HOST=`echo $1 | awk -F ':' '{ print $1 }'`

bytebase --host ${HOST} --port 8000 --data /var/opt/bytebase