require 'rubygems'
require 'bundler'

Bundler.require

require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/json'
require 'active_record'
require 'httparty'
require './models/student'
require './models/assignment'
require './endpoints'
require './merge_and_log'

# development
# ActiveRecord::Base.establish_connection({
# 	adapter: 'postgresql',
# 	database: 'student_tracker_app',
# 	host: 'localhost'
# })
# require 'pry'

ActiveRecord::Base.establish_connection(ENV['DATABASE_URL'] || 'postgres://localhost/student_tracker_app')

after { ActiveRecord::Base.connection.close}

run StudentTracker::App
