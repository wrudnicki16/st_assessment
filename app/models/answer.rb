class Answer < ApplicationRecord
  validates :q_id, :user_id, presence: true

  belongs_to :user
end
