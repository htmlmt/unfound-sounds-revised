class Round < ActiveRecord::Base
  has_many :albums, :dependent => :destroy
  has_and_belongs_to_many :users
  
  accepts_nested_attributes_for :albums, allow_destroy: true
  accepts_nested_attributes_for :users
end
