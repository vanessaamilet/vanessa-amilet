class ContactsController < ApplicationController
	def new
		@page_title = 'Contact Vanessa Amilet'
    	@contact = Contact.new
    end

    def create
      @contact = Contact.new(contact_params)
      @contact.request = request
      if @contact.deliver
      	name = params[:contact][:name]
      	email = params[:contact][:email]
      	#phone = params[:contact][:phone_number]
      	body = params[:contact][:message]
      	ContactMailer.contact_email(name, email, body).deliver
      	# flash.now[:error] = nil
       	# flash.now[:notice] = 'Thank you for your message. I will contact you soon!'
       	flash[:success] = "Thank you for your message. I will contact you soon!"
     	redirect_to contact_path
      else
      	#flash.now[:error] = 'There was an error sending your message. Please try again.'
      	#render :new
      	redirect_to contact_path, notice: "There was an error sending your message. Please try again."
      end
    end
    private
	    def contact_params
	    	params.require(:contact).permit(:name, :email, :phone_number, :message, :nickname)
		end
end
