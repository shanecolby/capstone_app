class Exercise < ApplicationRecord
  # belongs_to :user
  has_many :workouts
  has_many :selected_exercises
end
