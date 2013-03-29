class Route < ActiveRecord::Base
  belongs_to :train
#  strong_parameters: name, :order, :price
  validates_numericality_of :order, :greater_than => 0
  validates_presence_of :name
  validates_presence_of :line_name
  validates_numericality_of :price, :greater_than => 0
end
