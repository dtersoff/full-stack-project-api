#!/bin/bash

curl "http://localhost:4741/servants/${ID}" \
  --include \
  --request DELETE \

echo
