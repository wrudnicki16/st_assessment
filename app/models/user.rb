class User < ApplicationRecord
  validates :email, :first, :last, presence: true
  validates :email, uniqueness: true
  # later on validate the style of the email via regex or some other helper.

  has_many :answers
end
