require "bundler/setup" # require all the gems we'll be using for this app from the Gemfile. Obviates the need for `bundle exec`
require "pg" # postgres db library
require "active_record" # the ORM
require "byebug" # for debugging


# initialize a connection to the database
ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :database => "tunr_db"
)

require_relative "artist" # require the Artist class definition that we defined in the models/artist.rb file


# This will put us into a state of the byebug REPL, in which we've established a connection
# with the tunr_db database and have defined the Artist Class as an
# ActiveRecord::Base class.
byebug

puts "end of application"
