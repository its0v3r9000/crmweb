require_relative 'contact'
require_relative 'rolodex'
require 'sinatra'

$rolodex= Rolodex.new






#-------Routes----------
get 'contacts/new' do
	erb "new_contact"
end

get '/' do
	@crm_app_name = "My CRM"
	erb :index
end

get "/contacts" do

	erb :contacts
end
