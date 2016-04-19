class ContactsController < ApplicationController
	def show
		@contacts = Contact.all
		@sorted_contacts = Contact.order(name: :asc)
	end

	def new
	end

	def add
		@contact = Contact.create(
			:name => params[:contact][:name],
			:phonenumber => params[:contact][:phonenumber],
			:address => params[:contact][:address],
			:email => params[:contact][:email]
			)
		redirect_to("/")
	end
end
