class HintMailer < ApplicationMailer
  default from: "michael@unfoundsounds.com"
  
  def signup_confirmation(user, round, hint)
    @user = user
    @hint = hint
    @round = round
    mail to: user.email, subject: "#{hint.name}"
  end
end