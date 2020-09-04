class Post < ApplicationRecord
  scope :newest_first, -> { order(created_at: :desc) }
  belongs_to :account
  acts_as_votable
  has_many :comments, dependent: :destroy

  validates :text, presence: true,
                    length: { minimum: 5 }
end
