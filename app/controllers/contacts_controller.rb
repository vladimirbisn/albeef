class ContactsController < ApplicationController
  def index
    @contact = Contact.last
    #@emails_list = ContactsHelper.split_emails(@contact.emails)
  end
end
