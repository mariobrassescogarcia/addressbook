class ContactsController < ApplicationController
	def contacts
		@contacts = Contact.all
		@sorted_contacts = Contact.order(name: :asc)
	end

	def new
	end

	def add
		@new_contact_name = params[:contact][:name]
		@new_contact_phonenumber = params[:contact][:phonenumber]
		@new_contact_address = params[:contact][:address]
		@new_contact_email = params[:contact][:email]

		if @new_contact_name.match(/[[:word:]]/) && @new_contact_phonenumber.match(/[[:digit:]]/) && @new_contact_address.match(/[[:alpha:]]/) && @new_contact_email.match(/([a-z\d_-]+)@([a-z\d_-]+)\.[a-z]{2,4}/)
			@contact = Contact.create(
				:name => @new_contact_name,
				:phonenumber => @new_contact_phonenumber,
				:address => @new_contact_address,
				:email => @new_contact_email
				)
			redirect_to("/")

		else
			redirect_to("/fail")
		end
	end


	def show
		@requested_contact_id = params[:id]
		@requested_contact = Contact.find_by(id: @requested_contact_id)
	end

	def fail
	end


end
