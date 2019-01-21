#!/bin/bash
curl "http://localhost:4741/wagons" \
  --include \
  --request GET \
  --header "Content-Type: application/json"

echo
