class Match < ActiveRecord::Base
  belongs_to :rfp
  belongs_to :merchant
end
