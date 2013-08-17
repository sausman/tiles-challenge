(WORK IN PROGRESS)

TODO
1. Add links
2. Write overview
3. Getting started explanation

# The Tiles Challenge 

Full stack Rails code challenge for prospective team members.

## Overview


## Mission Objectives

Here's what we're looking for:

* Display a 3x3 grid of clickable tiles, each of which should contain a unique string (movie characters, colors, bands, etc. Have fun with it!). 
* There should more possible values than there are tiles per page load (that is, more than 9) and their display should be randomized.
* Clicking any tile will fire an ajax request that places the click timestamp and tile value on a Sidekiq queue.
* Once a tile is clicked, the tile becomes disabled until the page is refreshed.
* When (if) the last tile is clicked, the tile board is replaced with a list of the 10 most chosen strings along with their click counts.
* A Sidekiq worker should process jobs asyncronously from the queue and persist them in a mongo database.


## Guidelines

* Please provide at least one rspec example. Further test coverage is at your discretion.
* Use either Slim or Haml for you view templates (SASS or SCSS for your styles).
* Either Coffeescript or Javascript are fine.
* Please use Mongoid as your storage framework.
* Don't get too caught up on performance and scalability. A clear, well-factored implementation is most important and we only want you to put a few hours into this. Just make comments in the code to indicate anything that you think could be a potential performance problem and hint at how you might handle it.

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

## Submission

Just send an email to tech@charliehq.com with a link to your repo when you're finished and we'll check it out :)