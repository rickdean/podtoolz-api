#!/bin/bash

curl --include --request PATCH http://localhost:4741/change-password/1 \
  --header "Authorization: Token token=BAhJIiUwYzcwNWYxNzQzNTM5ZDBhY2I2NTM4ODZiODQ4Y2NiZgY6BkVG--86acbb2a40a35ca69a1dc717ea230c71c390f51a" \
  --header "Content-Type: application/json" \
  --data '{
    "passwords": {
      "old": "test",
      "new": "rdd"
    }
  }'




  API="http://localhost:4741"
  URL_PATH="/change-password"
  curl "${API}${URL_PATH}/${ID}" \
    --include \
    --request PATCH \
    --header "Authorization: Token token=${TOKEN}" \
    --header "Content-Type: application/json" \
    --data '{
      "passwords": {
        "old": "'"${OLDPW}"'",
        "new": "'"${NEWPW}"'"
      }
    }'

  echo
