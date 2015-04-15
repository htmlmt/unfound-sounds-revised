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
  
  def process_payment
    customer = Stripe::Customer.create email: email, source: card_token
    Stripe::Charge.create customer: customer.id,
                          amount: 99,
                          description: "Unfound Sounds",
                          currency: 'usd'

  end
end