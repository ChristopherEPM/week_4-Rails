class ContactsController < ApplicationController
  def index
    @contacts = Contact.show_all
    render 'index'
  end
  
  def new
    render 'new' #name of view template
  end

  def show
    @contact = Contact.find(params[:id])
  end

  def create
    # Create new Contact from params[:contact]
    contact = Contact.new(
      :name => params[:contact][:name],
      :adress => params[:contact][:adress],
      :phone => params[:contact][:phone],
      :email => params[:contact][:email])

    contact.save

    redirect_to("/contacts")
  end

end
