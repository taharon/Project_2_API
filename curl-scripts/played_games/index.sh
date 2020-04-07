#!/bin/bash

curl "http://localhost:4741/played_games" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"

echo
