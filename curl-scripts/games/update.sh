# Ex: TOKEN=tokengoeshere ID=idgoeshere TEXT=textgoeshere sh curl-scripts/examples/update.sh

curl "http://localhost:4741/games/${ID}" \
  --include \
  --request PATCH \
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
