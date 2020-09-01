class Post < ApplicationRecord
  belongs_to :account

  validates :text, presence: true,
                    length: { minimum: 5 }
end
