#!/bin/bash
curl "http://localhost:4741/locomotives" \
  --include \
  --request GET \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}"

echo
