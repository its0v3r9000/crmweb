require_relative 'contact'
require_relative 'rolodex'
require 'sinatra'


get '/' do
	@crm_app_name = "My CRM"
	erb :index
end

get "/contacts" do
	@contacts = []
	@contacts << Contact.new("1", "2", "12email", "notes")
	@contacts << Contact.new("2", "3", "23email", "notes")
	@contacts << Contact.new("3", "4", "34email", "notes")

	erb :contacts
end
