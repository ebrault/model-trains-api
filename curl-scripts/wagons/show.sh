#!/bin/bash
curl "http://localhost:4741/wagons/${ID}" \
  --include \
  --request GET \
  --header "Content-Type: application/json"

echo
