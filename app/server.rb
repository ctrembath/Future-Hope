require 'sinatra'
require 'data_mapper'

require_relative './lib/item'
require_relative 'data_mapper_setup'

set :public_dir, Proc.new { File.join(root, "..", "public") }

get '/' do 

	erb :index
end

get '/volunteer' do

	erb :volunteer
end

get '/display' do
	@items = Item.all
	erb :display
end