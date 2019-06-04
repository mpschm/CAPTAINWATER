class Play < ApplicationRecord
  belongs_to :game
  belongs_to :user

  has_many :user_answers
  validates :user, uniqueness: { scope: :game}
end
