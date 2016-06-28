class UserMailer < ApplicationMailer
   default from: "bill@thetraderspeaks.com"

   def contact_email(contact)
     @contact = contact
     mail(to: Rails.application.secrets.owner_email,
          from: @contact.email,
          :subject => "Website email")
  end
end
