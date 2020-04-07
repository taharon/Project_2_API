#!/bin/bash

curl "http://localhost:4741/games_instances" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"

echo
