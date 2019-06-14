class Play < ApplicationRecord
  belongs_to :game
  belongs_to :user

  has_many :user_answers
  validates :user, uniqueness: { scope: :game}

  def all_questions_answered?
    self.user_answers.count == self.game.questions.count
  end
end
