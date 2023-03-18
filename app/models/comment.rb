class Comment < ApplicationRecord
  belongs_to :article


  with_options presence: true, format: { with: /\A[ぁ-んァ-ヶ一-龥々ーa-zA-Z]+\z/, message: '記号は使わないでください' } do
    validates :name
    validates :message
  end

end
