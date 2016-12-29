#!/bin/bash

curl --include --request DELETE http://localhost:4741/sign-out/1 \
  --header "Authorization: Token token=BAhJIiVjMzM0NTlhYzQzNWY4YjljOWIxYTFjYTI5YzEzMDRjYgY6BkVG--6f78d259e0abf388e9d5643bb012641f2dada8c9"





  API="http://localhost:4741"
  URL_PATH="/sign-out"
  curl "${API}${URL_PATH}/${ID}" \
    --include \
    --request DELETE \
    --header "Content-Type: application/json" \
    --header "Authorization: Token token=$TOKEN"

  echo
