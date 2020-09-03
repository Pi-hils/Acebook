# README

This is a project where we are trying to recreate Facebook.

[Team charter](https://github.com/Pi-hils/Acebook/blob/master/Planning/Team_Charter.md)

## Database Schema

[![Image from Gyazo](https://i.gyazo.com/3dbf8a41b8eadc42aee64bd7936a427b.png)](https://gyazo.com/3dbf8a41b8eadc42aee64bd7936a427b)

The card wall can be found here: [Trello board](https://trello.com/b/Zsn5etsn/acebook-group)

## MVP

* Create a Post (CRUD) that could be seen by anyone visiting the website

## MVC for MVP

![image-of-mvc](https://raw.githubusercontent.com/Pi-hils/Acebook/master/app/assets/images/mvc.png)

## Setting up Files

Ensure you have installed

* Rails
* [Ruby](https://guides.rubygems.org/rubygems-basics/#installing-gems)
* [postgreSQL](https://www.postgresql.org/download/)
* [Node.js](https://nodejs.org/en/download/)
* [Yarn](https://classic.yarnpkg.com/en/docs/install#mac-stable)

## Setting up environment

* clone this repo
* run ```bundle install```
* run ```rails db:create```
* run ```rails db:migrate```

## Running Test

* To run the test: ```rspec```

## Starting local server

To start your web server, run `rails server` on local machine.

## Travis

* Every versions of our master branch is tested by Travis. If successful, the master branch is pushed to deployment at Heroku.

## Heroku

* We have deployed the master branch of this project to: [this address](https://acebook-uckerbergs.herokuapp.com/)

## Test coverage and code quality

* 

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
