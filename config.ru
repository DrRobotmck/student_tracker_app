require 'rubygems'
require 'bundler'

Bundler.require

require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/json'
require 'activerecord'
require 'pry'
require './endpoints.rb'
require './Rakefile'

# development
ActiveRecord::Base.establish_connection({
	adapter: 'postgresql',
	database: 'student_tracker_app',
	host: 'localhost'
})

# ActiveRecord::Base.establish_connection(ENV['DATABASE_URL'] || 'postgres://localhost/mydb')

after { ActiveRecord::Base.connection.close}

run StudentTracker::App