require 'sinatra'

get '/' do
	@message = 'Fire drill in the LS schools'
	@i = 1
	erb :index
end

get '/hello/:name' do
	if params[:name] == "fen"
		x = params[:name]
		x += " gay"
	else
		x = params[:name]
	end
	@name = x
	@gender = params[:gender]
	@age = params[:age]
	erb :hello
end

get '/search' do
	erb :search_form
end

post '/results' do
	@term = params[:term]
	erb :results
end

get '/animal' do
	erb :animal_form
end	
post '/animal' do
	@animal = Animal.new params[:dog]
	erb :animal
end
