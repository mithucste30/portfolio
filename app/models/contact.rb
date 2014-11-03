class Contact < ActiveRecord::Base
  
  attr_accessible :name, :email, :phone_number, :message
  validates :name, :email, :phone_number, :message, :presence => true
end
