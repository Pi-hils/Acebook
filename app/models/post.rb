class Post < ApplicationRecord
  belongs_to :account
  has_many :comments, dependent: :destroy

  validates :text, presence: true,
                    length: { minimum: 5 }
end
