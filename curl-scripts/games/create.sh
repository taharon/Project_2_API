#!/bin/bash

curl "http://localhost:4741/games" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "game": {
      "name": "'"${NAME}"'",
      "score": "'"${SCORE}"'",
      "review": "'"${REVIEW}"'",
      "user_id": "'"${USERID}"'"
    }
  }'

echo
