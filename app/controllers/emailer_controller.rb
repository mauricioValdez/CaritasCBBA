class EmailerController < ApplicationController
 def sendmail
    email = params["email"]
	  recipient = email["recipient"]
	  subject = email["subject"]
	  message = email["message"]
      Emailer.deliver_contact(recipient, subject, message)
      return if request.xhr?
      contact
 end
 def contact
   render :text => 'Mensaje Enviado Con Exito!'
 end
 def index
 end
 def contact_us
 end
 def sendmailContactUs
    email = params["email"]
	  emailContact = email["emailContact"]
	  nameContact = email["nameContact"]
	  message = email["message"]
      Emailer.deliver_email_contact_us(emailContact, nameContact, "Alguien quiere contactarse con Caritas", message)
      return if request.xhr?

 end

end
