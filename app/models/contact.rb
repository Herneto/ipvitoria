class Contact < ApplicationRecord
    validates_presence_of :nome, :email, :mensagens
    validates_format_of :email, :with => /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/
end
