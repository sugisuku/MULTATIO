class Book < ActiveRecord::Base
  extend ActiveModel::Translation
  scope :titled, ->(q) { where 'title like ?', "%#{q}%"}

  validates_presence_of :reason, :greater_than => 0
  validates_numericality_of :price, :greater_than => 0
  validates :url, :format => URI::regexp(%w(http https))
  validates_presence_of :severity
  validates_presence_of :title
  validates_presence_of :country
  validates_inclusion_of :done_flag, :in => [true, false]
end
