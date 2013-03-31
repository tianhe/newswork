class Link < ActiveRecord::Base
  attr_accessible :description, :keywords, :sourced_from, :summary_text, :summary_title, :title, :url
  validates :url, uniqueness: true, presence: true
  validate :sourced_from_is_acceptable

	has_many :interest_links
  has_many :interests, through: :interest_links

  def sourced_from_is_acceptable
    NewsSourceManager.valid_source(sourced_from)
  end

end
