# README

 - [Source Part 1](https://www.microverse.org/blog/test-driven-development-of-restful-json-api-with-rails)
 - [Source Part 2](https://www.microverse.org/blog/build-a-restful-api-authentication-with-jwt)

 ### Respect @acushlakoncept for this great tutorial

![Routes](./Routes.png)

 http :3000/api/v1/register name=ash email=ash@email.com password=foobar password_confirmation=foobar
 curl -d '{"username":"oksana", "password":"123456"}' -H "Content-Type: application/json" -X POST http://localhost:3000/api/v1/register