class Order < ApplicationRecord
  attr_accessor :token

  with_options presence: true do
    validates :name
    validates :email
    validates :email_confirmation
  end

end
