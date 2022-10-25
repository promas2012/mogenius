#!/bin/sh
if [ ! -f UUID ]; then
  UUID="0c877f08-b824-447f-b9c6-9323e67064e0"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

