#!/bin/bash
curl "http://localhost:4741/wagons" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "wagon": {
      "builder": "'"${BUILDER}"'",
      "year": "'"${YEAR}"'"
    }
  }'

echo
