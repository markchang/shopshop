class Ad < ActiveRecord::Base
  attr_accessible :title, :description, :price, :location, :category_id
  belongs_to :category
  
  validates_presence_of :title, :description, :price, :location
  validates_numericality_of :price, :only_integer => true, :greater_than => 0
end
