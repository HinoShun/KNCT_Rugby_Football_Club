class Comment < ApplicationRecord
  belongs_to :article

  with_options presence: true do
    validates :name
    validates :comment
  end

end
