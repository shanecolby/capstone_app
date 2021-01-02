class Exercise < ApplicationRecord
  belongs_to :user
  has_many :exercises
  has_many :workouts
  has_many :selected_exercises
end
