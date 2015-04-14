class User < ActiveRecord::Base
  authenticates_with_sorcery!
  
  validates_confirmation_of :password
  validates_presence_of :password, :on => :create
  validates_presence_of :email
  validates_uniqueness_of :email
  
  extend FriendlyId
  friendly_id :username, use: :slugged
  
  has_many :finds
  
  mount_uploader :photo, FinderUploader
  
  def full_name
    "#{first_name} #{last_name}"
  end
  
  def process_payment
    customer = Stripe::Customer.create email: email, source: card_token
    Stripe::Charge.create customer: customer.id,
                          amount: 200,
                          description: "Unfound Sounds",
                          currency: 'usd'

  end
end