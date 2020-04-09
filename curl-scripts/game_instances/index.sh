#!/bin/bash

curl "http://localhost:4741/game_instances" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"

echo
