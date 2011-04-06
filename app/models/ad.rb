class Ad < ActiveRecord::Base
  attr_accessible :title, :description, :price, :location
end
