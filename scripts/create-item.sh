curl --include --request POST http://localhost:4741/items \
  --header "Authorization: Token token=BAhJIiVhNzY3YTI0ZGZjOTI1MGU5YTBhMjNkZGIyYjM5ZmRmNQY6BkVG--bb98f468008a3350f3d7ec524551a04721a865f1" \
  --header "Content-Type: application/json" \
  --data '{
    "item": {
      "name": "Cool Software",
      "price": "$10.00",
      "description": "Really cool thing",
      "category": "software",
      "url": "http://software.com"
    }
  }'





  API="http://localhost:4741"
  URL_PATH="/items"
  curl "${API}${URL_PATH}" \
    --include \
    --request POST \
    --header "Content-Type: application/json" \
    --header "Authorization: Token token=$TOKEN" \
    --data '{
      "example": {
        "text": "'"${TEXT}"'"
      }
    }'

  echo

  API="http://localhost:4741"
  URL_PATH="/items"
  NAME="Brand new item"
  DESCRIPTION="Neat description"
  PRICE="55.00"
  CATEGORY="New category"
  URL="http://new.com"
  TOKEN="BAhJIiU4ZDdlMjEwNDk2MDNjNjk4ZjE5YmViMzEwNTIwNDVmNwY6BkVG--2e2d475f293b34d2cb25909848c10d5f5f73a28e"

  curl "${API}${URL_PATH}" \
    --include \
    --request POST \
    --header "Content-Type: application/json" \
    --header "Authorization: Token token=$TOKEN" \
    --data '{
      "item": {
        "name": "Cool Software",
        "price": "$10.00",
        "description": "Really cool thing",
        "category": "software",
        "url": "http://software.com"
      }
    }'

  echo



  curl --include --request POST http://localhost:4741/items/ \
  --header "Authorization: Token token=BAhJIiUxZDM2ZGM3ZGIyNDhiMDYxNjMxZjhiYTUxMjA3MjYzNwY6BkVG--8b433213a4c7f6857b9f5d1669ab869fa72a001c" \
  --header "Content-Type: application/json" \
  --data '{
    "item": {
      "name": "Software delete",
      "price": "$10.00",
      "description": "Really cool thing",
      "category": "software",
      "url": "http://software.com"
    }
  }'
