# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version
2.7.4

* Rails version
6.1.3
* System dependencies
Mysql2 - 0.5

* Commands
rails new api_test --api -d mysql
rails generate scaffold Test name:string 
rails generate scaffold <modelname> name:string 
rails g migration unique_name

* Database creation
rails db:create
rails db:migrate

* type of status
:ok (200): The request has succeeded.
:created (201): The request has been fulfilled and a new resource has been created.
:no_content (204): The server successfully processed the request but is not returning any content.
:not_found (404): The requested resource could not be found.
:unprocessable_entity (422): The server understands the content type of the request entity, and the syntax of the request entity is correct, but it was unable to process the contained instructions.

go to api_test
run mysql.server start
rs
open postman to test the apis

