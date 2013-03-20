class Book < ActiveRecord::Base
  scope :titled, ->(q) { where 'title like ?', "%#{q}%"}
  validates_numericality_of :price, :greater_than => 0 
  validates :url, :format => URI::regexp(%w(http https))
end
