class Category < ActiveRecord::Base
  attr_accessible :name, :description
  
  has_many :ads, :dependent => :destroy
end
