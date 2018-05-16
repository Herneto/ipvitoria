class ContactsMailer < ActionMailer::Base
    def contact_sended(contact)
        mail(to: contact.email, from: "ipvitoria.org", subject: "Contacto Enviado", body: "My first!"          
        )
    end
end
   