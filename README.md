== Welcome to the Announcements App

The Announcements application is built on:

* Ruby 2.6.2
* Rails 6.0.3.rc1
* postgresql 10.0 or higher
* Hosted by Heroku
* Continuous Integration service by CircleCI

== New Development Machine Install

1. Install the latest version of RVM: https://rvm.io
2. Install Ruby from terminal using RVM: `$ rvm install 2.6.2`
3. Install posgtresql from terminal: `$ brew install postgresql` and follow on screen instructions (very important)
4. Create postgresql superuser postgres: `$ createuser postgres -s`
5. Go into the directory '$ cd announcements'. Confirm that when you run `$ rvm gemset list` it lists "announcements" as your gemset.
6. Run `$ gem install bundler`
7. Run the commmand to bundle: `$ bundle install`
8. Should be ready to roll: `$ rails s`

