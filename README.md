# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

- Ruby version

- System dependencies

- Configuration

- Database creation

- Database initialization

- How to run the test suite

- Services (job queues, cache servers, search engines, etc.)

- Deployment instructions

- ...

# COMMANDS

### control + D if the command is bugged

- rails db:drop db:create db:migrate
- rails g controller test
- rails g model Image description:string likes_counter:integer
- rails db:create db:migrate
- rails g controller Images
- mv app/assets/stylesheets/application.css app/assets/stylesheets/application.scss
- bundle
- rails g uploader Picture
- rails g migration add_picture_to_images picture
- rails db:migrate
- rails g devise:install
- rails g controller home index
- rails g devise:views
- rails g devise user
- rails db:migrate
- rails g migration add_user_id_to_images user:references
- rails db:migrate
