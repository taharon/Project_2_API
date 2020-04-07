# Ex: TOKEN=tokengoeshere ID=idgoeshere TEXT=textgoeshere sh curl-scripts/examples/update.sh

curl "http://localhost:4741/played_games/${ID}" \
  --include \
  --request PATCH \
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
