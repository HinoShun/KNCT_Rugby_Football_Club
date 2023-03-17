class ContactMailer < ApplicationMailer

  def contact_email(contact)
    @contact = contact
    mail to: contact.email, bcc: ENV["ACTION_MAILER_USER"], subject: "メール送信内容について【自動送信】"
  end

  
end
