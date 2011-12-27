class Emailer < ActionMailer::Base
  def contact(recipient, subject, message, sent_at = Time.now)
      @subject = subject
      @recipients = recipient
      @from = 'no-reply@caritascbba.org'
      @sent_on = sent_at
        @body["title"] = subject
        @body["email"] = 'no-reply@caritascbba.org'
        @body["message"] = message
      @headers = {}
  end
  def email_contact_us(emailContact, nameContact, subject, message, sent_at = Time.now)
      @subject = subject
      @recipients = "info@caritascbba.org"
      @emailContact = emailContact
      @name = nameContact
      @from = 'no-reply@caritascbba.org'
      @sent_on = sent_at
        @body["title"] = nameContact
        @body["recipient"] = emailContact
        @body["name"] = nameContact
        @body["message"] = message
      @headers = {}
   end
end
