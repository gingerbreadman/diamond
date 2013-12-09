class Merchant < ActiveRecord::Base
  has_many :offers, :dependent => :destroy


validates :business_name, :presence => true
validates :address, :presence => true
validates :city, :presence => true
validates :state, :presence => true
validates :zip_code, :presence => true, numericality: { only_integer: true }, length: { is: 5 }
validates :email, :presence => true
validates :phone_number, :presence => true

end
