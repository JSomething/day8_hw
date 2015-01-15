require 'sinatra'
require 'faker'
require 'shotgun'


get '/' do
	erb :index, layout: :format
end

get '/history' do
	erb :history, layout: :sub
end

get '/gallery' do
	erb :gallery, layout: :sub
end

get '/dealers' do
	erb :dealers, layout: :sub
end

# get '/dealers' do
# 	@dealerlist = [
# 	{
# 		name: Faker::Name.name,
# 		city: Faker::Address.city,
# 		state: Faker::Address.state,
# 		company: Faker::Company.name,
# 		compsuffix: Faker::Company.suffix,
# 		phone: Faker::PhoneNumber.cell_phone
# 	},
# 	{
# 		name: Faker::Name.name,
# 		city: Faker::Address.city,
# 		state: Faker::Address.state,
# 		company: Faker::Company.name,
# 		compsuffix: Faker::Company.suffix,
# 		phone: Faker::PhoneNumber.cell_phone
# 	},
# 	{
# 		name: Faker::Name.name,
# 		city: Faker::Address.city,
# 		state: Faker::Address.state,
# 		company: Faker::Company.name,
# 		compsuffix: Faker::Company.suffix,
# 		phone: Faker::PhoneNumber.cell_phone
# 	}
#  ]
# 	erb :dealers, layout: :sub
# end

get '/testimonials' do
	erb :testimonials, layout: :sub
end

get '/suspects' do
 @suspects = [
 	{
 		name: Faker::Name.name,
 		address_street: Faker::Address.street_name, 
 		address_city: Faker::Address.city,
 		advice: Faker::Hacker.say_something_smart,
 		phone: Faker::PhoneNumber.cell_phone
 	},
 	{
 		name: Faker::Name.name,
 		address_street: Faker::Address.street_name, 
 		address_city: Faker::Address.city,
 		advice: Faker::Hacker.say_something_smart,
 		phone: Faker::PhoneNumber.cell_phone
 	}
 ]
 erb :suspects, layout: :sub
end