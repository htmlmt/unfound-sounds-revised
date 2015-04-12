class UserMailer < ApplicationMailer
  default from: "michael@unfoundsounds.com"
  
  def signup_confirmation(user)
      @user = user
      mail to: user.email, subject: "Welcome to Unfound Sounds"
    end
end
