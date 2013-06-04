class Contact < ActiveRecord::Base
  attr_accessible :address, :emails, :fax, :phone
end
