#!/bin/bash

curl "http://localhost:4741/played_games" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "played_game": {
      "game_instance_id": "'"${GID}"'",
      "score": "'"${SCORE}"'",
      "user_id": "'"${UID}"'"
    }
  }'

echo
