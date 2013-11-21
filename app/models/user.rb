class User < ActiveRecord::Base
  has_many :rfps
  has_many :offers
end
