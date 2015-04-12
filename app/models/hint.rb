class Hint < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: :slugged
  
  belongs_to :album
  mount_uploader :photo, HintUploader
end
