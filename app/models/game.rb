class Game < ApplicationRecord
  belongs_to :user

  has_many :questions, dependent: :destroy
  has_many :plays, dependent: :destroy
  # has_many :users, through: :plays
  has_many :players, through: :plays, class_name: "User", source: :user
end
