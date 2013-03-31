class InterestLink < ActiveRecord::Base
  attr_accessible :interest_id, :link_id
  belongs_to :interest
  belongs_to :link
end
