# Ex: TOKEN=tokengoeshere ID=idgoeshere TEXT=textgoeshere sh curl-scripts/examples/update.sh

curl "http://localhost:4741/game_instances/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "game_instance": {
      "name": "'"${NAME}"'",
      "when": "'"${DATE}"'"
    }
  }'

  echo
