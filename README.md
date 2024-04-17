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



go to api_test
run mysql.server start
rs
open postman to test the apis