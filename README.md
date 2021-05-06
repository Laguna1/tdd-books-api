# README

 - [Source Part 1](https://www.microverse.org/blog/test-driven-development-of-restful-json-api-with-rails)
 - [Source Part 2](https://www.microverse.org/blog/build-a-restful-api-authentication-with-jwt)

 ### Respect @acushlakoncept for this great tutorial

![Routes](./Routes.png)

  - `http :3000/api/v1/register name=oksana0 password=foobar`
  - `curl -d '{"username":"oksana1", "password":"123456"}' -H "Content-Type: application/json" -X POST http://localhost:3000/api/v1/register`

 - "curl --location --request POST 'http://localhost:3000/api/v1/register' \
--data-raw '{
    "user": {
  "username": "oksana3",
  "password": "Password"
 }
}'"

curl --location --request POST 'http://localhost:3000/api/v1/login' \
--data-raw '{
   "username": "Oksana",
   "password": "111111"
}'