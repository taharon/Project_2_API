#!/bin/bash

curl "http://localhost:4741/game_instances" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "game_instance": {
      "name": "'"${NAME}"'",
      "when": "'"${DATE}"'"
    }
  }'

echo
