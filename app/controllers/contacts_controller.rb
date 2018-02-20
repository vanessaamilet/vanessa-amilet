class ContactsController < ApplicationController
    def new
      @contact = Contact.new
    end

    def create
      @contact = Contact.new(contact_params)
      @contact.request = request
      if @contact.deliver
      	flash.now[:error] = nil
        flash.now[:notice] = 'Thank you for your message. We will contact you soon!'
      else
        flash.now[:error] = 'There was an error sending your message. Please try again.'
        render :new
      end
    end

    def contact_params
    	params.require(:contact).permit(:name, :email, :phone_number, :message, :nickname)
	end
end
