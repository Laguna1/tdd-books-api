# README

 - [Source Part 1](https://www.microverse.org/blog/test-driven-development-of-restful-json-api-with-rails)
 - [Source Part 2](https://www.microverse.org/blog/build-a-restful-api-authentication-with-jwt)

 ### Respect @acushlakoncept for this great tutorial

![Routes](./Routes.png)

 #### POSTMAN:

 * 
 - POST `localhost:3000/api/v1/register` user#create
 - BODY raw:
 { 
    "user": {
  "username": "Meizu",
  "password": "987654321"
 }
}
- result  `{
    "id": 3,
    "username": "Meizu",
    "token": "eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjozLCJleHAiOjE2MjA0MjUyMDh9.5AcdiwBGI5euHcQ1PZn8ryYJIUE5IttTjroVEz0k8b8"
}`

 * 
 - POST `localhost:3000/api/v1/login` user#login
 - Authorization: Bearer Token
   Token: "token"
 - BODY raw:
  {
  "username": "Meizu",
  "password": "987654321"
 }

 - result {
    "id": 3,
    "username": "Meizu",
    "token": "eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjozLCJleHAiOjE2MjA0MjYxNzd9.PbdvvkQ1ReiwEeaR0OHPWb5vBte868OFbRLq11HsdEI"
}

* 
- POST `localhost:3000/api/v1/categories` category#create
- Authorization: Bearer Token
   Token: "token"
 - BODY raw:
  {
  "name": "Etical Hacking"
}

 - result {
    "id": 1,
    "name": "Etical Hacking"
}

* 
- GET `localhost:3000/api/v1/categories` categories#index
- Authorization: Bearer Token
   Token: "token"
- result [
    {
        "id": 1,
        "name": "Etical Hacking"
    },
    {
        "id": 2,
        "name": "Etical Hacking"
    }
]

* 
- DELETE `localhost:3000/api/v1/categories/2`  categories#destroy
- Authorization: Bearer Token
   Token: "token"
- result `Status 204 No Content`

* 
- POST `localhost:3000/api/v1/books` book#create
- Params username: Meizu password: 987654321
- Authorization: Bearer Token
   Token: "token"
 - BODY raw:
  {
  "title": "Strange things",
  "author": "JK Rassel",
  "user_id": "3",
  "category_id": "1"
 }
 - result 
 {
    "id": 1,
    "title": "Strange things",
    "author": "JK Rassel",
    "category": "Etical Hacking",
    "date_added": "2021-05-06T22:55:08.978Z"
}

* 
- GET `localhost:3000/api/v1/books/1` books#show
- Params username: Meizu password: 987654321
- Authorization: Bearer Token
   Token: "token"
- result 
{
    "id": 1,
    "title": "Strange things",
    "author": "JK Rassel",
    "category": "Etical Hacking",
    "date_added": "2021-05-06T22:55:08.978Z"
}

* 
- GET `localhost:3000/api/v1/books` books#index
- Params username: Meizu password: 987654321
- Authorization: Bearer Token
   Token: "token"
- result [
    {
        "id": 1,
        "title": "Strange things",
        "author": "JK Rassel",
        "category": "Etical Hacking",
        "date_added": "2021-05-06T22:55:08.978Z"
    },
    {
        "id": 2,
        "title": "Second Book",
        "author": "OPetrova",
        "category": "Etical Hacking",
        "date_added": "2021-05-06T23:09:12.972Z"
    },
    {
        "id": 11,
        "title": "Nineth Book",
        "author": "OPetrova",
        "category": "Etical Hacking",
        "date_added": "2021-05-06T23:48:41.827Z"
    }
]

* 
- DELETE `localhost:3000/api/v1/books/:book_id` books#destroy
- Params username: Meizu password: 987654321
- Authorization: Bearer Token
   Token: "token"
- result `Status 204 No Content`

* 
- PATCH`localhost:3000/api/v1/books/11` books#update
- Params username: Meizu password: 987654321
- Authorization: Bearer Token
   Token: "token"
- result {
        "id": 11,
        "title": "Last Book about API",
        "author": "OPetrova",
        "category": "Etical Hacking",
        "date_added": "2021-05-06T23:48:41.827Z"
    }

