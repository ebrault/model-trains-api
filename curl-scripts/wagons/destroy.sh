#!/bin/bash
curl "http://localhost:4741/wagons/${ID}" \
  --include \
  --request DELETE

echo
