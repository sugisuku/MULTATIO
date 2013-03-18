class Book < ActiveRecord::Base
  attr_accessible :buydate, :country, :howto, :price, :reason, :severity, :title, :url
  scope :titled, ->(q) { where 'title like ?', "%#{q}%"}
  #validates :price, :greater_than => 0 
  #validates :url, :format => URI::regexp(%w(http https))
end
