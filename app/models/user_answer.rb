class UserAnswer < ApplicationRecord
  belongs_to :answer, optional: true
  belongs_to :play
end
