require 'sinatra'
require 'faker'

get '/' do
	@suspects = [
	{
		name: Faker::Name.name,
		address: Faker::Address.city
		}
	]
	erb :index, layout: :format 	
end

get '/about' do
	erb :about, layout: :format
end

get '/suspects' do
	@suspects = [
		{
			name: Faker::Name.name,
			address_street: Faker::Address.street_name, 
			address_city: Faker::Address.city,
			advice: Faker::Hacker.say_something_smart
		},
		{
			name: Faker::Name.name,
			address_street: Faker::Address.street_name, 
			address_city: Faker::Address.city,
			advice: Faker::Hacker.say_something_smart
		}
	]
	erb :suspects, layout: :format
end

