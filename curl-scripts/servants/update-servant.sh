#!/bin/bash

curl "http://localhost:4741/servants/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --data '{
    "servant": {
      "level": "'"${LEVEL}"'",
      "atk": "'"${ATK}"'",
      "hp": "'"${HP}"'"
    }
  }'

echo
