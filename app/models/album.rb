class Album < ActiveRecord::Base
  extend FriendlyId
  friendly_id :title, use: :slugged
  
  belongs_to :round
  has_one :find, :foreign_key => :album_id
  
  has_many :places, :dependent => :destroy
  has_many :hints, :dependent => :destroy
  
  accepts_nested_attributes_for :find
  accepts_nested_attributes_for :places, allow_destroy: true
  accepts_nested_attributes_for :hints, allow_destroy: true
  
  mount_uploader :cover, CoverUploader
end
