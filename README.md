# README

 - [Source Part 1](https://www.microverse.org/blog/test-driven-development-of-restful-json-api-with-rails)
 - [Source Part 2](https://www.microverse.org/blog/build-a-restful-api-authentication-with-jwt)
 
 ### Respect @acushlakoncept for this great tutorial


  users_authentication    GET    /users/authentication(.:format)                                      users#authentication
  api_v1_categories       GET    /api/v1/categories(.:format)                                   
  api/v1/categories#index POST   /api/v1/categories(.:format)                                         api/v1/categories#create
  api_v1_category         DELETE /api/v1/categories/:id(.:format)                                     api/v1/categories#destroy
  api_v1_books            GET    /api/v1/books(.:format)                                              api/v1/books#index      
                          POST   /api/v1/books(.:format)                                              api/v1/books#create
  api_v1_book             GET    /api/v1/books/:id(.:format)                                          api/v1/books#show      
                          PATCH  /api/v1/books/:id(.:format)                                          api/v1/books#update
                          PUT    /api/v1/books/:id(.:format)                                          api/v1/books#update
                          DELETE /api/v1/books/:id(.:format)                                          api/v1/books#destroy
 api_v1_login             POST   /api/v1/login(.:format) 
 api_v1_register          POST   /api/v1/register(.:format)                                           api/v1/users#create

 http :3000/api/v1/register name=ash email=ash@email.com password=foobar password_confirmation=foobar
 curl -d '{"username":"oksana", "password":"123456"}' -H "Content-Type: application/json" -X POST http://localhost:3000/api/v1/register