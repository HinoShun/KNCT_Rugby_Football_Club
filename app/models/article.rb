class Article < ApplicationRecord
  belongs_to :user

  with_options presence: true do
    validates :image
    validates :title
    validates :content
  end

end
