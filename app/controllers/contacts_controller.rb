class ContactsController < ApplicationController
 	
 	def index
		@contacts = Contact.last_created(20)
	end

	def show
		@contact = Contact.find(params[:id]) ||
			render_404(params)
	end

	def destroy
		@contact = Contact.all.destroy
	end
	
	def new
		@contact = Contact.new
	end

	def create
		@contact = Contact.new(contact_params)
		if @contact.valid?
			@contact.save

			
		end
		redirect_to '/contacts/'
	end

private


	def contact_params
		params.require(:contact).permit(:name, :address, :email, :phone_number)
	end



end
