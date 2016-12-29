#!/bin/bash

curl --include --request POST http://localhost:4741/sign-in \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "test@rdd.com",
      "password": "rdd"
    }
  }'




  #!/bin/bash

  API="http://localhost:4741"
  URL_PATH="/sign-in"
  EMAIL="test@rdd.com"
  PASSWORD="rdd"
  curl "${API}${URL_PATH}" \
    --include \
    --request POST \
    --header "Content-Type: application/json" \
    --data '{
      "credentials": {
        "email": "'"${EMAIL}"'",
        "password": "'"${PASSWORD}"'",
        "password_confirmation": "'"${PASSWORD}"'"
      }
    }'

  echo
