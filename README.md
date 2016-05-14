README
======

Setup
-----

1. Make sure you have postgresql installed and running (e.g. `brew install postgresql`)
1. Install [rvm](https://rvm.io/rvm/install)
1. Install ruby: `rvm install 2.3.0`
1. Clone this repository and `cd formedapp-rails`
1. Tell rvm which ruby and gemset to use: `echo "2.3.0" > .ruby-version && echo "formedapp-rails" > .ruby-gemset`
1. Install bundler `gem install bundler`
1. Install gem dependencies `bundle install`
1. Create and migrate the database `rake db:create db:migrate`

Running
-------

1. Run the rails server `rails server` (or `rails s` for short)
1. Go to `http://localhost:3000`

Testing
-------

1. Run tests: `rspec`

