# README

[![Codeship Status for dc-anthony/goob](https://app.codeship.com/projects/9a2334d0-549c-0137-b27b-7e24982fb53d/status?branch=master)](https://app.codeship.com/projects/341136)

Goob is a Discord bot that will grab incoming messages to your server and broadcast them on an associated webpage, allowing guests to see the content of a server without joining it.

Currently, only a test server is viewable on: http://goobbot.herokuapp.com/

## To Get Your Own Test Server Running With Goob:
* Create a new bot using the Discord Developer Portal: https://discordapp.com/developers/applications/

* Use the created bot's token and put it in our goob.rb file, in the designated spot on line 8

* Initialize the database by running `rails db:create` and `rails db:migrate` in your terminal

* Run `rails s` in your terminal to wake Goob up

* Navigate to `localhost:3000` to see the bot's server's chat update


## Goob's Config
* Ruby Version 2.6.2

* Run the test suite with `rspec`
