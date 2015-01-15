require 'sinatra'
require 'faker'
require 'shotgun'


get '/' do
	erb :index, layout: :format
end

get '/history' do
	erb :history, layout: :format
end

get '/dealers' do
	erb :history, layout: :format
end

get '/history' do
	erb :index, layout: :format
end


# get '/form' do
# 	erb :form, layout: :format
# end

# post '/form' do
#   "Your input was '#{params[:message]}'"
# end