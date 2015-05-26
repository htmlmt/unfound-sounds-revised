class User < ActiveRecord::Base
  authenticates_with_sorcery!
  
  validates_confirmation_of :password
  validates_presence_of :password, :on => :create
  validates_presence_of :username
  validates_uniqueness_of :username
  
  extend FriendlyId
  friendly_id :username, use: :slugged
  
  has_many :finds
  has_and_belongs_to_many :rounds
  
  mount_uploader :photo, FinderUploader
  
  def full_name
    "#{first_name} #{last_name}"
  end
end