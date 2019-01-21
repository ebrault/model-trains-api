#!/bin/bash
curl "http://localhost:4741/locomotives/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "locomotive": {
      "builder": "'"${BUILDER}"'",
      "year": "'"${YEAR}"'"
    }
  }'

echo
