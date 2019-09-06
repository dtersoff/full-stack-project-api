#!/bin/bash

curl "http://localhost:4741/servants" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "servant": {
      "name": "'"${NAME}"'",
      "sclass": "'"${SCLASS}"'",
      "rarity": "'"${RARITY}"'",
      "level": "'"${LEVEL}"'",
      "atk": "'"${ATK}"'",
      "hp": "'"${HP}"'"
    }
  }'
# :id, :name, :s-class, :rarity, :level, :atk, :hp
echo

# --header "Authorization: Token token=${TOKEN}" \
