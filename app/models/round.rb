class Round < ActiveRecord::Base
  has_many :albums, :dependent => :destroy
  
  accepts_nested_attributes_for :albums, allow_destroy: true
end
