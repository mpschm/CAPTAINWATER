class Answer < ApplicationRecord
  belongs_to :question
  has_many :user_answers, dependent: :destroy

  def name
    content
  end
end
