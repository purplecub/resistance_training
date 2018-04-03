class ContactsController < ApplicationController
  
  def new
    @contact = Contact.new(contact_params)
  end
  
  def create
  end
  
  private
  def contact_params
    params.require(:contact).permit(:name, :email, :message)
  end
  
end