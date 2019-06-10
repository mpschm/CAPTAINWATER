class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable

  has_many :games, dependent: :destroy
  has_many :plays, dependent: :destroy

  attr_accessor :next_step

  private

  def password_required?
    false
  end

end
