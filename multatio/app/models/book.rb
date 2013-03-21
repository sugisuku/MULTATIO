class Book < ActiveRecord::Base
  extend ActiveModel::Translation
  scope :titled, ->(q) { where 'title like ?', "%#{q}%"}
  validates_numericality_of :price, :greater_than => 0
  validates :url, :format => URI::regexp(%w(http https))
  validates_presence_of :title
  validates_presence_of :severity
  validates_presence_of :reason
  validates_presence_of :country
end
