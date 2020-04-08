# Ex: TOKEN=tokengoeshere ID=idgoeshere sh curl-scripts/examples/show.sh

curl "http://localhost:4741/played_games/player" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"

echo
