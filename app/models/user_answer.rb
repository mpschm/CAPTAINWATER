class UserAnswer < ApplicationRecord
  belongs_to :answer
  belongs_to :play
end
