class CheckMailer < ApplicationMailer
  default from: "michael@unfoundsounds.com"
  
  def check(place, album, email)
    @album = album
    @place = place
    @email = email
    mail to: "michael@unfoundsounds.com", subject: "Correct: #{@album} at #{@place}"
  end
end