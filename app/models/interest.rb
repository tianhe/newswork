class Interest < ActiveRecord::Base
  attr_accessible :name
  validates :name, presence: true

  has_many :interest_links
  has_many :links, through: :interest_links

  has_many :user_interests
  has_many :users, through: :user_interests

  def links_by_date date
    links.where('links.created_at' => date..date+1.day)
  end
end