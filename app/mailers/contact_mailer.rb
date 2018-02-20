class ContactMailer < ActionMailer::Base
  default to: 'vanessa.amilet@gmail.com'
  def contact_email(name, email, phone, body)
    @name = name
    @email = email
    @phone = phone_number
    @body = body
    mail(from: email, subject: 'Contact Form Message')
  end
end