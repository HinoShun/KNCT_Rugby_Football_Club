class Contact < ApplicationRecord

  with_options presence: true do
    validates :name
    validates :email
    validates :email_confirmation
    validates :content
  end

end
