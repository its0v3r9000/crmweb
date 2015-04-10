require_relative 'contact'
require_relative 'rolodex'
require 'haml'
require 'rubygems'
require 'sinatra/base'

$rolodex= Rolodex.new


class CrmApp < Sinatra::Base

	get '/' do
		# @crm_app_name = "My CRM"
		# erb :index
		haml :index
	end

	get "/contacts" do

		haml :contacts
	end

	get '/newcontacts' do
		haml :newcontacts
	end

	get '/about' do
		haml :about
	end


	post '/contacts' do
		new_contact = Contact.new(params[:first_name], params[:last_name], params[:email], params[:note])
		$rolodex.add_contact(new_contact)
		redirect to('/')
	end

end

CrmApp.run!
