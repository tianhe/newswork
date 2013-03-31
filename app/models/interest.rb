class Interest < ActiveRecord::Base
  attr_accessible :name
  validates :name, presence: true

  has_many :interest_links
  has_many :links, through: :interest_links

end