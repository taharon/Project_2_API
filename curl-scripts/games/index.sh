#!/bin/bash

curl "http://localhost:4741/games" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"

echo
