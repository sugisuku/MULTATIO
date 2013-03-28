class Route < ActiveRecord::Base
  belongs_to :train
#  strong_parameters: name, :order, :price
end
