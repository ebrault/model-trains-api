#!/bin/bash
curl "http://localhost:4741/locomotives/${ID}" \
  --include \
  --request DELETE

echo
