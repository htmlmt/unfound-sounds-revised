class Place < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: :slugged
  
  belongs_to :album
  has_many :features, :dependent => :destroy
  
  def full_street_address
    "#{address} #{city} #{state}"
  end
end
