require "sinatra"
require "sinatra/reloader" if development?
require "pry-byebug"
require "better_errors"
require "cloudinary"
set :bind, '0.0.0.0'
configure :development do
  use BetterErrors::Middleware
  BetterErrors.application_root = File.expand_path('..', __FILE__)
end

get '/' do
  erb :index
end
