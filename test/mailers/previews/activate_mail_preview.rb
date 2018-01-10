# Preview all emails at http://localhost:3000/rails/mailers/activate_mail
class ActivateMailPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/activate_mail/sent
  def sent
    ActivateMail.sent
  end

end
