class Game < ApplicationRecord
  belongs_to :user

  has_many :questions
  has_many :plays
  # has_many :users, through: :plays
  has_many :players, through: :plays, class_name: "User", source: :user
end
