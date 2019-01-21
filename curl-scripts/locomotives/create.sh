#!/bin/bash
curl "http://localhost:4741/locomotives" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "locomotive": {
      "builder": "'"${BUILDER}"'",
      "year": "'"${YEAR}"'"
    }
  }'

echo
