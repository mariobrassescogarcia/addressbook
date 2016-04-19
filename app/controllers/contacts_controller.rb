class ContactsController < ApplicationController
	def contacts
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


	def show
		@requested_contact_id = params[:id]
		@requested_contact = Contact.find_by(id: @requested_contact_id)
	end
end
