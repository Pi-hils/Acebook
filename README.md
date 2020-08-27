# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version
`ruby 2.6.5p114 (2019-10-01 revision 67812)`

* System dependencies

* Configuration

* Database creation

* Database initialization

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
## Database Schema
[![Image from Gyazo](https://i.gyazo.com/3dbf8a41b8eadc42aee64bd7936a427b.png)](https://gyazo.com/3dbf8a41b8eadc42aee64bd7936a427b)

The card wall can be found here: [Trello board](https://trello.com/b/Zsn5etsn/acebook-group)

## MVP
1. Create a Post (CRUD)
2. View Post

## Setting up Files
Ensure you have installed
- Rails `gem install rails`
- [Ruby](https://guides.rubygems.org/rubygems-basics/#installing-gems)
- [sqlite3](https://www.sqlite.org/download.html)
- [Node.js](https://nodejs.org/en/download/)
- [Yarn](https://classic.yarnpkg.com/en/docs/install#mac-stable)


## Rails initial files
Run `rails new [directory]` <br>
_This should install all the dependencies needed for starting a rails project_

## Running Test
- Everything at once `bundle exec rspec`.
- One Rspec package `bundle exec rspec ./spec/models`.
One RSpec file at a time: `bundle exec rspec ./spec/models/story_spec`.rb.
-One by one: `bundle exec rspec ./spec/models/story_spec.rb:10`
This runs only tests on line 10 in the Story model.

## Running Test
To start your web server, run `rails server` on local machine.

## User Stories
```
As a new Acebooker,
So that I can use the platform,
I would like to be able to sign up when it is my first time.

As a new Acebooker,
So I don't need to keeping signing in,
I would like my device to be able to remember that I am already a user once I have signed up

As a new Acebooker,
So I can ensure there was no errors whilst typing out my password for the first time,
I would like to confirm my password again to be certain.

As a new Acebooker,
So I have a strong password and not be at risk of being hacked,
I would like an error message to show if my password is weak.

As a new Acebooker,
So I can provide an accurate email,
I would like an error message to show if I give the incorrect format/email

As an exisiting Acebooker,
I would like to be directed to my posts page
Once I am logged in

As an Acebooker,
So that I can see when my friends are up to date,
I would like to see posts

As an Acebooker,
So that my friends can see what I am up to,
I would like them to see my posts

As an Acebooker,
I want posts to be have text and a created date
So I can see when they were made

As an Acebooker,
I want to edit a post,
To change the content

As an Acebooker,
So I nwant to destroy a post,
To remove it from the database

As an Acebooker,
I want easy navigation tools,
So I can get around the website

As an Acebooker,
So it is easy navigation,
I would love a smooth feel and quick navigation
```
