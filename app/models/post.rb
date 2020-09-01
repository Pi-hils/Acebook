class Post < ApplicationRecord
  has_many :comments
  validates :text, presence: true,
                    length: { minimum: 5 }
end
