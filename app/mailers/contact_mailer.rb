class ContactMailer < ApplicationMailer
  default to: "ninevillage@gmail.com"
  
  def contact_mail(sender)
      @sender = sender
      mail(from: @sender[:email], subject: 'Contact Request')
  end
end
