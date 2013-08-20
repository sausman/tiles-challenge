# The Tiles Challenge 

Full stack Rails code challenge for prospective Charlie team members.

## Overview

We want to test out your full-stack development abilities.  Everything from an interactive front-end through a Rails site to Sidekiq background processors and MongoDB.  We want to see a couple Rspec unit tests as well.  We've hooked you up with a fully configured development environment, ready to roll.  We've even built a shell Rails app to start you out.  Just follow the instructions below and you're ready to start coding.

## Mission Objectives

Here's what we're looking for:

* Display a 8x8 grid of clickable tiles, each of which contains a unique string (movie characters, colors, bands, etc. Have fun with it!). 
* Randomize the tiles on load
* Clicking any tile fires an AJAX request that places the click timestamp and tile value on a Sidekiq queue.
* When the user clicks on a tile, it dissapears
* When (if) the last tile is clicked, the tile board is replaced with a list of the 10 most chosen strings along with their click counts.
* Clicking on one of the tiles errors out and turns red (raise an exception on the action method) 
* A Sidekiq worker processes jobs asyncronously from the queue then persists the changes to a mongo database.


## Guidelines

* Please provide at least one rspec example. Further test coverage is at your discretion.
* Use either Slim or Haml for you view templates (SASS or SCSS for your styles).
* Either Coffeescript or Javascript are fine.
* Please use Mongoid as your storage framework.
* Don't get too caught up on performance and scalability. A clear, well-factored implementation is most important and we only want you to put a few hours into this. Just make comments in the code to indicate anything that you think could be a potential performance problem and hint at how you might handle it.


## Submission

* Deploy your app to Heroku and include a link to the instance in your Readme.md
* Send an email to tech@charliehq.com with a link to your forked repo when you're finished and we'll check it out :)


## Provided stack

For convenience we've configured this sample project with everything you need to complete the challenge:

* Rails 4
* Mongoid
* Sidekiq
* Slim
* jQuery
* Coffeescript
* Twitter Bootstrap
* RSpec

## Getting started

1. Fork this project to your own github account
2. Clone your forked repo
3. Set up your development environment (optionally, use the preconfigured Vagrant VM that we've provided— see below)
4. Start coding!


### Vagrant Virtual Development Machine

This is the fully configured development environment.  You can code with your favorite text editor and debug in your local browser.  It acts as a web server VM.

1. Install Vagrant: http://downloads.vagrantup.com
* Install VirtualBox: https://www.virtualbox.org/wiki/Downloads
* Open a command prompt in this project folder and run the following:
   ```
   vagrant up
   ```
* SSH into the vagrant VM
   ```
   vagrant ssh
   ```
* Open the code directory
   ```
   cd /vagrant
   ```
* Install your gems
   ```
   bundle install
   ```
* Run the server
   ```
   rails server
   ```
* Run the Tiles app from your local browser. That's all!
   ```
   http://localhost:3000
   ```

When you're done for the day, just run these commands from the shell. Vagrent will put your VM to bed so you can resume it later.

    $ exit
    $ vagrant suspend
