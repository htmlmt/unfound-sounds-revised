# Preview all emails at http://localhost:3000/rails/mailers/reset_mailer
class ResetMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/reset_mailer/reset_password_email
  def reset_password_email
    ResetMailer.reset_password_email
  end

end
