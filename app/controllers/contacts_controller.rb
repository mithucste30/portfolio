class ContactsController < ApplicationController
  def create
    @contact = Contact.new(contact_params)    
    if @contact.save
      @success = true
      @msg = "Your message sent!"
    else
      @success = true
      @msg = "An error occured, please try later."
    end
  end
  
  private
  def contact_params
    params.require(:contact).permit(:name, :email, :phone_number, :message)
  end
end
